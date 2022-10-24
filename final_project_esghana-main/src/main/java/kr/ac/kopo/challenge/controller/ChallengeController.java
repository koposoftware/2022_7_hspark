package kr.ac.kopo.challenge.controller;

import java.io.File;
import java.io.IOException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.challenge.Service.ChallengeService;
import kr.ac.kopo.challenge.vo.ChallengeHistoryVO;
import kr.ac.kopo.challenge.vo.ChallengeVO;
import kr.ac.kopo.challengeCompanyJoin.vo.ChallengeCompanyJoinVO;
import kr.ac.kopo.company.vo.CompanyVO;

import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class ChallengeController {
	
	@Autowired
	private ChallengeService challengeService;
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/mycompanychallengeList")
	public String showCompanyChallengeList(HttpSession session, Model model) {
		
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
	
		String loginCompanyCode = loginVO.getCompanyCode();
		
		List<ChallengeCompanyJoinVO> challengeJoinList = challengeService.companyChallengeList(loginCompanyCode);
		CompanyVO companyVO = challengeService.userCompanyInfo(loginCompanyCode);
		model.addAttribute("companyVO", companyVO);
		model.addAttribute("challengeJoinList", challengeJoinList);
		
		
		return "challenge/companyChallengeList";
		
	}
	
	@GetMapping("/mycompanychallenge")
	public String showCompanyChallenge(HttpSession session, Model model) {
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		
		String companyCode = loginVO.getCompanyCode();
		
		CompanyVO companyVO = challengeService.userCompanyInfo(companyCode);
		ChallengeVO challengeVO = challengeService.userCompanyChallenge(companyCode);
		
		Map rank1member = challengeService.userChallengeRank1(challengeVO.getChallengeCode());
		Map rank2member = challengeService.userChallengeRank2(challengeVO.getChallengeCode());
		Map rank3member = challengeService.userChallengeRank3(challengeVO.getChallengeCode());
		System.out.println("rank1member : "+rank1member);
		
		int rank1memberCount = challengeService.userChallengeRankCount1(challengeVO.getChallengeCode());
		int rank2memberCount = challengeService.userChallengeRankCount2(challengeVO.getChallengeCode());
		int rank3memberCount = challengeService.userChallengeRankCount3(challengeVO.getChallengeCode());
	
		model.addAttribute("loginVO", loginVO);
		model.addAttribute("companyVO", companyVO);
		model.addAttribute("challengeVO", challengeVO);
		
		model.addAttribute("rank1member", rank1member);
		model.addAttribute("rank2member", rank2member);
		model.addAttribute("rank3member", rank3member);
		
		model.addAttribute("rank1memberCount", rank1memberCount);
		model.addAttribute("rank2memberCount", rank2memberCount);
		model.addAttribute("rank3memberCount", rank3memberCount);
		
		return "challenge/companyChallengeDetail";
		
	}
	
	@ResponseBody
	@PostMapping("/uploadfile")
	public String fileUpload(
			@RequestParam("file1") MultipartFile file, 
			@RequestParam("challengeCode") String challengeCode,
			@RequestParam("challengePoint") int challengePoint,
			Model model, HttpSession session) 
			throws IllegalStateException, IOException {
		
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String loginId = loginVO.getId();
		
		if(!file.isEmpty()) {
			String fullPath = "C:/Lecture/workspace/final_project_mzhana-main/src/main/webapp/resources/file/"+file.getOriginalFilename();
			//String fullPath = "D:/Lecture/spring-workspace/final_project_mzhana/src/main/webapp/resources/file/"+file.getOriginalFilename();
			file.transferTo(new File(fullPath));
			
			String fileOCR = challengeService.fileOCR(file.getOriginalFilename());
			
			if(fileOCR == "성공") {
				ChallengeHistoryVO challengeHistoryVO = new ChallengeHistoryVO();
				challengeHistoryVO.setChallengeCode(challengeCode);
				challengeHistoryVO.setChallengePoint(challengePoint);
				challengeHistoryVO.setId(loginId);
				challengeService.challengePoint(challengeHistoryVO);
				
			}
			
			return fileOCR;
			
		}
	
		return "실패";
	}
	
	// 챌린지별 포인트 
	@GetMapping("/myPoint/{challengeCode}")
	public String myPoint(@PathVariable("challengeCode") String challengeCode,HttpSession session, Model model) {
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String loginId = loginVO.getId();
		
		ChallengeHistoryVO challengeHistoryVO = new ChallengeHistoryVO();
		
		challengeHistoryVO.setId(loginId);
		challengeHistoryVO.setChallengeCode(challengeCode);

		List<ChallengeHistoryVO> challengeHistoryList = challengeService.challengeHistory(challengeHistoryVO);
		int sumChallengePoint = challengeService.sumChallengePoint(challengeHistoryVO);
		
		model.addAttribute("challengeCode", challengeCode);
		model.addAttribute("challengeHistoryList", challengeHistoryList);
		model.addAttribute("sumChallengePoint", sumChallengePoint);
		
		return "challenge/point";
		
	}
	
	//포인트 
	@GetMapping("/myPointCheck")
	@ResponseBody
	public List<Map<String, Object>> myPoint(HttpSession session) {
		System.out.println(" myPointCheck 확인");
		
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String loginId = loginVO.getId();
		
		List<Map<String, Object>> data = challengeService.challengeHistoryPoint(loginId);
		
		System.out.println("challengeHistoryList : " + data);
		
		return data;
		
	}
	
	
	@ResponseBody
	@PostMapping("/myPoint/calendar")
	public List<Map<String, Object>> myPointCalendar(@RequestParam("challengeCode") String challengeCode,HttpSession session, Model model) {
		System.out.println("calendar ajax 테스트 :" + challengeCode);
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String loginId = loginVO.getId();
		
//		ChallengeHistoryVO challengeHistoryVO = new ChallengeHistoryVO();
//		
//		challengeHistoryVO.setId(loginId);
//		challengeHistoryVO.setChallengeCode(challengeCode);
//		
//		List<ChallengeHistoryVO> challengeHistoryList = challengeService.challengeHistory(challengeHistoryVO);
//		int i = 1;
//		for (ChallengeHistoryVO challengeHistory : challengeHistoryList) {
//			System.out.println("challengeHistoryList controller: " + i+challengeHistory);
//			i++;
//		}
		
		List<Map<String, Object>> calendarList = new ArrayList<Map<String, Object>>();
		List<Map<String, Object>> challengeHistoryMapList = challengeService.challengeHistoryMap(loginId);
		System.out.println("challengeHistoryMapList:"+challengeHistoryMapList);
		for (Map<String, Object> challengeHistory : challengeHistoryMapList) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			
			map.put("title", challengeHistory.get("CHALLENGE_NAME"));
			map.put("start", challengeHistory.get("CHALLENGE_DATE"));
			
            calendarList.add(map);
		}
		System.out.println("calendarList: " + calendarList);
		return calendarList;
		
	}
	
	@GetMapping("/companyManager")
	public String companyManager(HttpSession session, Model model) {
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		List<Map<String, Object>> companyMemberList =  challengeService.companyMemberList(loginVO.getCompanyCode());
		
		model.addAttribute("companyMemberList", companyMemberList);
		
		List<Map<String, Object>> departmentCountList = memberService.getDepartmentCountList(loginVO.getCompanyCode());
		CompanyVO company = memberService.getCompany(loginVO.getCompanyCode());
		int mcount = memberService.getMcount();
		
		System.out.println("departmentCountList : ㅎㅎ" + departmentCountList);
		System.out.println("company" + company);
		
		model.addAttribute("departmentCountList", departmentCountList);
		model.addAttribute("company", company);
		model.addAttribute("mcount", mcount);
		
		return "manager/companymanager";
	}
	
	@ResponseBody
	@GetMapping("/userTable")
	public List<Map<String, Object>> userTable(HttpSession session) {
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		List<Map<String, Object>> data =  challengeService.companyMemberList(loginVO.getCompanyCode());
		
		System.out.println("companyMemberList dataTable " + data);
		System.out.println("datatables Controller");
		
		return data;
	}
	
	@PostMapping("/admin/challengeInsert")
	public String insertChallenge(ChallengeVO challengeVO,  @RequestParam("challengeImageFile") MultipartFile file) throws IllegalStateException, IOException {
		// 이 경로에 챌린지 사진 저장 
		//String fullPath = "D:/Lecture/spring-workspace/final_project_mzhana/src/main/webapp/resources/file/challenge/"+file.getOriginalFilename();
		String fullPath = "C:/Lecture/workspace/final_project_mzhana-main/src/main/webapp/resources/file/challenge/"+file.getOriginalFilename();
		file.transferTo(new File(fullPath));
		
		challengeVO.setChallengeImage(file.getOriginalFilename());
		
		challengeService.insertChallenge(challengeVO);
		
		
		return "redirect:/adminChallenge";
		
	} 
	

	@GetMapping("/challengeChoice")
	public String showAdminPage(Model model, HttpSession session) {
		
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String loginCompanyCode = loginVO.getCompanyCode();
		List<ChallengeCompanyJoinVO> challengeJoinList = challengeService.companyChallengeList(loginCompanyCode);
		
		List<String> challengeCodeList = new ArrayList<String>();
		
		for (ChallengeCompanyJoinVO challengeCompanyJoin : challengeJoinList) {
			challengeCodeList.add(challengeCompanyJoin.getChallengeCode());
		}
		
		System.out.println("challengeCodeList.size()" + challengeCodeList.size());
		System.out.println("challengeCodeList" + challengeCodeList);
		
		if(challengeCodeList.size() == 0) {
			System.out.println("challengeCodeList.size() == 0");
			List<ChallengeVO> challengeList = challengeService.allChallengeFirst();
			model.addAttribute("challengeList", challengeList);
			model.addAttribute("challengeFirst", "등록된 챌린지가 없습니다.");
			
		}else {
			
			List<ChallengeVO> challengeList = challengeService.allChallenge(challengeCodeList);
			model.addAttribute("challengeList", challengeList);
		}
		
		model.addAttribute("challengeJoinList", challengeJoinList);
		
		List<Map<String, Object>> companyChallengeCountList = challengeService.companyChallengeCountList(loginCompanyCode);
		model.addAttribute("companyChallengeCountList", companyChallengeCountList);
		System.out.println("companyChallengeCountList: "+companyChallengeCountList);
		return "manager/companyChallengeChoice";
	}
	
	@PostMapping("/challengeCompanyJoin")
	public String challengeCompanyJoin(String[] challengeCode, String[] challengeName, HttpSession session){
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String loginCompanyCode = loginVO.getCompanyCode();
		
		for(int i=0; i < challengeName.length; i++) {
			
			ChallengeCompanyJoinVO challengeCompanyJoin = new ChallengeCompanyJoinVO();
			
			challengeCompanyJoin.setCompanyCode(loginCompanyCode);
			challengeCompanyJoin.setChallengeCode(challengeCode[i]);
			challengeCompanyJoin.setChallengeName(challengeName[i]);
			
			challengeService.challengeCompanyJoin(challengeCompanyJoin);
			
		}
		
		return "redirect:/challengeChoice";
		
	} 
	
	
	
}

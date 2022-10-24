package kr.ac.kopo.member.service;

import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import kr.ac.kopo.company.vo.CompanyVO;
import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.MemberVO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	private int authNumber;
	
	public MemberVO login(MemberVO member) {
		MemberVO loginMember = memberDAO.login(member);
		return loginMember;
	}

	public CompanyVO companyCheck(CompanyVO company) {
		CompanyVO companyVO = memberDAO.companyCheck(company);
		
		
		
		return companyVO;
	}

	public void signup(MemberVO member) {
		memberDAO.signup(member);
		
	}

	public List<Map<String, Object>> getDepartmentCountList(String companyCode) {
		List<Map<String, Object>> departmentCountList = memberDAO.getDepartmentCountList(companyCode);
		return departmentCountList;
	}

	public CompanyVO getCompany(String companyCode) {
		CompanyVO company = memberDAO.getCompany(companyCode);
		return company;
	}

	
	
	public int makeRandomNum() {
		Random r = new Random();
		int checkNum = r.nextInt(888888)+11111;
		System.out.println("인증번호 : " + checkNum);
		return checkNum;
	}
	
	public void mailSend(String setForm,String toMail,String title,String content) {
		MimeMessage message = mailSender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
			helper.setFrom(setForm);
			helper.setTo(toMail);
			helper.setSubject(title);
			
			helper.setText(content,true);
			mailSender.send(message);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String joinEmail(String email) {
		

		String setForm = "gustjd68@gmail.com";
		String toMail = email;
		String title="ESG HANA 회원 가입 인증 이메일 메일입니다.";
		
		
		
		int authNum = makeRandomNum();
		
		
		String content = 
				"홈페이지를 방문해주셔서 감사합니다." + 	//html 형식으로 작성 ! 
                "<br><br>" + 
			    "인증 번호는 " + authNum + "입니다." + 
			    "<br>" + 
			    "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		
		mailSend(setForm, toMail, title, content);
		return Integer.toString(authNum);
	}

	public int getMcount() {
		int mcount = memberDAO.getMcount();
		
		return mcount;
	}

}

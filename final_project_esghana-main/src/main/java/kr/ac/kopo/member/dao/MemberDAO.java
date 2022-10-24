package kr.ac.kopo.member.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.challenge.vo.ChallengeHistoryVO;
import kr.ac.kopo.company.vo.CompanyVO;
import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public MemberVO login(MemberVO member) {
		
		MemberVO loginMember = sqlSessionTemplate.selectOne("member.dao.memberDAO.login", member);
		
		return loginMember;
	}

	public CompanyVO companyCheck(CompanyVO company) {
		System.out.println("dao" + company);
		CompanyVO companyVO  = sqlSessionTemplate.selectOne("company.dao.companyDAO.checkCompany", company);
		System.out.println("dao: "+ companyVO);
		return companyVO;
	}

	public void signup(MemberVO member) {
		sqlSessionTemplate.insert("member.dao.memberDAO.signupCompany",member);
	}

	public void updatePoint(ChallengeHistoryVO challengeHistoryVO) {
		MemberVO memberVO = new MemberVO();
		memberVO.setId(challengeHistoryVO.getId());
		memberVO.setPoint(challengeHistoryVO.getChallengePoint());
		System.out.println("memberDAO pointTest");
		sqlSessionTemplate.update("member.dao.memberDAO.updatePoint",memberVO);
	}

	public List<Map<String, Object>> getDepartmentCountList(String companyCode) {
		List<Map<String, Object>> departmentCountList = sqlSessionTemplate.selectList("member.dao.memberDAO.selectDepartmentCount",companyCode);
		return departmentCountList;
	}

	public CompanyVO getCompany(String companyCode) {
		CompanyVO company = sqlSessionTemplate.selectOne("member.dao.memberDAO.selectCompany",companyCode);
		return company;
	}

	public int getMcount() {
		int mcount = sqlSessionTemplate.selectOne("member.dao.memberDAO.mcount");
		return mcount;
	}
	
	
}

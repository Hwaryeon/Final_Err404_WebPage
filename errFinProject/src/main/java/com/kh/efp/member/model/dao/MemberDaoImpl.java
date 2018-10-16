package com.kh.efp.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;
import com.kh.efp.member.model.vo.loginUser;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Override
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {

		return sqlSession.insert("Member.insertMember", m);
	}

	//비밀번호 가져오기
	@Override
	public String selectEncPassword(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.selectPwd", m);
	}

	//일치 시 정보 가져오기
	@Override
	public Member selectMember(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.selectLoginUser", m);
	}

	@Override
	public int checkmName(SqlSessionTemplate sqlSession, String mName) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.selectmName", mName);
	}

	@Override
	public int selectMid(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.selectMid", m);
	}

	@Override
	public int insertMemberProfile(SqlSessionTemplate sqlSession, Profile pf) {
		
		return sqlSession.insert("Member.insertMemberProfile", pf);
	}

	@Override
	public Profile selectMemberProfile(SqlSessionTemplate sqlSession, int mid) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.selectMemberProfile", mid);
	}
 	@Override
	public int insertChangedProfile(SqlSessionTemplate sqlSession, Profile pf) {
		return sqlSession.insert("Member.insertChangedProfile", pf);
	}

	

	@Override
	public int selectmPhone(SqlSessionTemplate sqlSession, String mPhone) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.selectmPhone", mPhone);
	}

	

	@Override
	public int selectCntEmail(SqlSessionTemplate sqlSession, String mEmail) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.selectmEmail", mEmail);
	}


	@Override
	public String selectmEmail(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.findEmail", m);
	}

	@Override
	public int updateMidmPwd(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("Member.updateMidmPwd", m);
	}

	@Override
	public int selectAuthmEmail(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.selectAuthmEmail", m);
	}

	@Override
	public int updatemStatus(SqlSessionTemplate sqlSession, int imid) {
		// TODO Auto-generated method stub
		return sqlSession.update("Member.updatemStatus", imid);
	}

	@Override
	public loginUser selectLoginUser(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.selectLoginUser2", m);
	}

	@Override
	public int updatemEmailmPwd(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("Member.updatemEmailmPwd", m);
	}

	@Override
	public int updateInfo(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("Member.updateInfo", m);
	}

	
	

}

package com.kh.efp.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.member.model.vo.Member;
import com.kh.efp.member.model.vo.Profile;

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
		return sqlSession.selectOne("Member.selectPwd", m.getmEmail());
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
	public int selectMemberName(SqlSessionTemplate sqlSession, Member m) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Member.selectMemberName", m);
	}

	@Override
	public int updateMemberName(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("Member.updateMemberName", m);
	}
}

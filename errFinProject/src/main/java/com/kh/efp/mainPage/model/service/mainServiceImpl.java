package com.kh.efp.mainPage.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.mainPage.model.dao.mainDao;
import com.kh.efp.member.model.vo.Profile;

@Service
public class mainServiceImpl implements mainService {
	@Autowired private SqlSessionTemplate sqlSession;
	@Autowired private mainDao md; 

	@Override
	public List<Object> bandList(int mid) {

		return md.bandList(sqlSession, mid);
	}

	@Override
	public List<Object> popContent() {
		return md.popContent(sqlSession);
	}

	@Override
	public int insertBand(Profile pf, Band b, int mid) {
		int result = -99;
		//System.out.println("오긴했니?");

		//band테이블에 insert
		int bandResult = md.insertBand(sqlSession, b);
		//System.out.println("bandResult : " + bandResult);

		//insert된 밴드의 bid 찾아오기
		int bandId = md.selectBand(sqlSession, b.getBname());
		//System.out.println("bandId : " + bandId);

		//member-band테이블에 insert
		int memberBandResult = md.insertMemberBand(sqlSession, bandId, mid);
		//System.out.println("memberBandResult : " + memberBandResult);
		//profile테이블에 profile insert
		pf.setBid(bandId);
		int profileResult = md.insertProfile(sqlSession, pf);
		//System.out.println("profileResult : " + profileResult);
		if(bandResult > 0 && memberBandResult > 0 && profileResult > 0)
			result = 1;
		else
			result = 0;

		return result;
	}

	@Override
	public List<Object> recommendContent(int mid) {
		return md.recommendContent(sqlSession, mid);
	}
	
	@Override
	public int selectBandId(Band b) {
		// TODO Auto-generated method stub
		return md.selectBand(sqlSession, b.getBname());

	}
}

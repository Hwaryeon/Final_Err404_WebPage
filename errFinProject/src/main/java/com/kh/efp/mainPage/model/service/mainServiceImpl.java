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

		//bandテーブルに insert
		int bandResult = md.insertBand(sqlSession, b);

		//先insertしたバンドのIDを探す
		int bandId = md.selectBand(sqlSession, b.getBname());

		//member-bandテーブルに insert
		int memberBandResult = md.insertMemberBand(sqlSession, bandId, mid);
		
		//profileテーブルに profile insert
		pf.setBid(bandId);
		int profileResult = md.insertProfile(sqlSession, pf);
		
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
		return md.selectBand(sqlSession, b.getBname());
	}
}

package com.kh.efp.mainPage.model.service;

import java.util.List;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.member.model.vo.Profile;

public interface mainService {

	List<Object> bandList(int mid);

	List<Object> popContent();

	int insertBand(Profile pf, Band b, int mid);

	List<Object> recommendContent();
}

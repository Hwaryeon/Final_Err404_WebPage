package com.kh.efp.member_band.model.service;

import java.util.ArrayList;

import com.kh.efp.member_band.model.vo.BandList;
import com.kh.efp.member_band.model.vo.BoardList;
import com.kh.efp.member_band.model.vo.PageInfo;

public interface MemberBandService {

	int selectListCount(int imid);

	ArrayList<BoardList> selectBoardList(PageInfo pi, int imid);

	ArrayList<BandList> selectBandList(int imid);

	int updateiStatus(BandList bl);

}

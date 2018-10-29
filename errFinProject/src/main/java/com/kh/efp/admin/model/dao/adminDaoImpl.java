package com.kh.efp.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.admin.model.vo.BanReason;
import com.kh.efp.member_band.model.vo.PageInfo;

@Repository
public class adminDaoImpl implements adminDao {  
	
	//結果の全体リスト数をcount
	@Override
	public int getListCount(SqlSessionTemplate sqlSession, int type) {
		int result = -99;
		switch(type)
		{
			case 1 : result = sqlSession.selectOne("Admin.countAllMember"); break;
			case 2 : result = sqlSession.selectOne("Admin.countAllBand"); break;
			case 3 : result = sqlSession.selectOne("Admin.countReportMember"); break;
			case 4 : result = sqlSession.selectOne("Admin.countReportBand"); break;
			case 5 : result = sqlSession.selectOne("Admin.countBanMember"); break;
			case 6 : result = sqlSession.selectOne("Admin.countBanBand"); break;
		}
		return result;
	}
	//検索結果の全体リスト数をcount
	@Override
	public int getSearchListCount(SqlSessionTemplate sqlSession, int type, String keyword) {
		int result = -99;
		switch(type)
		{
			case 1 : result = sqlSession.selectOne("Admin.countSearchMember", keyword); break;
			case 2 : result = sqlSession.selectOne("Admin.countSearchBandByName", keyword); break;
			case 3 : result = sqlSession.selectOne("Admin.countSearchBandByMaster", keyword); break;
		}
		return result;
	}
	//申告された会員の数をcount
	@Override
	public int getListCount2(SqlSessionTemplate sqlSession, int i, int mid) {
		int result = -99;
		switch(i)
		{
			case 1 : result = sqlSession.selectOne("Admin.countShowReportMember", mid); break;
			case 2 : result = sqlSession.selectOne("Admin.countShowReportBand", mid); break;
		}
		return result;
	}
	
	//会員照会
	@Override
	public List<Object> memberAllList(SqlSessionTemplate sqlSession, PageInfo pi) {
		List<Object> memberList = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		memberList = sqlSession.selectList("Admin.selectAllMember", 0, rowBounds);
		
		return memberList;
	}
	//バンド照会
	@Override
	public List<Object> bandAllList(SqlSessionTemplate sqlSession, PageInfo pi) {
		List<Object> bandList = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		bandList = sqlSession.selectList("Admin.selectAllBand", 0, rowBounds); 
		
		return bandList;
	}
	//会員検索結果
	@Override
	public List<Object> memberSearchList(SqlSessionTemplate sqlSession, PageInfo pi, String keyword) {
		List<Object> memberSearchList = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		memberSearchList = sqlSession.selectList("Admin.searchMember", keyword, rowBounds);
		
		return memberSearchList;
	}
	//バンド検索結果
	@Override
	public List<Object> bandSearchList(SqlSessionTemplate sqlSession, PageInfo pi, String keyword, String keywordValue) {
		List<Object> bandSearchList = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		if(keywordValue.equals("bandName"))
			bandSearchList = sqlSession.selectList("Admin.searchBandByName", keyword, rowBounds);
		else
			bandSearchList = sqlSession.selectList("Admin.searchBandByMaster", keyword, rowBounds);
		return bandSearchList;
	}
	//申告された会員照会結果
	@Override
	public List<Object> reportMemberList(SqlSessionTemplate sqlSession, PageInfo pi) {
		List<Object> reportMemberList = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		reportMemberList = sqlSession.selectList("Admin.selectReportMember", 0,rowBounds);
		return reportMemberList;
	}
	
	//申告された会員詳細照会
	@Override
	public List<Object> showReportMember(SqlSessionTemplate sqlSession, PageInfo pi, int mid) {
		List<Object> showReportMember = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		showReportMember = sqlSession.selectList("Admin.showReportMember", mid, rowBounds);
		return showReportMember;
	}
	//申告された会員blacklistに入れる
	@Override
	public int insertBlackMember(SqlSessionTemplate sqlSession, int cid, String banReason) {
		BanReason br = new BanReason();
		br.setCid(cid);
		br.setBanReason(banReason);
		
		return sqlSession.insert("Admin.insertBlackMember", br);
	}
	//メンバーテーブルupdate
	@Override
	public void updateMember(SqlSessionTemplate sqlSession, int cid){
		sqlSession.update("Admin.updateMember", cid);
	}
	//メンバーバンドテーブルupdate
	@Override
	public void updateMemberBand(SqlSessionTemplate sqlSession, int cid){
		sqlSession.update("Admin.updateMemberBand", cid);
	}
	//申告されたバンド照会結果
	@Override
	public List<Object> reportBandList(SqlSessionTemplate sqlSession, PageInfo pi) {
		List<Object> reportBandList = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		reportBandList = sqlSession.selectList("Admin.selectReportBand", 0, rowBounds);
		return reportBandList;
	}
	//申告されたバンド詳細照会
	@Override
	public List<Object> showReportBand(SqlSessionTemplate sqlSession, PageInfo pi, int bid) {
		List<Object> showReportBand = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		showReportBand = sqlSession.selectList("Admin.showReportBand", bid, rowBounds);
		return showReportBand;
	}
	//申告されたバンドblacklistに入れる
	@Override
	public int insertBlackBand(SqlSessionTemplate sqlSession, int bid, String banReason) {
		BanReason br = new BanReason();
		br.setBid(bid);
		br.setBanReason(banReason);
		return sqlSession.insert("Admin.insertBlackBand", br);
	}
	//バンドテーブルupdate
	@Override
	public void updateBand(SqlSessionTemplate sqlSession, int bid){
		sqlSession.update("Admin.updateBand", bid);
	}
	//blacklist会員照会
	@Override
	public List<Object> banMemberList(SqlSessionTemplate sqlSession, PageInfo pi) {
		List<Object> banMemberList = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		banMemberList = sqlSession.selectList("Admin.selectBanMember", 0, rowBounds);
		
		return banMemberList;
	}
	//blacklistバンド照会
	@Override
	public List<Object> banBandList(SqlSessionTemplate sqlSession, PageInfo pi) {
		List<Object> banBandList = new ArrayList<Object>();
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		banBandList = sqlSession.selectList("Admin.selectBanBand", 0, rowBounds);
		
		return banBandList;
	}
}

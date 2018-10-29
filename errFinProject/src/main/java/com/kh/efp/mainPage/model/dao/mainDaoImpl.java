package com.kh.efp.mainPage.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.efp.band.model.vo.Band;
import com.kh.efp.mainPage.model.vo.MyBandList;
import com.kh.efp.mainPage.model.vo.RecommendContents;
import com.kh.efp.member.model.vo.Profile;

@Repository
public class mainDaoImpl implements mainDao {
   
	@Override
	
	public List<Object> bandList(SqlSessionTemplate sqlSession, int mid) {
      List<Object> bandList = new ArrayList<Object>();
      bandList = sqlSession.selectList("Main.selectMyBand", mid);
      
      List<Object> resultList = new ArrayList<Object>();
      
      MyBandList list = new MyBandList();
      //バンドの名の文字数カウント
      for(int i=0;i<bandList.size();i++)
      {
         list = (MyBandList)bandList.get(i);
         String bandtitle = list.getBname();
         int length = 0;
         double txtByte = 0;
         for(int j=0;j<bandtitle.length();j++)
         {
            if(bandtitle.charAt(j) >= 'a' && bandtitle.charAt(j) <= 'z')
               txtByte++;
            else if(bandtitle.charAt(j) >= 'A' && bandtitle.charAt(j) <= 'Z')
               txtByte += 0.7;
            else if(bandtitle.charAt(j) >= '\uAC00' && bandtitle.charAt(j) <= '\uD7A3')
               txtByte += 2;
            else if(bandtitle.charAt(j) >= '0' && bandtitle.charAt(j) <= '9')  
               txtByte += 1.06;
            else
               txtByte++;
            
            if(txtByte < 17 && txtByte >= 15)
               length = j;
         }
         list.setChar_count((int)txtByte);
         list.setLength(length);
         System.out.println("band title : " + bandtitle + " | Byte : " + txtByte);
         resultList.add(list);
      }
      return resultList;
   }

	//Select Popular Content
   @Override
   public List<Object> popContent(SqlSessionTemplate sqlSession) {
      List<Object> popContent = new ArrayList<Object>();
      popContent = sqlSession.selectList("Main.selectPopContent");
      System.out.println("popContent : " + popContent.toString());
      
      int size = popContent.size();
      int first = (int)(Math.random() * size);
      int second = (int)(Math.random() * size);
      
      while(first == second) {
         second = (int)(Math.random() * size);
      }
      
      List<Object> finalContent = new ArrayList<Object>();
      
      for(int i=0;i<size;i++) {
         if(i == first || i == second) {
            finalContent.add(popContent.get(i));
         }
      }
      
      System.out.println("finalContent : " + finalContent);
      
      return finalContent;
   }

   @Override
   public int insertBand(SqlSessionTemplate sqlSession, Band b) {
      return sqlSession.insert("Main.insertBand", b);
   }

   @Override
   public int selectBand(SqlSessionTemplate sqlSession, String bName) {
      return sqlSession.selectOne("Main.selectBand", bName);
   }

   @Override
   public int insertMemberBand(SqlSessionTemplate sqlSession, int bandId, int mid) {
      
      MyBandList mbl = new MyBandList();
      mbl.setBid(bandId);
      mbl.setMid(mid);
      System.out.println("dao bandId : " + bandId + " mid : " + mid);
      
      return sqlSession.insert("Main.insertMemberBand", mbl);
   }

   @Override
   public int insertProfile(SqlSessionTemplate sqlSession, Profile pf) {
      
      return sqlSession.insert("Main.insertProfile", pf);
   }

   
   //公開バンド推薦
   @Override
   public List<Object> recommendContent(SqlSessionTemplate sqlSession, int mid) {
      List<Object> recommendContent = new ArrayList<Object>();
      recommendContent = sqlSession.selectList("Main.selectRcmContent", mid);
      
      List<Object> finalContent = new ArrayList<Object>();
      int rcLength = recommendContent.size();
      int first = (int)(Math.random() * (rcLength-10));
      
      for(int i=first;i<first + 10;i++){
         finalContent.add(recommendContent.get(i));
      }
      
      System.out.println("finalContent : " + finalContent);
      
      return finalContent;
   }

}
package com.kh.efp.band.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.social.google.api.plus.Activity.Article;

import com.kh.efp.band.model.vo.Board;
import com.kh.efp.band.model.vo.Member_Band;

public interface BoardMemberService {

	List<Member_Band> boardMemberList();

}

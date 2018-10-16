package com.kh.efp.band.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.api.plus.Activity.Article;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.efp.band.model.service.BandService;
import com.kh.efp.band.model.service.BoardService;
import com.kh.efp.band.model.vo.Attfile;
import com.kh.efp.band.model.vo.Band;
import com.kh.efp.band.model.vo.Board;
 
@Controller
public class BoardAlbumController {
 
}
package com.multi.myapp.controller;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.multi.myapp.service.ManagerPageService;
import com.multi.myapp.vo.FindFriendVO;
import com.multi.myapp.vo.ManagerPageVO;

@Controller
@RequestMapping("/managerPage")
public class ManagerPageController {
	@Autowired
	ManagerPageService service;
	
	@GetMapping("/manager")
	public ModelAndView ManagerUserPage() {
		ModelAndView mav = new ModelAndView();
		
		List<ManagerPageVO> userlist = service.userManage();
		List<ManagerPageVO> petlist = service.petManage();
		List<ManagerPageVO> reportlist = service.reportManage();
		
		mav.addObject("userlist", userlist);
		mav.addObject("petlist", petlist);
		mav.addObject("reportlist", reportlist);
		mav.setViewName("managerPage/manager");
		return mav;
	}
	@GetMapping("/delete")
	public ModelAndView ManagerDelete(int no) {
		ModelAndView mav = new ModelAndView();
		int result = service.ManagerDelete(no);
		if(result>0) {
			mav.setViewName("redirect:manager");
		}else {
			mav.setViewName("redirect:manager?no="+no);
		}
		return mav;
	
	}
}

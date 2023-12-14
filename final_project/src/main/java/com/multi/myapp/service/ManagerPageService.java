package com.multi.myapp.service;

import java.util.List; 

import com.multi.myapp.vo.ManagerPageVO;

public interface ManagerPageService {

	public List<ManagerPageVO> userManage();
	public List<ManagerPageVO> petManage();
	public List<ManagerPageVO> reportManage();
	public int ManagerDelete(int no);

}

package com.multi.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.myapp.dao.ManagerPageDao;
import com.multi.myapp.vo.ManagerPageVO;

@Service
public class ManagerPageServiceImpl implements ManagerPageService{
	@Autowired
	ManagerPageDao dao;
	
	@Override
	public List<ManagerPageVO> userManage() {
		return dao.userManage();
	}

	@Override
	public List<ManagerPageVO> petManage() {
		return dao.petManage();
	}

	@Override
	public List<ManagerPageVO> reportManage() {
		return dao.reportManage();
	}

	@Override
	public int ManagerDelete(int no) {
		return dao.ManagerDelete(no);
	}

}

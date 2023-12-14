package com.multi.myapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.myapp.vo.ManagerPageVO;

@Mapper
public interface ManagerPageDao {
	public List<ManagerPageVO> userManage();
	public List<ManagerPageVO> petManage();
	public List<ManagerPageVO> reportManage();
	public int ManagerDelete(int no);
}

package com.lzxuni.modules.common.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.lzxuni.modules.common.entity.FileBean;
import com.lzxuni.modules.common.mapper.FileBeanMapper;
import com.lzxuni.modules.common.service.FileBeanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *@Title FileBeanServiceImpl.java
 *@description TODO
 *@author 孙志强
 *@time 2016年11月4日 下午4:51:58
 *@version 1.0
 **/
@Service("fileBeanService")
public class FileBeanServiceImpl extends ServiceImpl<FileBeanMapper, FileBean> implements FileBeanService {
	@Autowired
	private FileBeanMapper fileBeanMapper;


	@Override
	public List<FileBean> selectList(FileBean fileBean) {
		return null;
	}

	@Override
	public void save(FileBean fileBean) {

	}

	@Override
	public void update(FileBean fileBean) {

	}

	@Override
	public void deleteByYwid(String ywid) {

	}
}

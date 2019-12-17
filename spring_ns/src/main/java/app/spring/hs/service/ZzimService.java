package app.spring.hs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.hs.dao.ZzimDao;
import app.spring.vo.ZzimVo;

@Service
public class ZzimService {
	@Autowired private ZzimDao dao;
	public int insert(ZzimVo vo){
		return dao.insert(vo);
	}
	public int delete(int d_num){
		return dao.delete(d_num);
	}
	public ZzimVo select(String m_phone){
		return dao.select(m_phone);
	}
}
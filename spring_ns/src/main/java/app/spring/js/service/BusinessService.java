package app.spring.js.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.spring.js.dao.BusinessDao;
import app.spring.vo.BusinessVo;
import app.spring.vo.DetailVo;

@Service
public class BusinessService {
	@Autowired
	private BusinessDao bDao;

	// 사업자 등록
	public int insert(BusinessVo vo) {
		return bDao.insert(vo);
	}

	// 사업자 삭제
	public int delete(int b_num) {
		return bDao.delete(b_num);
	}

	// 사업자 조회
	public BusinessVo getInfo(int b_num) {
		return bDao.getInfo(b_num);
	}

	// 사업자
	public List<BusinessVo> listAll() {
		return bDao.listAll();
	}

	// 사업자 상태변경
	public int update(BusinessVo vo) {
		return bDao.update(vo);
	}

	// 사업자 로그인
	public boolean getLog(BusinessVo vo) {
		return bDao.getLog(vo);
	}

	// 사업자 로그인
	public BusinessVo getState(BusinessVo vo) {
		return bDao.getState(vo);
	}

	// b_num과 d_num얻어오기
	public DetailVo getbd(String phone) {
		return bDao.getbd(phone);
	}

	// r_tate얻어오기
	public int getrstate(DetailVo vo) {
		return bDao.getrstate(vo);
	}
}

package app.spring.js.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.spring.vo.ReviewVo;

@Repository
public class ReviewDao {
	@Autowired private SqlSessionTemplate sqlSessionTemplate;
	private final String NAMESPACE= "app.spring.mybatis.mapper.ReveiewMapper";
	//리뷰 등록
	public int insert(ReviewVo vo){
		return sqlSessionTemplate.insert(NAMESPACE + ".insert",vo);
	}
}
package app.spring.yg.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import app.spring.vo.DetailVo;
import app.spring.vo.PageUtil;
import app.spring.vo.SearchListVo;
import app.spring.yg.service.SelectListService;

@Controller
public class SelectListController {
	@Autowired SelectListService service;
	@RequestMapping(value="/searchList")	
	public ModelAndView searchList(String keyword,String standard,String pri,String food,String park,
			@RequestParam(value="pagenum",defaultValue="1")int pagenum,HttpSession session){
		Map<String, Object> values=new HashMap<String, Object>();
		values.put("keyword", keyword);
		if(standard==null){
			standard="r_score desc";
		}
		values.put("standard", standard);
		values.put("pri",pri);
		values.put("food",food);
		values.put("park",park);
		int totalRowCount=service.searchCount(values);
		System.out.println(totalRowCount);
		PageUtil pu=new PageUtil(pagenum, totalRowCount, 6, 10);
		System.out.println(pu.getPageNum());
		System.out.println(pu.getStartPageNum());
		System.out.println(pu.getEndPageNum());
		System.out.println(pu.getTotalPageCount());
		System.out.println(pu.getStartRow());
		System.out.println(pu.getEndRow());
		values.put("startrow",pu.getStartRow());
		values.put("endrow", pu.getEndRow());
		List<SearchListVo> list=service.searchList(values);
		for(SearchListVo vo:list){
			vo.setR_count(service.recount(vo.getD_num()));
		}
		String m_phone=(String)session.getAttribute("m_phone");
		ModelAndView mv=new ModelAndView(".yg.searchList");
		mv.addObject("list",list);
		mv.addObject("keyword",keyword);
		mv.addObject("standard",standard);
		mv.addObject("pri",pri);
		mv.addObject("food",food);
		mv.addObject("park",park);
		mv.addObject("pagenum", pu.getPageNum());
		mv.addObject("startpagenum", pu.getStartPageNum());
		mv.addObject("endpagenum", pu.getEndPageNum());
		mv.addObject("totalpagecount", pu.getTotalPageCount());
		if(m_phone!=null){
			int count=service.foodcount(m_phone);
			List<DetailVo> flist=service.foodlist(m_phone);
			session.setAttribute("count", count);
			session.setAttribute("flist", flist);
		}
		return mv;
	}
	@RequestMapping(value="/deletepage")
	public String deletepage(String m_phone,HttpSession session){
		service.fooddelete(m_phone);
		int count=service.foodcount(m_phone);
		List<DetailVo> flist=service.foodlist(m_phone);
		session.setAttribute("count", count);
		session.setAttribute("flist", flist);
		return ".main";
	}
}

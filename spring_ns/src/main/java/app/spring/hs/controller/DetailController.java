package app.spring.hs.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.servlet.ModelAndView;

import app.spring.hs.service.DetailService;
import app.spring.js.service.ReviewService;
import app.spring.vo.DetailVo;
import app.spring.vo.FindimgVo;
import app.spring.vo.FindmenuVo;
import app.spring.vo.ReviewVo;
import app.spring.yg.service.SelectListService;

@Controller
public class DetailController {
		@Autowired private DetailService service;
		@Autowired private SelectListService service2;
		@Autowired private ReviewService service3;
		@RequestMapping(value="/detailpage")	

		public ModelAndView detailpg(String name,int d_num,HttpSession session){
			String phone=(String)session.getAttribute("m_phone");
			List<DetailVo> list=service.finddetail(name);
			List<FindimgVo> list1=service.findimg(name);
			List<FindmenuVo> list2=service.findmenu(name);
			List<ReviewVo> list3=service3.list2(d_num);
			service2.increhit(d_num);
			if(phone!=null){
				Map<String, Object> values=new HashMap<String, Object>();
				values.put("m_phone", phone);
				values.put("d_num", d_num);
				if(service2.checkfood(values)==null){
					service2.joinfood(values);
					int count=service2.foodcount(phone);
					if(count>5){
						int del=count-5;
						values.put("del", del);
						service2.foodautodel(values);
					}
					List<DetailVo> flist=service2.foodlist(phone);
					session.setAttribute("count", count);
					session.setAttribute("flist", flist);
				}
			}
			ModelAndView mv=new ModelAndView(".detailpage.detailpg");
			mv.addObject("phone",phone);
			mv.addObject("list",list);
			mv.addObject("list1",list1);
			mv.addObject("list2",list2);
			mv.addObject("list3",list3);
			mv.addObject("name",name);
			if(phone!=null){
				int count=service2.foodcount(phone);
				List<DetailVo> flist=service2.foodlist(phone);
				mv.addObject("count",count);
				mv.addObject("flist",flist);
			}
			return mv;
		}
		@RequestMapping(value="/pj/bs/bqdetailupload",method=RequestMethod.GET)
		public String detailForm(DetailVo vo){
			return ".bs.bqdetailupload";
		}
		@RequestMapping(value="/pj/bs/bqdetailupload",method=RequestMethod.POST)
	    public String detailupload(String d_sname, String d_kind, String d_park, String d_holi, String d_time, String d_phone,
	    		String d_addr,@RequestParam (required=false) List<MultipartFile> file) throws IOException {
	         HashMap<String,Object> map=new HashMap<String, Object>();
	         String uploadPath="C:/Users/JHTA/git/final-project/spring_ns/src/main/webapp/resources/maincss/images/test";
			try{
				
				for(int i=0;i<file.size();i++){		
	            	map.put("r_pic"+i, file.get(i).getOriginalFilename());
	            	InputStream fis=file.get(i).getInputStream();
	            	FileOutputStream fos=
							new FileOutputStream(uploadPath+"\\" +file.get(i).getOriginalFilename());
	            	FileCopyUtils.copy(fis, fos);
					fis.close();
					fos.close();
	            }
			
			DetailVo vo1=
					new DetailVo(0, "admin",4 , d_sname, d_kind, d_park, d_holi, d_time, d_phone, d_addr, 0);
					service.insert(vo1,map);
	      
	       }catch (Exception e) {
		  e.printStackTrace();
		}
	        return ".main";
	    }
		}

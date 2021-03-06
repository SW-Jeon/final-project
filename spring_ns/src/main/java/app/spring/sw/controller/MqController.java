package app.spring.sw.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.spring.sw.service.MemService;
import app.spring.sw.service.MqService;
import app.spring.vo.MemVo;
import app.spring.vo.MqVo;

@Controller
public class MqController {
		@Autowired private MqService service;
		@Autowired private MemService MemService;
		
		//회원 문의글 쓰기 폼이동
		@RequestMapping(value="/swMem/memQuestion",method=RequestMethod.GET )
		public String MqinsertForm(String m_phone, Model model){
			model.addAttribute("vo", MemService.getInfo(m_phone));
			return ".swMem.MqInsert";
		}
		
		//글쓰기 폼에서 값 전달 받아 등록
		@RequestMapping(value="/swMem/memQuestion",method=RequestMethod.POST )
		public String MqInsert(MqVo vo,Model model,MemVo vo1){
			try{
				model.addAttribute("vo", MemService.getInfo(vo1.getM_phone()));
				service.insert(vo);
				return "redirect:/swMem/mqMyList";
			}catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
		
		//글 목록조회(회원용)
		@RequestMapping(value="/swMem/mqMyList",method=RequestMethod.GET )
		public String listMy(Model model,HttpSession session){
			try {
				String m_phone= (String)session.getAttribute("m_phone");
				model.addAttribute("vo", MemService.getInfo(m_phone));
				List<MqVo> listMy=service.listMy(m_phone);
				model.addAttribute("listMy", listMy);	
				return ".swMem.MqMyList";
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
		
		//글 상세내용 조회(회원용)
		@RequestMapping(value="/swMem/mqContent",method=RequestMethod.GET )
		public String Detail(Model model,int mq_num,String m_phone ){
			try{
				model.addAttribute("vo", MemService.getInfo(m_phone));
				model.addAttribute("vo1", service.detail(mq_num));
				return ".swMem.MqContent";
			} catch (Exception e) {
			model.addAttribute("code", "fail");
			return ".swMem.result";
			}
		}
		
///////////////////////////////////////////////////////   운영자용  ////////////////////////////////////////////////////////////////	
		
		//글 조회(운영자용)
		@RequestMapping(value="/swMem/mqList",method=RequestMethod.GET )
		public String listAll(Model model){
			try {
				List<MqVo> listAll=service.listAll();
				model.addAttribute("listAll", listAll);
				return ".admin.MqList";
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
		
		//글 상세내용 조회(운영자용)
		@RequestMapping(value="/swMem/mqAdminCon",method=RequestMethod.GET )
		public String Detail(Model model,int mq_num ){
			try{
				model.addAttribute("vo1", service.detail(mq_num));
				return ".admin.mqAdminCon";
			} catch (Exception e) {
			model.addAttribute("code", "fail");
			return ".swMem.result";
			}
		}
		
		
		//글 삭제
		@RequestMapping(value="/swMem/mqDelete",method=RequestMethod.GET )
		public String Delete(Model model,int mq_num,MqVo vo){
			try{
				model.addAttribute("vo", service.delete(mq_num));
				return  "redirect:/swMem/mqList";
			} catch (Exception e) {
				model.addAttribute("code", "fail");
				return ".swMem.result";
			}
		}
		
		//운영자 답변(업데이트)
		@RequestMapping(value="/swMem/mqReply",method=RequestMethod.POST )
		public String Reply(Model model,int mq_num,MqVo vo){
			try{
			service.update(vo);
			model.addAttribute("vo1", service.detail(mq_num));
			return  ".admin.mqAdminCon";
			} catch (Exception e) {
			model.addAttribute("code", "fail");
			return ".swMem.result";
			}
		}
}

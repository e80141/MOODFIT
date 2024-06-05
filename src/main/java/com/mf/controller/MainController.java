package com.mf.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class MainController {
	@RequestMapping("/")
	public  ModelAndView   home() {
		ModelAndView    mv    = new ModelAndView("adminMain");
		
		mv.setViewName("/adminMain");
		return mv;
	}
	@RequestMapping("/adminCategory")
	public  ModelAndView   adminCategory() {
		ModelAndView    mv    = new ModelAndView("adminCategory");
		
		mv.setViewName("/admin/adminCategory");
		return mv;

}
}
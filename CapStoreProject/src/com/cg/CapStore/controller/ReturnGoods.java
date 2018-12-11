package com.cg.CapStore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cg.CapStore.dto.Order;
import com.cg.CapStore.service.ICapstoreService;

@Controller
public class ReturnGoods {
	@Autowired
	ICapstoreService capService;
    @RequestMapping("getorderlist.obj")
	public String showOrders(Model model){
		List<Order> list=capService.getAllDetails();
		model.addAttribute("list",list);
		return "Home";
	}
    @RequestMapping("getReturnPage.obj")
    public 	ModelAndView returnitem(@RequestParam("ordId") String ordId,@ModelAttribute("my") Order o){
    	List<Order> list=capService.getAllDetails();
    	System.out.println(ordId);
		return new ModelAndView("ReturnPage","ordId",ordId);
    	
    }
    @RequestMapping("getPage.obj")
    public String retSucc(){
		return "Success";
    	
    }
    
}


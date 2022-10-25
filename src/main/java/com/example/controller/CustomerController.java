package com.example.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;



import com.example.entities.CustomerLog;
import com.example.entities.ShoeFactory;
import com.example.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService user;
	

	@RequestMapping("/main")
	public String front() {
		return "main";
	}	

	@RequestMapping("/customer")
	public String cust() {
		return "logcus";
	}
		
	@RequestMapping("/custSignUp")
	public String custUp() {
		return "custUp";
	}
	@RequestMapping("/createCustAcc")
	public ModelAndView createCust(@RequestParam("custEmail")String email,@RequestParam("custPass") String pass ) {
		ModelAndView mv = new ModelAndView();
		CustomerLog cust = new CustomerLog();
		cust.setEmail(email);
		cust.setPassword(pass);
		user.addCustomer(cust);
		mv.setViewName("logcus");
		return mv;
	}
	
	@RequestMapping("/custSignIn")
	public ModelAndView custSigin(@RequestParam("custEmail") String email,@RequestParam("custPass") String pass) {
		List<CustomerLog> list =  user.fetchAcc();
		List<ShoeFactory> shoeList = user.getAllShoes();
		ModelAndView mv = new ModelAndView();
		for(CustomerLog c : list) {
			
		 if(c.getEmail().equals(email) && c.getPassword().equals(pass)) { 
			 mv.addObject("shoes",shoeList);
			 mv.setViewName("custAcc");		
		 }else if(email.isBlank() || pass.isBlank()) {
			 
			mv.setViewName("errorCust");
		 }	 
		 else {
			 mv.setViewName("errorCust");
		 }			 	
		}	
		return mv;
	}
	
	@RequestMapping("/select")
	public String getShoe(HttpServletRequest req,Model model) {
		ShoeFactory s =  (ShoeFactory) req.getSession().getAttribute("shoe");
		model.addAttribute("shoe", s);
		return "shoe";
	}
	
	@RequestMapping("/addCart")
	public ModelAndView addCart(HttpServletRequest req) {
		ShoeFactory shoe = (ShoeFactory) req.getSession().getAttribute("toBeAdded");
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("cartShoe", shoe);
		 mv.setViewName("addCart");
		 return mv;
	}
	@RequestMapping("/buyProduct")
	public String buyProduct() {
		return "payment";
	}
	
	@RequestMapping("/successPay")
	public ModelAndView successPay() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("donePay");
		return mv;
	}
}

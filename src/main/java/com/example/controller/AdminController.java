package com.example.controller;

import java.io.IOException;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.example.dao.ShoesRepo;
import com.example.entities.Admin;
import com.example.entities.CustomerLog;
import com.example.entities.PurchaseReport;
import com.example.entities.ShoeFactory;
import com.example.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService service;
	
	@Autowired
	private ShoesRepo shoeRepo;
	
	@RequestMapping("/admin")
	public String admin() {
		return "logadmin";
	}
	
	
	@RequestMapping("/adminLog")
	public String checkAdmin(HttpServletRequest req) {
		List<Admin> list = service.getAdmin();		
		String email = req.getParameter("adminEmail");
		String password = req.getParameter("adminPass");
		for(Admin a:list) {
			if(a.getEmail().equals(email) && a.getPassword().equals(password)) {
				return "adminPage";
			}else if(email.isBlank() || password.isBlank()) {
				return "redirect:/admin";
			}else {
				return "adminError";
			}			
		}	
		return "adminPage";
	}
	
	@RequestMapping("/allUsers")
	public String allUsers(Model m) {
		List<CustomerLog> list = service.getAllCustomers();
		m.addAttribute("allCustomers", list);
		return "allCustomers";
	}
	
	@RequestMapping("/add")
	public ModelAndView add() {
		ModelAndView mv = new ModelAndView();	
		mv.setViewName("addP");
		return mv;
	}
	
	@RequestMapping("/addingProduct")
	public ModelAndView addProduct(@RequestParam("category") String cat,@RequestParam("shoeName") String name,@RequestParam("price") int price) {
		ModelAndView mv = new ModelAndView();
		ShoeFactory s = new ShoeFactory();
		s.setShoeCategory(cat);
		s.setShoeName(name);
		s.setShoePrice(price);
		shoeRepo.save(s);
		mv.setViewName("newProduct");
		return mv;
	}
	
	@RequestMapping("/pay")
	public String successPayment(@RequestParam("Cname") String name,@RequestParam("Camount")int amount) {
		Date d = new Date();
		SimpleDateFormat fmt = new SimpleDateFormat("dd/MM/yyyy");
		String date = fmt.format(d);
		PurchaseReport p = new PurchaseReport(); 
		p.setName(name);
	    p.setAmount(amount);
	    p.setDate(date);
	    service.savePay(p);
		return "paymentDone";
	}
	
	@RequestMapping("/showPurchases")
	public String showPurchases(Model m) {
		List<PurchaseReport> list = service.getAllPurchases();
		m.addAttribute("purchases", list);
		return "Allpurchases";
	}
	
}

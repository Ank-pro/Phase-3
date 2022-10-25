package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.AdminRepo;
import com.example.dao.CustomerRepo;
import com.example.dao.PurchaseRepo;
import com.example.entities.Admin;
import com.example.entities.CustomerLog;
import com.example.entities.PurchaseReport;

@Service
public class AdminService {

	@Autowired
	private AdminRepo admin;
	
	@Autowired
	private CustomerRepo customer;
	
	@Autowired
	private PurchaseRepo purchase;
	
	
	public List<Admin> getAdmin() {
		List l = (List) admin.findAll();
		List<Admin> list = l;
		return list;
	}
	
	public List<CustomerLog> getAllCustomers(){
		List l = (List) customer.findAll();
		List<CustomerLog> list = l;
		return list;
	}
	
	public List<PurchaseReport> getAllPurchases(){
		List l = (List) purchase.findAll();
		List<PurchaseReport> list = l;
		return list;
	}
	
	public void savePay(PurchaseReport p) {
		 purchase.save(p);
	}
}

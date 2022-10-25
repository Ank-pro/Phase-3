package com.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.CustomerRepo;
import com.example.dao.ShoesRepo;
import com.example.entities.CustomerLog;
import com.example.entities.ShoeFactory;


@Service
public class CustomerService {
	
	
	@Autowired
	private CustomerRepo customerRepo;
	
	@Autowired
	private ShoesRepo shoes;
	
		
	public void addCustomer(CustomerLog customer) {
		customerRepo.save(customer);
	}
	
	public List<CustomerLog> fetchAcc() {
		List<CustomerLog> list = customerRepo.findByEmailAndPassword();
		return list;
	}
	
	public List<ShoeFactory> getAllShoes(){
		List l = (List)shoes.findAll();
		List<ShoeFactory> list = l;
		return list;
	}
	
	
}

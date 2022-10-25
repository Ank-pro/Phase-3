package com.example.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.entities.CustomerLog;
import java.util.*;

public interface CustomerRepo extends CrudRepository<CustomerLog, Integer>{
	
	@Query(value = "select * from customer_log",nativeQuery = true)
	public List<CustomerLog> findByEmailAndPassword();
	
}

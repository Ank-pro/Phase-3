package com.example.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.entities.PurchaseReport;

public interface PurchaseRepo extends CrudRepository<PurchaseReport, Integer>{

}

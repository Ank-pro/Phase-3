package com.example.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.entities.ShoeFactory;

public interface ShoesRepo extends CrudRepository<ShoeFactory, Integer> {

}

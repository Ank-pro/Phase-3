package com.example.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.entities.Admin;

public interface AdminRepo extends CrudRepository<Admin, Integer>{

}

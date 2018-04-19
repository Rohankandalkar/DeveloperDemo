package com.example.demo.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Model.Developer;


@Repository
public interface DeveloperRepository extends CrudRepository<Developer,Integer>{

}

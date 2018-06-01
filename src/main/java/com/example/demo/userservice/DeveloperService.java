package com.example.demo.userservice;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Developer;
import com.example.demo.Repository.DeveloperRepository;


@Service
public class DeveloperService {
	
	@Autowired
	private DeveloperRepository developerRepository;
	
	

	public void addDeveloperService(Developer developer) {
		// TODO Auto-generated method stub
		System.out.println("get all developer");

		this.developerRepository.save(developer);
	}



	public List<Developer> getAllDevelopers() {
		// TODO Auto-generated method stub
		System.out.println("in get all");
		List<Developer> developer_list=new ArrayList<>();
		this.developerRepository.findAll().forEach(developer_list::add);
		return developer_list;
	}



	public Developer getDeveloper(int id) {
		// TODO Auto-generated method stub
		 
		return this.developerRepository.findOne(id);
	}



	public void editDeveloperService(Developer developer) {
		// TODO Auto-generated method stub
		this.developerRepository.save(developer);
		
	}



	public void deleteDeveloper(Developer dev) {
		// TODO Auto-generated method stub
		this.developerRepository.delete(dev);
		
	}

}

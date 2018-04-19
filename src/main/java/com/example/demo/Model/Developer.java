package com.example.demo.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Developer {
	
	
    @Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String name;
	private String email;
	private long mobileNumber;
	private String language;
	private String Manager;
	private int anual_package;
	private	String peojectteam;
	
	public Developer() {
		// TODO Auto-generated constructor stub
	}

	public Developer(int id, String name, String email, long mobileNumber, String language, String manager,
			int anual_package, String peojectteam) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.mobileNumber = mobileNumber;
		this.language = language;
		Manager = manager;
		this.anual_package = anual_package;
		this.peojectteam = peojectteam;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getManager() {
		return Manager;
	}

	public void setManager(String manager) {
		Manager = manager;
	}

	public int getAnual_package() {
		return anual_package;
	}

	public void setAnual_package(int anual_package) {
		this.anual_package = anual_package;
	}

	public String getPeojectteam() {
		return peojectteam;
	}

	public void setPeojectteam(String peojectteam) {
		this.peojectteam = peojectteam;
	}

	
	

}

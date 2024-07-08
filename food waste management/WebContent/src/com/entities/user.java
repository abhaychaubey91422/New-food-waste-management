package com.entities;

public class user {
	
	
	private String name;
	private String email;
	private String password;
	private String catogry;
	private String mobile;
	
	public user() 
	{
		super();
		
	}

	/**
	 * @param id
	 * @param name
	 * @param email
	 * @param password
	 * @param catogry
	 * @param mobile
	 */
	public user(int id, String name, String email, String password, String catogry, String mobile) {
		super();

		this.name = name;
		this.email = email;
		this.password = password;
		this.catogry = catogry;
		this.mobile = mobile;
	}

	/**
	 * @param name
	 * @param email
	 * @param password
	 * @param catogry
	 * @param mobile
	 */
	public user(String name, String email, String password, String catogry, String mobile) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.catogry = catogry;
		this.mobile = mobile;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCatogry() {
		return catogry;
	}

	public void setCatogry(String catogry) {
		this.catogry = catogry;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	

}

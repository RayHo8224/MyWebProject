package com.ray.constant;

public enum CommonConstant {

	PROPERTIES_PATH("/WEB-INF/classes/properties/");
	

	private String description;
	
	private CommonConstant(String description){
		this.description=description;
	}
	
	public String getDescription(){
		return description;
	}
}

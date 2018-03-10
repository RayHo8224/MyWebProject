package com.ray.constant;

public enum RunTimeEnvironment {
	
	RUN_TIME_ENVIRONMENT(System.getProperty("runTimeEnvironment"));

	private String description;

	private RunTimeEnvironment(String description) {
		this.description = description;

	}

	public String getDescription() {
		return description;
	}

}

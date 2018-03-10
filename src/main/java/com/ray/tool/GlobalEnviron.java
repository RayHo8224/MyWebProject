package com.ray.tool;


import javax.servlet.ServletContext;

import com.ray.constant.RunTimeEnvironment;

public class GlobalEnviron {

	private static final Object lock = new Object();

	private static GlobalEnviron globalEnviron;

	private ServletContext servletContext;
	private RunTimeEnvironment runTimeEnvironment;

	private GlobalEnviron() {
		runTimeEnvironment = RunTimeEnvironment.RUN_TIME_ENVIRONMENT;
	}

	public static GlobalEnviron getInstance() {
		
		GlobalEnviron instance = globalEnviron;

		if (instance == null) {
			synchronized (lock) {
				instance = globalEnviron;
				if (instance == null) {
					instance = new GlobalEnviron();
					instance.refresh();
					globalEnviron = instance;
				}
			}
		}

		return instance;
	}

	public RunTimeEnvironment getRunTimeEnvironment() {
		return this.runTimeEnvironment;
	}

	public ServletContext getServletContext() {
		return servletContext;
	}

	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	public synchronized void refresh() {
		//可供日後彈性應用
	}

}

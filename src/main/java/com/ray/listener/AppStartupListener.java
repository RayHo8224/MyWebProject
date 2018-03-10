package com.ray.listener;



import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.ray.constant.RunTimeEnvironment;
import com.ray.tool.GlobalEnviron;

/**
 * Application Lifecycle Listener implementation class AppStartupListener
 *
 */
public class AppStartupListener implements ServletContextListener {

	public AppStartupListener() {
	}

	public void contextDestroyed(ServletContextEvent arg0) {
	}

	public void contextInitialized(ServletContextEvent arg0) {

		/***系統初始化開始,請勿刪除***/
		GlobalEnviron.getInstance().setServletContext(arg0.getServletContext());
		/****系統初始化結束*********/
		

		GlobalEnviron globalEnviron = GlobalEnviron.getInstance();
		RunTimeEnvironment rte = globalEnviron.getRunTimeEnvironment();
		System.out.println("runTimeEnvironment=" +rte.getDescription());
		

	}

}

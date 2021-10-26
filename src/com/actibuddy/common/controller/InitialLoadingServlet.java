package com.actibuddy.common.controller;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import com.actibuddy.common.config.Configuration;

@WebServlet(urlPatterns = {}, loadOnStartup = 1)
public class InitialLoadingServlet extends HttpServlet{

	@Override
	public void init(ServletConfig config) throws ServletException {
		
		Configuration.mybatisConfigLocation = config.getServletContext().getInitParameter("mybatis-config-location");
		
		System.out.println(Configuration.mybatisConfigLocation);
	}

	
	
}

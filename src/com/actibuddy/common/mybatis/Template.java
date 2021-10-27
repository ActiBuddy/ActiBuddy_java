package com.actibuddy.common.mybatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.actibuddy.common.config.Configuration;

public class Template {

	private static SqlSessionFactory sqlSessionFactory;
	
	public static SqlSession getSqlSession() {
		
		if(sqlSessionFactory == null) {
			
			String resource = Configuration.mybatisConfigLocation;
			System.out.println(resource);
			try {
				InputStream inputStream = Resources.getResourceAsStream(resource);
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
				
			} catch (IOException e) {
				e.printStackTrace();
			}		

		}
		// sqlSession은 요청 시마다 생성해야 한다.
		SqlSession sqlSession = sqlSessionFactory.openSession(false);
		
		
		return sqlSession;
}
}
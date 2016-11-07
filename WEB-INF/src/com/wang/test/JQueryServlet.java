package com.wang.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class JQueryServlet extends HttpServlet {
		@Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        
        String value = request.getParameter("val");
        System.out.println("value:" + value);
 
        /*if(value.equals("wang")){
            out.print(true);
        }else{
            out.print(false);
        }*/

	        if(value.equals("wang")){
	        	    String str="{\"name\":\""+value+"\",\"info\":\"合法\"}";
	          	  out.print(str);
	        	}else{
	            String str="{\"name\":\""+value+"\",\"info\":\"不合法\"}";
	            out.print(str);
	        	}
	}
}	
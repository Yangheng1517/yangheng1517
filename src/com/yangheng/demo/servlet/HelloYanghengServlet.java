package com.yangheng.demo.servlet;
import java.io.*;
import java.util.Random;

import javax.servlet.*;
import javax.servlet.http.*;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;

import com.yangheng.demo.constants.Constants;

public class HelloYanghengServlet extends HttpServlet{

	private static final long serialVersionUID = 4222947277683884137L;
	
	/**
	 * declare a variable named message
	 */
	//private String message;
	
	private static Integer result = 12;
	
	 public void init() throws ServletException
	  {
	      // 执行必需的初始化
	      //message = "Hello Yangheng";
	  }

	  public void doGet(HttpServletRequest request,
	                    HttpServletResponse response)
	            throws ServletException, IOException
	  {
		  // 设置响应内容类型
	      response.setContentType("text/html");
	      response.setCharacterEncoding(Constants.ENCODE_TYPE);

		  String para = request.getParameter(Constants.KEY_ARG1);
	      if(StringUtils.isNotEmpty(para)){
	    	  if(NumberUtils.isDigits(para)){
	    		  Integer target  =  Integer.parseInt(para);
	    		  if(target > result){
	    			  request.setAttribute(Constants.KEY_CURRENT_DATA, para);
	    			  request.setAttribute(Constants.KEY_MESSAGE, Constants.MESSAGE_BIGGER);
	    		  }else if(target == result){
	    			  request.setAttribute(Constants.KEY_CURRENT_DATA, para);
	    			  request.setAttribute(Constants.KEY_MESSAGE, Constants.MESSAGE_SUCCESS);
	    			  Random ramdom =  new Random();
	    			  result = ramdom.nextInt(100);
	    		  }else{
	    			  request.setAttribute(Constants.KEY_CURRENT_DATA, para);
	    			  request.setAttribute(Constants.KEY_MESSAGE, Constants.MESSAGE_SMALLER);
	    		  }
	    		  
	    	  }else{
	    		  request.setAttribute(Constants.KEY_MESSAGE, Constants.ERRORCODE_PARA_NOT_NUMBER_MESSAGE);
	    	  }
	      }else{
	    	  request.setAttribute(Constants.KEY_MESSAGE, Constants.ERRORCODE_PARA_NULL_MESSAGE);
	      }
	      RequestDispatcher dispatcher = request.getRequestDispatcher("/guess.jsp");
	      dispatcher .forward(request, response);
	  }
	  
	  public void destroy()
	  {
	      // 什么也不做
	  }
}

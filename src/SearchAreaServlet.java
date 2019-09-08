package com.ydssbbnc.prj.wobbs;
import com.ydssbbnc.prj.wobbs.SearchArea;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class SearchAreaServlet extends HttpServlet{
    public void doGet(HttpServletRequest req,HttpServletResponse rsp)throws ServletException,IOException{
	req.setCharacterEncoding("utf-8");
	rsp.setCharacterEncoding("utf-8");
	rsp.setContentType("text/html;charset=utf-8");
	String topAreaSearchBarInput=req.getParameter("topAreaSearchBarInput");
	PrintWriter out=rsp.getWriter();
	out.print(new SearchArea().getSearchArea(topAreaSearchBarInput));
    }
    public  void doPost(HttpServletRequest req,HttpServletResponse rsp)throws ServletException,IOException{
	doGet(req,rsp);
    }
}

<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
 request.setCharacterEncoding("UTF-8");
 String realFolder = "";
 String filename1 = "";
 int maxSize = 1024*1024*5;
 String encType = "UTF-8";
 String savefile = "img";
 ServletContext scontext = getServletContext();
 realFolder = scontext.getRealPath(savefile);
 
 try{
  MultipartRequest multi=new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

  Enumeration<?> files = multi.getFileNames();
     String file1 = (String)files.nextElement();
     filename1 = multi.getFilesystemName(file1);
 } catch(Exception e) {
  e.printStackTrace();
 }
 
 String fullpath = "./img/" + filename1;
 session.removeAttribute("fullpath");
 
%>

<title>Insert title here</title>
</head>
<body>
<% System.out.print(fullpath);
fullpath=fullpath+filename1;
session.setAttribute("fullpath", fullpath);
response.sendRedirect("diary1.jsp");
%>

</body>
</html>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>关于小昇</title>
<link rel="stylesheet" type="text/css" href="css/cayman.css">
</head>
<body>
<section class="page-header">
<% String version = (String) session.getAttribute("version"); %>
<% String main = (String) session.getAttribute("main"); %>
<h1><% if (version.equals("chinese")) { %>关于小昇<% } else { %>About Xiaosheng<% } %></h1>
<h2><%= main %></h2>
<a href="http://github.com/jsksxs360" class="btn">GitHub</a>
<a href="http://xiaosheng.me" class="btn">Website</a>
</section>
<section class="main-content">
<h3 id="small-image"><% if (version.equals("chinese")) { %>关于我<% } else { %>About Me<% } %></h3>
<p><img src="img/avatar-xs.jpg"/></p>
<hr />
<h3><% if (version.equals("chinese")) { %>爱好<% } else { %>Hobbies<% } %></h3>
<ul>
<% List<String> hobbies = (List<String>) session.getAttribute("hobbies"); %>
<% for (String hobby : hobbies) { %>
<li><%= hobby %></li>
<% } %>
</ul>
</section>
</body>
</html>
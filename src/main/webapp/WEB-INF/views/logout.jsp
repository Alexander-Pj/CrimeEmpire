<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="PL">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="CrimeEmpire">
    <meta name="keywords" content="keywords here">
    <meta name="author" content="P&A">
    <link href="https://fonts.googleapis.com/css?family=Press+Start+2P&amp;subset=latin-ext" rel="stylesheet">
    <title>CrimeEmpire 1.0.0</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
  </head>
  <body>
   <div class="main_container" id="workspace">
      
        <div class='game_welcome_container draggable'>
          <div class="bar">
          </div>
          <div class="text_area">
            <span>You've been Sucessfully Logged Out<br><p>
			<form action="/CrimeEmpire/login" class="button1 geos_welcome_container_button">
	    		<input type="submit" value="Log in" />
			</form>
			</p></span>
          </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/app.js" type="text/javascript"></script>
  </body>
</html>

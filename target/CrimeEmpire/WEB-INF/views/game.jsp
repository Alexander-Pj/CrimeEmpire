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
    <!-- MAIN_CONTAINER -->
    <div class="main_container">
    <span style="display: none;">
     	    <p id="cash">${stats.cash}</p>
            <p id="thugs">${stats.thugs}</p>
            <p id="whores">${stats.whores}</p>
            <p id="drugs">${stats.drugs}</p>
    </span>
      <!-- MAIN_BAR & NAV-->
      <div class="main_bar">
        <ul class="functions"><span>GAME</span>
          <li class="functions_in hidden geos_info"><span>info</span></li>
          <li class="functions_in hidden calculator"><span>calculator</span></li>
          <li class="functions_in hidden log out"><span><a href="/CrimeEmpire/logout">log out</a></a></span></li>
        </ul>
        <ul class="functions"><span>RESOURCES</span>
      	 <li class="functions_in hidden notepad"><span>STATS</span></li>
        </ul>
        <ul class="functions"><span>TURN</span>
          <li class="functions_in hidden end_turn"><span>END TURN</span></li>
        </ul>
        <div class='calendar'></div>
        <div class="clear"></div>
      </div>
      <!-- WORKSPACE & WINDOWS -->
      <div id="workspace">

       
          <img id="Point01" src="<%=request.getContextPath()%>/resources/images/ico/ICO_10.gif" class="ico_10">
          <img src="<%=request.getContextPath()%>/resources/images/ico/ICO_09.gif" class="ico_09">
          <img src="<%=request.getContextPath()%>/resources/images/ico/ICO_08.gif" class="ico_08">
          <img src="<%=request.getContextPath()%>/resources/images/ico/ICO_07.gif" class="ico_07">
          <img src="<%=request.getContextPath()%>/resources/images/ico/ICO_06.gif" class="ico_06">
          <img src="<%=request.getContextPath()%>/resources/images/ico/ICO_05.gif" class="ico_05">
          <img src="<%=request.getContextPath()%>/resources/images/ico/ICO_04.gif" class="ico_04">
          <img src="<%=request.getContextPath()%>/resources/images/ico/ICO_03.gif" class="ico_03">
          <img src="<%=request.getContextPath()%>/resources/images/ico/ICO_02.gif" class="ico_02">
          <img src="<%=request.getContextPath()%>/resources/images/ico/ICO_01.gif" class="ico_01">

       

        <div class='game_welcome_container draggable'>
          <div class="bar">
          </div>
          <div class="text_area">
            <span>Welcome to Crime Empire<p>VERSION: 1.0.0</p><br><p>Project still in progress!!!</p></span>
            <button class="button1 geos_welcome_container_button">OK</button>
          </div>
        </div>

        <div class='geos_info_container draggable hidden'>
          <div class="bar">
            <div class='bar_close'></div>
          </div>
          <div class="text_area">
            <span>CRIME EMPIRE<p>P&A SOFTWARE</p><p>Copyright 2018</p></p></span>
            <button class="button1 geos_info_container_button">OK</button>
          </div>
        </div>
        
        <div class='end_turn_container draggable hidden'>
          <div class="bar">
            <div class='bar_close'></div>
          </div>
          <div class="text_area">
          <span><p>ARE YOU SURE YOU WANT TO END YOUR TURN?</p><p><br></p></span>
            <button class="button1 end_turn_container_button">END TURN</button>
          </div>
        </div>
        
        <div class='point_container draggable hidden'>
          <div class="bar">
            <div class='bar_close'></div>
          </div>
          <div class="text_area">
          <span><p>ARE YOU SURE YOU WANT TO END YOUR TURN?</p><p><br></p></span>
            <button class="button1 end_turn_container_button">END TURN</button>
          </div>
        </div>

        <div class="calculator_container draggable hidden">
          <div class="bar">
            <div class='bar_close'></div>
          </div>
          <div class="calc_main">
            <h5>Calculator</h5>
            <input id="result" class="input"></input>
            <div id="keys">
               <div id="first_row">
                   <button id="clearAll" type="reset" value="CE" class="clean calc_button">CE</button>
                   <button id="clear" type="reset" value="C" class="clean calc_button">C</button>
                   <button id="add" type="button" value="+" class="operators operand calc_button">+</button>
               </div>
               <div id="second_row">
                   <button id="seven" type="button" value="7" class="show calc_button">7</button>
                   <button id="eight" type="button" value="8" class="show calc_button">8</button>
                   <button id="nine" type="button" value="9" class="show calc_button">9</button>
                   <button id="sub" type="button" value="-" class="operators operand calc_button">-</button>
               </div>
               <div id="third_row">
                   <button id="four" type="button" value="4" class="show calc_button">4</button>
                   <button id="five" type="button" value="5" class="show calc_button">5</button>
                   <button id="six" type="button" value="6" class="show calc_button">6</button>
                   <button id="mul" type="button" value="*" class="operators operand calc_button">*</button>
               </div>
               <div id="fourth_row">
                   <button id="one" type="button" value="1" class="show calc_button">1</button>
                   <button id="two" type="button" value="2" class="show calc_button">2</button>
                   <button id="three" type="button" value="3" class="show calc_button">3</button>
                   <button id="divide" type="button" value="/" class="operators operand calc_button">/</button>
               </div>
               <div id="fifth_row">
                   <button id="zero" type="button" value="0" class="show calc_button">0</button>
                   <button id="dot" type="button" value="." class="show calc_button">.</button>
                   <button id="calculate" type="button" value="=" class="operand calc_button">=</button>
               </div>
            </div>
          </div>
        </div>

        <div class='notepad_container draggable hidden'>
          <div class="bar">
            <div class='bar_close'></div>
          </div>
           <div class="text_area">
            <span><h1>STATS</h1>
            <p>USERNAME: ${loggedUser.userName}</p><p><br></p>
            <p>CASH: ${stats.cash}</p>
            <p>THUGS: ${stats.thugs}</p>
            <p>WHORES: ${stats.whores}</p>
            <p>DRUGS: ${stats.drugs}</p>
            </span>
          </div>
        </div>

      </div>

    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/app.js" type="text/javascript"></script>
  </body>
</html>

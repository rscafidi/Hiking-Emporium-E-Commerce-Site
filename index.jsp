<%--
  Created by IntelliJ IDEA.
  User: resca
  Date: 6/3/2018
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

  ArrayList<String> itemList = new ArrayList<String>();
  ArrayList<Integer> checkout = new ArrayList<Integer>();
  Double total = new Double(0);
  if (session.isNew()) {
    session.setAttribute("myArray", itemList);
    //out.print(session.getAttribute("myArray"));
    session.setAttribute("checkout", checkout);
    session.setAttribute("total", total);
  }
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" type="text/css" href="styles.css">
  <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Dosis|Indie+Flower|Josefin+Sans:600i" rel="stylesheet">
  <meta charset="UTF-8">
  <title>The Hiking Emporium</title>
</head>
<body>
<div class="wrapper">
  <a href=""><img class="logo" src="images/hiking-logo.png"></a>
  <a href=""><h1 class="banner">The Hiking Emporium</h1></a>

  <!--Navigation bar-->
  <ul class="nav">
    <a href="" id="current"><li>Home</li></a>
    <a href="products.jsp"><li>Products</li></a>
    <a href="team.html"><li>Our Team</li></a>
    <a href="mission.html"><li>Our Mission</li></a>
    <a href="contact.html"><li>Contact Us</li></a>
  </ul>

  <!--Home Page main content-->
  <div class="main">
    <h2>Choose your <span id="accent1">Adventure</span></h2>
    <p class="content">At The Hiking Emporium, we have everything you can possibly need to get out and enjoy the ourdoors.
      We source the highest quality equipment and even manufacture some of our own when we can't find gear that meets or
      exceeds our high standards.  Every piece of equipment you purchase from us is guaranteed for life.  Whether there was
      a defect in materials, craftsmanship, or even too much love from you, we will replace your product free of charge, no
      questions asked.  We want The Hiking Emporium to be your last stop shop for every need on your next outdoor adventure.
    </p>
    <p class="content"><a href="products.html">Browse our store</a> to find the gear you need, and submit an order online
      using our intuitive order form.  If you need any help, we're here for you on the <a href="contact.html">Contact Us</a>
      page.
    </p>
  </div>
  <div class="footer"></div>
  <ul class="footer">
    <a href=""><li>Home</li></a>
    <a href="careers.html"><li>Careers</li></a>
    <a href="privacypolicy.html"><li>Privacy Policy</li></a>
    <a href="sitemap.html"><li>Site Map</li></a>
    <a href="contact.html"><li>Contact Us</li></a>
  </ul>
</div>
</body>
</html>
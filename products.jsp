<%--
Created by IntelliJ IDEA.
User: resca
Date: 6/1/2018
Time: 4:18 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="javax.servlet.RequestDispatcher"%>
<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.util.Scanner" %>
<%@ page import="org.json.simple.JSONValue" %>
<%@ page import="java.io.IOException" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="java.util.ArrayList" %>
<%@ page session="true"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Dosis|Indie+Flower|Josefin+Sans:600i" rel="stylesheet">
    <meta charset="UTF-8">
    <title>The Hiking Emporium</title>
</head>
<body style="background-image: url(images/bg.png);">
    <div class="wrapper">
            <a href="index.html"><img class="logo" src="images/hiking-logo.png"></a>
            <a href="index.html"><h1 class="banner">The Hiking Emporium</h1></a>
            <!--Navigation bar-->
            <ul class="nav">
                <a href="index.jsp"><li>Home</li></a>
                <a href="" id="current"><li>Products</li></a>
                <a href="team.html"><li>Our Team</li></a>
                <a href="mission.html"><li>Our Mission</li></a>
                <a href="contact.html"><li>Contact Us</li></a>
            </ul>
            <!--Home Page main content-->
            <div class="main">
                <h2>Choose your <span id="accent1">Gear</span></h2>
                <p class="content">Below you will find any piece of hiking gear you could possibly want.  Select an item to
                go to our order form, and <a href="contact.html">contact us</a> if you have any issues.
                </p>
                <div class="recent">
                <!-- Make recent list here RequestDispatcher rd = request.getRequestDispatcher("recent"); -->
                <p>Recently Viewed Items</p>
                <jsp:include page="recent"></jsp:include>
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

                    <!-- servlet dispatcher
                rd.include(request, response);
                -->
                </div>
                <p>Product Catalog</p>



                <div class="itemWrapper">
                <jsp:include page="client"></jsp:include>
                <%--<%--%>
               <%----%>
<%--//                    URL url = new URL("http://centaurus-6.ics.uci.edu:7006/HikingEmporium/rest/ProductSample");--%>
<%--//                    HttpURLConnection conn = (HttpURLConnection)url.openConnection();--%>
<%--//                    conn.setRequestMethod("GET");--%>
<%--//                    conn.connect();--%>
<%--//                    int responsecode = conn.getResponseCode();--%>
<%--//--%>
<%--//                    if(responsecode != 200)--%>
<%--//                        throw new RuntimeException("HttpResponseCode: " + responsecode);--%>
<%--//                    else--%>
<%--//                    {--%>
<%--//                        String inline = new String();--%>
<%--//                        Scanner sc = new Scanner(url.openStream());--%>
<%--//                        while(sc.hasNext())--%>
<%--//                        {--%>
<%--//                            inline += sc.nextLine();--%>
<%--//                        }--%>
<%--//--%>
<%--//                        sc.close();--%>
<%--//--%>
<%--//                        JSONValue parser = new JSONValue();--%>
<%--//--%>
<%--//                        JSONObject jobj = (JSONObject) parser.parse(inline);--%>
<%--//--%>
<%--//                        printJSONObject(jobj, response);--%>
<%--//--%>
<%--//                    }--%>
                <%--%>--%>
                </div>
            </div>  <!-- end main content container-->

            <div>
                <ul class="footer">
                    <a href="index.jsp"><li>Home</li></a>
                    <a href="careers.html"><li>Careers</li></a>
                    <a href="privacypolicy.html"><li>Privacy Policy</li></a>
                    <a href="sitemap.html"><li>Site Map</li></a>
                    <a href="contact.html"><li>Contact Us</li></a>
                </ul>
            </div>

    </div>

</body>
</html>

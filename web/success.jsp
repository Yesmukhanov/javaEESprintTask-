<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.sprintTask2.DB.Items" %>
<%@ page import="kz.sprintTask2.DB.DBConnection" %><%--
  Created by IntelliJ IDEA.
  User: dauren
  Date: 22.04.23
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <%@include file="head.jsp"%>
</head>
<body>
    <div class="container align-baseline">
    <%@include file="navBar.jsp"%>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <h1 class="text-center"> Welcome to Bitlab SHOP</h1>
            <h4 class="text-center">Electronic devices with high quality and service</h4>
        </div>
    </div>

    <%
        ArrayList<Items> items = DBConnection.getItems();
        for (int i = 0; i < items.size(); i++) {
            int j = 0;
    %>
        <div class="container d-flex mt-5" style="margin-left: 25%">
        <%
            while (i < items.size()  && j < 3){

        %>
            <div class="card text-center" style="width: 18rem; margin-left: 25px">
                <div class="card-body">
                    <h5 class="card-title text-center"><%=items.get(i).getName()%></h5>
                    <p class="card-text text-center"><%=items.get(i).getPrice()%>$</p>
                    <p class="card-text text-center" ><%=items.get(i).getDescription()%></p>
                    <a href="#" class="btn btn-success" style="margin-bottom: 5px">Buy now</a>
                </div>
            </div>

            <%
                    i++;
                    j++;
                }
            i--;
            %>
        </div>
    <%

        }
    %>

</body>
</html>

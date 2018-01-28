<%--
  Created by IntelliJ IDEA.
  User: patel
  Date: 28/1/18
  Time: 9:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Weather Api</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container-fluid">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Attribute</th>
                    <th>Value</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Longitude</td>
                    <td>${lon}</td>
                </tr>
                <tr>
                    <td>Latitude</td>
                    <td>${lan}</td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>${description}</td>
                </tr>
                <tr>
                    <td>Current Temp</td>
                    <td>${avgtemp}</td>
                </tr>
                <tr>
                    <td>Min temp</td>
                    <td>${mintemp}</td>
                </tr>
                <tr>
                    <td>Max temp</td>
                    <td>${maxtemp}</td>
                </tr>
                <tr>
                    <td>Wind Speed</td>
                    <td>${wind}</td>
                </tr>
                <tr>
                    <td>Humidity</td>
                    <td>${humidity}</td>
                </tr>
                <tr>
                    <td>Pressure</td>
                    <td>${pressure}</td>
                </tr>
            </tbody>
        </table>
    </div>
<%--Longitude is:${lon}<br>--%>
<%--Latitude is :${lan}<br>--%>
<%--Description is:${description}<br>--%>
<%--Current Temp is :${avgtemp}<br>--%>
<%--Min temp is:${mintemp}<br>--%>
<%--Max temp is:${maxtemp}<br>--%>
<%--Wind Speed is:${wind}<br>--%>
<%--Humidity is:${humidity}<br>--%>
<%--Pressure is:${pressure}--%>
</body>
</html>

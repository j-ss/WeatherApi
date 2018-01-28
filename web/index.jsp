<%--
  Created by IntelliJ IDEA.
  User: patel
  Date: 28/1/18
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Wheather Api</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
  </head>
  <body style="background: url('image/image.jpg') no-repeat center center fixed; background-size: cover;">
  <div class="container" >
    <form action="weather" method="get" style="background: transparent; margin: 30% 0">
      <div class="form-group row">
        <div class="col-10">
          <input type="text" id="place" autofocus name="place"
                 placeholder="Enter Location" class="form-control"
                  style="outline: none;background: transparent;border: none;
          border-bottom: 3px solid green; color:#ffffff;"/>
        </div>
        <div class="col-2">
          <button class="btn btn-success" type="submit">Submit</button>
        </div>
      </div>
    </form>
  </div>










  <script>

    function init() {
        var input=document.getElementById('place');
        var autocomplete=new google.maps.places.Autocomplete(input);
    }
    google.maps.event.addDomListener(window,'load',init);

  </script>
  </body>
</html>

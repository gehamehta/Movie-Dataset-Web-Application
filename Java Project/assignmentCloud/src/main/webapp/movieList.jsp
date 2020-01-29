<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="cloudproject.*"%>
<%@page import="java.util.ArrayList"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie List</title>
<style type="text/css">
body{
  background-image: url('images/Dark1.jpg');
  background-attachment: fixed;  
  background-size: cover;
}
/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 10px 16px;
  background-color: #f1f1f1;
  cursor: pointer;
  font-size: 18px;
  align:center;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
  }
</style>
</head>
<body>
<center><b><h1 style="color: white">Movie List</h2></b></center>
<div>
<button class = "btn" style="margin-left: 900px" onclick ="window.location.href='FirstPage.jsp'" >Home</button>
  <button class = "btn" onclick ="window.location.href='searchPage.jsp'">Back To Browse Movies</button>
  </div>
  <br><br><br>
<div style="height: 400px;overflow: auto">
<table border ="1" align="center" bgcolor="white"> 
<th><b>Movie Title</b></th> 
<th><b>Year</b></th> 
<th><b>Genres</b></th> 
<th><b>Ratings</b></th> 
<%ArrayList<Movies> std =  
            (ArrayList<Movies>)request.getAttribute("MoviesList"); 
        for(Movies s:std){%> 
        <%-- Arranging data in tabular form 
        --%> 
         <tr> 
              <td>   <%=s.getMovieTitle()%> </td>
         <td>   <%=s.getYear()%> </td>
     <td>   <%=s.getGenre()%> </td>
 <td>   <%=s.getRating()%> </td>
        </tr>
         <%}%> 
<%-- <%= request.getAttribute("MoviesList") %> --%>
</table>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-image: url('images/background_img.jpeg');
  background-attachment: fixed;  
  background-size: cover;
}

.header {
  text-align: center;
  padding: 32px;
}

.row {
  display: -ms-flexbox; /* IE 10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE 10 */
  flex-wrap: wrap;
  padding: 0 4px;
}

/* Create two equal columns that sits next to each other */
.column {
  
  text-color: white;
  -ms-flex: 25%; /* IE 10 */
  flex: 25%;
  padding: 0 4px;
  text-align: center;
}

.column img {
  
  vertical-align: middle
  position:relative;
  width:  100px;
    height: 600px;
    background-position: 50% 50%;
    background-repeat:   no-repeat;
    background-size:     cover;
  
  
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

<!-- Header -->
<div class="header" id="myHeader">
  <h1>Top 10 movies of all time</h1>
  <button class = "btn">Predict</button>
  <button class = "btn" onclick ="window.location.href='/cloudAssignment'">Browse Movies</button>
  
</div>


<!-- Photo Grid -->
<div class="row" style="color:white;" > 
  <div class="column">
    <img src="images/Inception.jpeg" style="width:100%"><p>Inception</p>
    <label>SimilarMovies</label>
    <label>eeeee</label>
    <label>ccc</label>
    <img src="images/Gladiator.jpeg" style="width:100%"><p>Gladiator</p>
    <img src="images/Inglourious Basterds.jpeg" style="width:100%"><p>Inglourious Basterds</p>
  </div>
  <div class="column">
    <img src="images/Memento.jpeg" style="width:100%"><p>Memento</p>
    <img src="images/The Bourne Ultimatum.jpeg" style="width:100%"><p>The Bourne Ultimatum</p>
    <img src="images/The Departed.jpeg" style="width:100%"><p>The Departed</p>
   </div>  
  <div class="column">
    <img src="images/The Wolf Of Wall Street.jpeg" style="width:100%"><p>The Wolf Of Wall Street</p>
    <img src="images/The Lord Of The Rings - The Return Of The King.jpeg" style="width:100%"><p>The Lord Of The Rings - The Return Of The King</p>
   </div>
  <div class="column">
    <img src="images/The Dark Knight.jpeg" style="width:100%"><p>The Dark Knight</p>
    <img src="images/Django.jpeg" style="width:100%"><p>Django</p>
   </div>
</div>
</body>

</html>
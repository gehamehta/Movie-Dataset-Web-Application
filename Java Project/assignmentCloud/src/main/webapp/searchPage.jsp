<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Browse MO</title>
<style type="text/css">
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
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
	align: center;
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
	<center>
		<h1 style="color: white">Browse Movies on Search Basis</h1>
	</center>
	<br>
	<form name="browseMovie" action="SubmitAction" method="post">
		<script>
			function validateAndSend() {
				if (browseMovie.year.value == ''
						&& browseMovie.genre.value == ''
						&& browseMovie.rating.value == '') {
					alert('Please enter atleast one field');
					return false;
				} else {
					browseMovie.submit();
				}
			}
		</script>

		<br> <br>
		<div>


			<table border="0" align="center" bgcolor="white">
				<!-- <tbody style="height:100px" align="center"> -->
				<tr style="text-align: center; height: 70px;">
					<td style="width: 100px;">Year:</td>
					<td><select name="year" id="selectElementYear"
						style="width: 180px;">
							<option value="">Select Year</option>
					</select> <script>
						var min = 2000, max = 2018, select = document
								.getElementById('selectElementYear');

						for (var i = min; i <= max; i++) {
							var opt = document.createElement('option');
							opt.value = i;
							opt.innerHTML = i;
							select.appendChild(opt);
						}
					</script></td>
				</tr>

				<tr style="text-align: center; height: 70px;">
					<td>Genre:</td>
					<td><select name="genre" id="selectElementGenre"
						style="width: 180px;">
							<option value="">Select Genre</option>
							<option value="Action">Action</option>
							<option value="Animation">Animation</option>
							<option value="Comedy">Comedy</option>
							<option value="Crime">Crime</option>
							<option value="Documentary">Documentary</option>
							<option value="Drama">Drama</option>
							<option value="Horror">Horror</option>
							<option value="Musical">Musical</option>
							<option value="Mystery">Mystery</option>
							<option value="Romance">Romance</option>
							<option value="Sci-Fi">Sci-Fi</option>
							<option value="Thriller">Thriller</option>
							<option value="War">War</option>
							<option value="Western">Western</option>
							<option value="Adventure">Adventure</option>

					</select></td>
				</tr>

				<tr style="text-align: center; height: 70px;">
					<td>Rating:</td>
					<td><select name="rating" id="selectElementRating"
						style="width: 180px;">
							<option value="">Select Rating</option>
					</select> <script>
						var min = 0.5, max = 5, select = document
								.getElementById('selectElementRating');

						for (var i = min; i <= max; i = i + 0.5) {
							var opt = document.createElement('option');
							opt.value = i;
							opt.innerHTML = i;
							select.appendChild(opt);
						}
					</script></td>
				</tr>

			</table>
		</div>
		<br> <br> <br> <br>
		<center>
			<input class="btn" type="submit" value="Submit"
				onclick="validateAndSend()"> <input class="btn" type="reset"
				value="Reset">
				 <input class="btn" value="Home Page" onclick="window.location.href='FirstPage.jsp'">
		</center>
	</form>

</body>
</html>
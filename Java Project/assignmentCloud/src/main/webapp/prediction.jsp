<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
	     <Title> Movie Data Analaysis </title>
	     <style>
	     
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
	<div style="margin-left: 10px;margin-top: 10px;">
	<button class = "btn" onclick ="window.location.href='FirstPage.jsp'">Home Page</button>
	</div>
	<div class='tableauPlaceholder' id='viz1575467405408' style='position: relative;margin-left: 40px !important;'>
	<noscript>
	<a href='#'>
	<img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Vi&#47;VisualizingMovieDatafrom2000-2018&#47;MovieData&#47;1_rss.png' style='border: none' />
	</a>
	</noscript>
	<object class='tableauViz'  style='display:none;'>
	<param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' />
	<param name='embed_code_version' value='3' /> <param name='site_root' value='' />
	<param name='name' value='VisualizingMovieDatafrom2000-2018&#47;MovieData' />
	<param name='tabs' value='no' />
	<param name='toolbar' value='yes' />
	<param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Vi&#47;VisualizingMovieDatafrom2000-2018&#47;MovieData&#47;1.png' /> 
	<param name='animate_transition' value='yes' />
	<param name='display_static_image' value='yes' />
	<param name='display_spinner' value='yes' />
	<param name='display_overlay' value='yes' />
	<param name='display_count' value='yes' />
	</object>
	</div>              
	<script type='text/javascript'> 
	var divElement = document.getElementById('viz1575467405408');                    
	var vizElement = divElement.getElementsByTagName('object')[0];                    
	vizElement.style.width='1016px';vizElement.style.height='991px';                  
	var scriptElement = document.createElement('script');                   
	scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);               
	</script>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INDEX</title>
</head>
<body>
 
	<center>
		<h2>INDEX PAGE</h2>
		<h3>
			<a href="welcome">Click Here</a>
			<button onclick='getCookie()' value='cookie'>Button</button>
		</h3>
	</center>
	<script>
	function getCookie(){
		
	var params=window.location.search;
	var param=params.split("&");
	var code=param[0].split("=");
	var state=param[1].split("=");
	console.log(code[1]);
	console.log(state[1]);
	loadDoc(code[1]);
	}
	
	function loadDoc(codevalue) {
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		    	console.log(xhttp.responseText);
		    	//var jsonObj = JSON.parse(xhttp.responseText);
		    	//console.log(jsonObj);
		    	    	    
		    	
		    }
		  };
		  //xhttp.open("GET", "https://www.reddit.com/r/aww/.json", true);
		  xhttp.open("POST", "https://accounts.spotify.com/api/token", true);  
		  xhttp.setRequestHeader("Access-Control-Allow-Origin", "localhost:8080");
		  xhttp.setRequestHeader("code",codevalue);
		  xhttp.setRequestHeader("redirect_uri","http://localhost:8080/SpringAssess/callback");
		  xhttp.setRequestHeader("grant_type",'authorization_code');
		  xhttp.setRequestHeader('Authorization', 'Basic ' + (window.btoa("f51aba0d64d444d3b91fa0654e5f6e7f" + ':' + "363647ac2286445c84f7d4687e8144fc")));
		  xhttp.send();
		}
		
	
	</script>
</body>
</html>

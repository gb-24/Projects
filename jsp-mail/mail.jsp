<html>
	<head>
		<title>mail transffer page</title>
	</head>

	<body>
		
		<form method="post" action="req.jsp">
			
			<center>
				<br><br><br><br>
				<pre>Sender's Email-ID   : <input type="text" name="semailid" size=50 placeholder="Sender's Email-ID" autofocus=""/>
Password               : <input type="password" name="password" size=20 placeholder="Password"/><br></pre>
				<pre>Reciever's Email-ID : <input type="text" name="remailid" size=50 placeholder="Reciever's Email-ID" /><br></pre>
				<br><br><br><br>
				<textarea name="textarea" cols="75" rows="10" placeholder="Type your Mail Here"></textarea>
				<br><br>
				<input type="submit" value="Send">
			</center>
		
		</form>
	</body>
</html>
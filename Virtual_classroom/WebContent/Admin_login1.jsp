<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
function Sam()
{
	var aa=document.getElementById("button");
	if(aa.type=="password")
	{
	  	aa.type="text";
	}else{
	 	aa.type="password";
	}
}
	function Valid1()
	{
	     var a=document.adm.uid.value;
	     var b=document.adm.pass.value;
	     if(a==""||a==null)
	     {
	    	 alert("Please enter your user-id");
	         return false;
	     }
	     if(b==""||b==null)
	     {
	    	 alert("Please enter your Password");
	         return false;
	     }
	}
	function change(x)
	{
		if(x==1)
	    {
		     location.href='Faculty_login.html';
		}
		else if(x==2)
		{
		     location.href='Student_login.html';	
		}
		return;
	}
	</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> VC | ADMIN | LOGIN </title>
<link rel="stylesheet" type="text/css" href="style1.css" >
</head>
<body>
<div id="MyClockDisplay"></div>
	<script type="text/javascript">
		function showTime()
		{
			//Date
			var mydate=new Date();
			var year=mydate.getYear(); //get the year.
				if(year <1000)
					{
						year+=1900;
					}
			var day=mydate.getDay(); //get the day.
			var month=mydate.getMonth(); //get the month.
			var daym=mydate.getDate(); //day of the month.
			var dayarray= new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
			var montharray=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
			
			//Time
			var date = new Date();
			var h= date.getHours(); //0-23
			var m= date.getMinutes(); //0-59
			var s=date.getSeconds(); //0-59
			var session="AM";
			if(h==0){
				h=12;
			}
			if(h>12){
				h=h-12;
				session="PM";
			}
			h=(h<10) ? "0"+ h : h;
			m=(m<10) ? "0"+ m : m;
			s=(s<10) ? "0"+ s : s;
			
			var date1="" +dayarray[day]+ " " +daym+ " " +montharray[month]+ " " +year+   "  |  "   +h + ":" + m + ":" + s + " " + session;
			
			document.getElementById("MyClockDisplay").innerText = date1;
			document.getElementById("MyClockDisplay").textContent = date1;
			
			setTimeout(showTime,1000);
		}
		showTime();
		
	</script>
	<center>
	<font color='red' size='5'>
		    <% String error=request.getParameter("error");
		          if(error!=null){%>
		    	Error message :  <%= request.getParameter("error") %>!
		    <%} %>	
		    </font>
			<font color="blue" size="3">
			<h1><b>VIRTUAL- CLASSROOM</b></h1>
			<p><marquee behavior="alternate" onmouseover="this.stop()" onmouseout="this.start()">Welcome to Virtual Classroom </marquee></p>
			<div class="v-form">
			
			<form action="adm_log" name="adm" method="post" onsubmit="return Valid1();" id="login">
			
				<table align="center">
				<img src="login.png" width="100px" height="100px">
				<br>
				<input type="radio" name="occ" value="teacher"  onclick="change(1)">Faculty &nbsp&nbsp
				<input type="radio" name="occ" value="student"  onclick="change(2)">Student &nbsp&nbsp
				<input type="radio" name="occ" value="admin" checked>Admin<br><br>
				<h2 align="center"><b>ADMIN_LOGIN</b></h2>
				<tr><td align="center">USER-ID</td><td align="center"><input type="text" name="uid" id="button1" placeholder="Enter your User-ID" required></td></tr>
				<br>
				<tr><td align="center">PASSWORD</td><td align="center"> <input type="password" name="pass" id="button" placeholder="Enter your Password" required></td><td><input type="checkbox" onclick="return Sam();">Show password</td></tr>
				</table>
				<br><br>
				
				<input type="submit" value="LOGIN" id="butt">&nbsp
				<input type="reset" value="RESET" id="butt">
				
			</form>
			</div>
			</font>
		</center>
</body>
</html>
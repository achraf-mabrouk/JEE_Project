<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.Message" %>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList" %>    
<%@page import="com.Room" %>
<jsp:useBean id="message"  class="com.Message" scope="session"></jsp:useBean>
<jsp:useBean id="room"   class="com.Room" scope="session"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content='5'>
<title>Message Area</title>
<style type="text/css">
p{color : purple;
}
.textMsg{
	border-style: solid;
	border-radius: 10px;
	padding : 5px;
}
 </style>
</head>
<body>
	<%	String pseudo_name =(String)session.getAttribute("pseudo"); 
		
	%>
	<%! //static ArrayList <Message> messages = new ArrayList <Message>();	
		static ArrayList <Room> Rooms = new ArrayList <Room>();		

		
	%>
	<%
	
	//traitement des Rooms
	String roomName =(String)session.getAttribute("roomName");	
	
		for (Room roomChat : Rooms){
			if (roomChat.getRoomName().equals(roomName))
			{
				if(request.getParameter("Message")!=null){
					Date date = new Date();					
					Message msg = new Message(pseudo_name,request.getParameter("Message"),date);	
					Room.Msgs.add(msg);					
				}
				 
			}
		}
	// traitement des messages					
		
	%>
	<b><%out.println("Welcome "+pseudo_name);%></b><br>
	<%	
		Room CurrentRoom = new Room();
		for(Message Msg :  ){
			out.println("<p class=\"textMsg\"><b>"+Msg.getDate().getHours() +":"+Msg.getDate().getMinutes() +" : "+Msg.getAuteur() +" :</b> "+Msg.getText()+"<br><p>");
		}
	%>
</body>
</html>
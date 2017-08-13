<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.net.*,javax.mail.*,java.io.*,java.util.*,javax.mail.internet.InternetAddress,javax.mail.internet.MimeMessage" errorPage="" %>

<%

        String host="smtp.gmail.com",user=request.getParameter("semailid"), pass=request.getParameter("password");
		
		
		
                                 
		//host = smtp_server; //"smtp.gmail.com"; user = jsp_email; //"YourEmailId@gmail.com" // email id to send the emails
		//pass = jsp_email_pw; //Your gmail password
		String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
		String from = user; //Email id of the recipient
		String to = request.getParameter("remailid"); // out going email id
		String subject = "welcome";
		String messageText = request.getParameter("textarea");
		boolean sessionDebug = true;
		Properties props = System.getProperties();
		props.put("mail.host", host);
		props.put("mail.transport.protocol.", "smtp");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.", "true");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.socketFactory.fallback", "false");
		props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
		Session mailSession = Session.getDefaultInstance(props, null);
		mailSession.setDebug(sessionDebug);
		try{
			
			Message msg= new MimeMessage(mailSession);
		msg.setFrom(new InternetAddress(from));
		InternetAddress[] address = {new InternetAddress(to)};
		msg.setRecipients(Message.RecipientType.TO, address);
		msg.setSubject(subject);
		msg.setContent(messageText, "text/html"); // use setText if you want to send text
		
		Transport transport;
		 transport = mailSession.getTransport("smtp");
		transport.connect(host, user, pass);
		
		transport.sendMessage(msg, msg.getAllRecipients());
		//WasEmailSent = true; // assume it was sent
		transport.close();}
		catch (Exception err) {
		out.print(err);
		}
%>
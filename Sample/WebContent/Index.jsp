<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.sql.*"%>
    
    <!-- hellogddgndgndgndgn -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 try {
	 
	    Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vapplications","root","vidya");
		Statement st = con.createStatement();
        int c = st.executeUpdate("create table sample(name varchar(10), mobile int(10))");

		 if(c==0)
  		{

			 System.out.println("table created");
  		}
		 else
  		{
  			System.out.println("table not created");
  			
  		}
  		con.close();
  		st.close();
  		
  		}catch(Exception e)
  		{
  			System.out.println(e);
  		}
%>
  
</body>
</html>
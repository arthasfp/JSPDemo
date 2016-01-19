<html>
<head>
    <title>Student Confirmation Title</title>
</head>

<body>

The student is confirmed: ${param.firstName} ${param.lastName}
<br/>
<br/>
<ul>
<%
String[] langs = request.getParameterValues("favoriteLanguage");
for(String temp : langs){
out.println("<li>" + temp + "</li>");}
%>
</ul>

</form>

</body>
</html>
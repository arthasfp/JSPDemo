<html>
<body>
<jsp:include page="my-header.html"/>

<br/> <br/>

Request user agent: <%= request.getHeader("User-Agent") %>

<br/> <br/>

Request language: <%= request.getLocale() %>

<br/> <br/>

<jsp:include page="my-footer.jsp"/>


</body>
</html>
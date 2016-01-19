<%@ page import="java.util.*" %>

<html>
<head>
   <!-- Step 1 : Create HTML form -->
   <form action="todo-demo.jsp">
   Add new item:<intup type="text" name="theItem"/>

   <input type="submit" value="Submit" />
   </form>
   <!-- Step 2 : Add new item to "to do" list -->

   <%
    List <String> items = (List<String>) session.getAttribute("myToDoList");
    if(items == null){
    items = new ArrayList<String>();
    session.setAttribute("myToDoList", items);
    }

    String theItem = request.getParameter("theItem");
       if(theItem != null) {
        items.add(theItem);
       }
   %>

   <!-- Step 3 : Display all "to do items" from session -->
  <hr/>
  <b>To List Items:</b>
  <br/>
  <ol>
  <%
    for (String temp: items){
    out.println("<li>" + temp + "</li>");}
  %>
  </ol>




</body>
</html>
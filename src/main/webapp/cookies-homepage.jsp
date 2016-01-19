<html>
<body>

<h3>Training portal</h3>

<%
String favLang = "Java";

Cookie[] theCookies = request.getCookies();

if(theCookies != null){
    for(Cookie tempCookie: theCookies){
         if("myApp.favoriteLanguage".equals(tempCookie.getName())){
         favLang = tempCookie.getValue();
         break;
         }
    }
}

%>
<h4>New Books for <%= favLang %></h4>
     <ul>
     <li>Blah blah blah</li>
     <li>Blah blah blah</li>
     </ul>
<h4>Latest News Reports for <%= favLang %></h4>
     <ul>
     <li>Blah blah blah</li>
     <li>Blah blah blah</li>
     </ul>
 <h4>Hot Jobs for <%= favLang %></h4>
     <ul>
     <li>Blah blah blah</li>
     <li>Blah blah blah</li>
     </ul>
</body>
</html>
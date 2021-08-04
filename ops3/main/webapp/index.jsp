<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>Darren Test</title></head>
<body>
<h1>Darren Test</h1>
<%
String text = request.getParameter("userinput");
pageContext.setAttribute("text", text); // needed for JSTL to access var
%>
	

<p>1: Not Encoded: <%=text%></p>        
	

<p>2: Not Encoded: ${text}</p>      
<p>3: JSTL Encoded: <c:out value="${pageScope.text}"/></p>
<p>4: JSTL/Scriptlet Encoded: <c:out value="<%=text%>"/></p>
<p>5: JSTL Encoded: <c:out value="${pageScope.text}" escapeXml="true"/></p>
<p>6: JSTL/Scriptlet Encoded: <c:out value="<%=text%>" escapeXml="true"/></p>
	

<p>7: JSTL Not Encoded: <c:out value="${pageScope.text}" escapeXml="false"/></p>        
<p>8: JSTL/Scriptlet Not Encoded: <c:out value="<%=text%>" escapeXml="false"/></p>      
</body>
</html>

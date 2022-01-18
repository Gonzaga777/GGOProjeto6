<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Exemplo da Aula -->
<%!
	String today(){
		java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		return dt.format(new java.util.Date());
}
%>

	<c:set var="variavel" value="Primeira página JSP utilizando JSTL"/> 
	<c:out value="${variavel}"/>
	<c:set var="formatar" value="true"/>
	<c:set var="d1" value="<%=new java.util.Date() %>"/>
	<h1>A data de hoje é: <c:out value="${d1}"></c:out></h1>
	<h1>A data de hoje é: <fmt:formatDate pattern ="yyyy-mm-ss" value = "${d1}"/> </h1>
	<c:if test="${formatar == true }">
		<p>Variável formatar = <c:out value="${formatar}"/></p>
	</c:if>	
	<h1>A data de hoje é: <c:choose>
							<c:when test = "${formatar == true }">
								<c:out value="<%=today() %>"/> <!-- ou gerar um arquivo. tld -->
								</c:when>
								<c:otherwise>
									<:out value="${d1}"/>
								</c:otherwise>
						</c:choose>	</h1>
<!-- Fim Exemplo da Aula -->
<!-- Exemplo de Bootstrap -->
<form>
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text"></div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Senha</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  
  </div>
  <button type="submit" class="btn btn-primary">Enviar</button>
</form>


<!-- Fim do exemplo Bootstrap -->
<!-- Exemplo de JSTL = C:URL  -->
 <a href = "<c:url value = "https://github.com/Gonzaga777/GGOProjeto6"/>"style="border">GIT</a>

	
</body>
</html>
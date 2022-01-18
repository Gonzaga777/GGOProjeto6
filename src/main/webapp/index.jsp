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
<p>Link do Meu Git e Uso do C:URL </p>
 <a href = "<c:url value = "https://github.com/Gonzaga777/GGOProjeto6"/>"style="border">GIT</a>
<!-- Exemplo de JSTL = C:URL  -->
<!-- Exemplo de JSTL = C:CHOOSE  -->
<c:set var = "idade" scope = "session" value = "${20}"/>
      <p>Sua idade eh : <c:out value = "${idade}"/></p>
      <c:choose>
         
         <c:when test = "${idade <= 18}">
           Você é um Jovem.
         </c:when>
         
         <c:when test = "${idade > 18}">
            Você é um Adulto
         </c:when>
         <c:when test = "${idade > 45}">
            Você está em uma Idade Avançada.
         </c:when>
         
         <c:otherwise>
            Você ja viveu bastante.
         </c:otherwise>
      </c:choose>
      <!-- Fim do Exemplo de JSTL = C:CHOOSE  -->
      <br>
      
   <!--Exemplo de JSTL = C:IF  -->   
   <c:set var = "dividas" scope = "session" value = "${3000}"/>
      <c:if test = "${dividas < 2000}">
         <p>Sua Divida esta sobre controle<c:out value = "${dividas}"/><p>
      </c:if>
      <c:if test = "${dividas > 2000}">
         <p>Seu Nome Vai Pro SPC e Serasa , voce deve :<c:out value = "${dividas}"/><p>
      </c:if>
      <!-- FIM DO Exemplo de JSTL = C:IF  --> 
      <br>
      
    <!--Exemplo de JSTL = C:OUT  --> 
      <c:out value = "${'Uso do C:OUT'}"/>
      <!--Fim do Exemplo de JSTL = C:OUT  --> 
      <br>
      
      <!--Exemplo de JSTL = C:SET  -->
      <p>Mostrando o ANO Vigente com C:SET</p>
      <c:set var = "DataHoje" scope = "session" value = "${2022}"/>
      <c:out value = "${DataHoje}"/>
      <!-- Fim do Exemplo de JSTL = C:SET  -->
      <br>
      
</body>
</html>
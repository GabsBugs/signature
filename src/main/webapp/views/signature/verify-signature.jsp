<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Verificar Assinatura</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div class="container">
  <h2>Verificar Assinatura</h2>
  <form action="${pageContext.request.contextPath}/signature/verify" method="post">
    <label for="message">Mensagem:</label>
    <textarea id="message" name="message" rows="4" cols="50" required></textarea><br><br>
    <label for="signature">Assinatura:</label>
    <input type="text" id="signature" name="signature" required><br><br>
    <input type="submit" value="Verificar Assinatura">
  </form>
  <c:if test="${not empty verificationResult}">
    <p>Resultado: ${verificationResult ? 'Válida' : 'Inválida'}</p>
  </c:if>
  <a href="${pageContext.request.contextPath}/">Voltar</a>
</div>
</body>
</html>
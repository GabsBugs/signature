<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Enviar Mensagem</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div class="container">
    <h2>Enviar Mensagem</h2>
    <form action="${pageContext.request.contextPath}/signature/sign" method="post">
        <label for="message">Mensagem:</label>
        <textarea id="message" name="message" rows="4" cols="50" required></textarea><br><br>
        <input type="submit" value="Assinar Mensagem">
    </form>
    <a href="${pageContext.request.contextPath}/">Voltar</a>
</div>
</body>
</html>
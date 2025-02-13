<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Visualizar Mensagens</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<div class="container">
    <h2>Mensagens Enviadas</h2>
    <c:if test="${not empty messages}">
        <ul>
            <c:forEach var="message" items="${messages}">
                <li>
                    <strong>Mensagem:</strong> ${message.content}<br>
                    <strong>Assinatura:</strong> ${message.signature}
                </li>
            </c:forEach>
        </ul>
    </c:if>
    <c:if test="${empty messages}">
        <p>Nenhuma mensagem encontrada.</p>
    </c:if>
    <a href="${pageContext.request.contextPath}/">Voltar</a>
</div>
</body>
</html>
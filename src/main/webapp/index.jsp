<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignaTrust - Digital Signature</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="${pageContext.request.contextPath}/js/script.js" defer></script>
</head>
<body>
<header class="header">
    <div class="logo-container">
        <img src="${pageContext.request.contextPath}/images/logo-sign.webp" alt="SignaTrust Logo" class="logo">
        <h1 class="company-name">SignaTrust</h1>
    </div>
    <nav class="nav-menu">
        <ul>
            <li><a href="<c:url value='/'/>"> <i class="fas fa-home"></i> Home</a></li>
            <li><a href="<c:url value='views/signature/send-message.jsp'/>"><i class="fas fa-paper-plane"></i>Enviar Mensagem</a></li>
            <li><a href="<c:url value='views/signature/view-messages.jsp'/>"><i class="fas fa-envelope-open-text"></i>Visualizar Mensagens</a></li>
            <li><a href="<c:url value='views/signature/verify-signature.jsp'/>"><i class="fas fa-check-circle"></i>Verificar Assinatura</a></li>
        </ul>
    </nav>

    <button class="menu-toggle" aria-label="Abrir menu">
        <i class="fas fa-bars"></i>
    </button>

</header>

<div class="container">
    <h2>Digital Signature</h2>
    <p>Escolha uma das opções abaixo para começar:</p>
    <div class="options">
        <!-- Opção 1: Enviar Mensagem -->
        <div class="option-card">
            <h3>Enviar Mensagem</h3>
            <p>Digite uma mensagem e assine digitalmente para garantir sua autenticidade.</p>
            <a href="<c:url value='views/signature/send-message.jsp'/>">Enviar Mensagem</a>
        </div>
        <!-- Opção 2: Visualizar Mensagens -->
        <div class="option-card">
            <h3>Visualizar Mensagens</h3>
            <p>Veja todas as mensagens já enviadas e suas assinaturas.</p>
            <a href="<c:url value='views/signature/view-messages.jsp'/>">Visualizar Mensagens</a>
        </div>
        <!-- Opção 3: Verificar Assinatura -->
        <div class="option-card">
            <h3>Verificar Assinatura</h3>
            <p>Descriptografe e verifique se uma assinatura digital é válida.</p>
            <a href="<c:url value='views/signature/verify-signature.jsp'/>">Verificar Assinatura</a>
        </div>
    </div>
</div>
</body>
</html>

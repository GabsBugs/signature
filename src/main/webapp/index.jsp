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
<div class="top-bar">
    <div class="language-selector">
        <div class="language-switcher">
            <span class="globe-emoji">🌐</span>
            <span class="selected-language">English</span>
            <span class="arrow-icon" style="font-size: 12px;"><i class="fa fa-chevron-down"></i></span>
        </div>
        <ul class="language-dropdown">
            <li data-value="en">English</li>
            <li data-value="pt">Português</li>
            <li data-value="es">Español</li>
            <li data-value="de">Deutsch</li>
            <li data-value="fr">Français</li>
            <li data-value="ja">日本語</li>
            <li data-value="ru">Русский</li>
        </ul>
    </div>
    <div class="dark-mode-toggle" style="padding: 0 15px;">
        <label for="dark-mode-switch" data-key="darkMode">Dark Mode</label>
        <input type="checkbox" id="dark-mode-switch">
    </div>
    <div class="help-support" style="padding: 0 15px;">
        <a href="<c:url value='/help'/>" data-key="help">Help</a>
    </div>
</div>
<header class="header">
    <div class="logo-container">
        <img src="${pageContext.request.contextPath}/images/logo-sign.webp" alt="SignaTrust Logo" class="logo">
        <h1 class="company-name">SignaTrust</h1>
    </div>
    <nav class="nav-menu">
        <ul>
            <li><a href="<c:url value='/'/>"> <i class="fas fa-home"></i> Home</a></li>
            <li><a href="<c:url value='views/signature/send-message.jsp'/>" data-key="SendMessage">Send Message</a></li>
            <li><a href="<c:url value='views/signature/view-messages.jsp'/>" data-key="ViewMessages">View Messages</a></li>
            <li><a href="<c:url value='views/signature/verify-signature.jsp'/>" data-key="VerifySignature">Verify Signature</a></li>
        </ul>
    </nav>

    <button class="menu-toggle" aria-label="Abrir menu">
        <i class="fas fa-bars"></i>
    </button>

</header>

<div class="container">
    <h2 style="color:  rgb(38, 6, 93);" data-key="welcome"> Welcome to SignaTrust!</h2>
    <p style="color:  rgb(38, 6, 93);" data-key="description">Choose an option below to get started.</p>
    <div class="options">
        <!-- Option 1: Send Message -->
        <div class="option-card">
            <h3 data-key="SendMessageCardH3">Send Message</h3>
            <p data-key="SendMessageCardP">Type a message and digitally sign it to ensure its authenticity.</p>
            <a href="<c:url value='views/signature/send-message.jsp'/>"  data-key="SendMessageCardA" >Send Message</a>
        </div>
        <!-- Option 2: View Messages -->
        <div class="option-card">
            <h3 data-key="ViewMessagesH3">View Messages</h3>
            <p data-key="ViewMessagesP">See all messages already sent and their signatures.</p>
            <a href="<c:url value='views/signature/view-messages.jsp'/>" data-key="ViewMessagesA">View Messages</a>
        </div>
        <!-- Option 3: Verify Signature -->
        <div class="option-card">
            <h3 data-key="VerifySignatureH3">Verify Signature</h3>
            <p data-key="VerifySignatureP">Decrypt and verify that a digital signature is valid.</p>
            <a href="<c:url value='views/signature/verify-signature.jsp'/>" data-key="VerifySignatureA">Verify Signature</a>
        </div>
    </div>
</div>
</body>
</html>

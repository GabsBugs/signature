package com.signapp.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/signature/verify")
public class VerifySignatureServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Obtém a mensagem e a assinatura do formulário
        String message = req.getParameter("message");
        String signature = req.getParameter("signature");

        // Verifica se a assinatura é válida
        boolean isValid = verifySignature(message, signature);

        // Define o resultado da verificação como um atributo da requisição
        req.setAttribute("verificationResult", isValid);

        // Encaminha a requisição para a página JSP
        req.getRequestDispatcher("/WEB-INF/views/signature/verify-signature.jsp").forward(req, resp);
    }

    private boolean verifySignature(String message, String signature) {
        // Implemente a lógica de verificação da assinatura aqui
        // Verifica se a assinatura começa com "assinatura-"
        return signature != null && signature.startsWith("assinatura-");
    }
}
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
        // Gets the form message and signature
        String message = req.getParameter("message");
        String signature = req.getParameter("signature");

        // Checks if the signature is valid
        boolean isValid = verifySignature(message, signature);

        // Defines the verification result as an attribute of the request
        req.setAttribute("verificationResult", isValid);

        // Forwards the request to the JSP page
        req.getRequestDispatcher("/WEB-INF/views/signature/verify-signature.jsp").forward(req, resp);
    }

    private boolean verifySignature(String message, String signature) {
        return signature != null && signature.startsWith("assinatura-");
    }
}
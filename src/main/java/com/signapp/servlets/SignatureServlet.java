package com.signapp.servlets;

//Importando servlet
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.security.*;
import java.util.Base64;

@WebServlet("/signature/sign")
public class SignatureServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html;charset=UTF-8");

        String message = req.getParameter("message");
        String Base64Signature = "";

        try {
            // Generate a pair of keys (public and private)
            KeyPair keyPair = generateKeyPair();

            // Create a signature object using the private key
            Signature signature = Signature.getInstance("SHA256withRSA");
            PrivateKey privateKey = keyPair.getPrivate();
            PublicKey publicKey = keyPair.getPublic();
            signature.initSign(privateKey);
            signature.update(message.getBytes());

            // Generate the digital signature
            byte[] signature_ = signature.sign();
            Base64Signature = Base64.getEncoder().encodeToString(signature_);

            // Check Signature
            signature.initVerify(keyPair.getPublic());
            signature.update(message.getBytes());
            boolean checked= signature.verify(signature_);

            // Exibir resultados
            resp.getWriter().println("<h3>Digitally Signed Message:</h3>");
            resp.getWriter().println("<p>Message: " + message + "</p>");
            resp.getWriter().println("<p>Signature: " + Base64Signature + "</p>");
            resp.getWriter().println("<p>Signature Verification: " + checked + "</p>");

/*
            resp.getWriter().println(privateKey);
            resp.getWriter().println(publicKey);
*/

        } catch (NoSuchAlgorithmException | InvalidKeyException | SignatureException e) {
            resp.getWriter().println("<p> Error when digitally signing: " + e.getMessage() + "</p>");
        }
    }

    // Method to generate a pair of keys (public and private)
    private KeyPair generateKeyPair() throws NoSuchAlgorithmException {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
        keyPairGenerator.initialize(2048);
        return keyPairGenerator.generateKeyPair();
    }
}

package com.signapp.servlets;

//Importando servlet

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.security.*;
import java.util.Base64;

@WebServlet("/assinatura")
public class AssinaturaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setContentType("text/html;charset=UTF-8");

        String mensagem = req.getParameter("mensagem");
        String assinaturaBase64 = "";

        try {
            // Gerar um par de chaves (pública e privada)
            KeyPair keyPair = generateKeyPair();

            // Criar um objeto de assinatura usando a chave privada
            Signature signature = Signature.getInstance("SHA256withRSA");
            PrivateKey privateKey = keyPair.getPrivate();
            signature.initSign(privateKey);
            signature.update(mensagem.getBytes());

            // Gerar a assinatura digital
            byte[] assinatura = signature.sign();
            assinaturaBase64 = Base64.getEncoder().encodeToString(assinatura);

            // Verificar a assinatura
            signature.initVerify(keyPair.getPublic());
            signature.update(mensagem.getBytes());
            boolean verificado = signature.verify(assinatura);

            // Exibir resultados
            resp.getWriter().println("<h3>Mensagem Assinada Digitalmente:</h3>");
            resp.getWriter().println("<p>Mensagem: " + mensagem + "</p>");
            resp.getWriter().println("<p>Assinatura: " + assinaturaBase64 + "</p>");
            resp.getWriter().println("<p>Verificação da Assinatura: " + verificado + "</p>");

        } catch (NoSuchAlgorithmException | InvalidKeyException | SignatureException e) {
            resp.getWriter().println("<p>Erro ao assinar digitalmente: " + e.getMessage() + "</p>");
        }
    }

    // Método para gerar um par de chaves (pública e privada)
    private KeyPair generateKeyPair() throws NoSuchAlgorithmException {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
        keyPairGenerator.initialize(2048);
        return keyPairGenerator.generateKeyPair();
    }
}

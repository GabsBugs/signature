package com.signapp.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/signature/messages")
public class ViewMessagesServlet extends HttpServlet {

    // Simulação de uma lista de mensagens (banco de dados)
    private List<Message> messages = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Adiciona algumas mensagens de exemplo (apenas para teste)
        if (messages.isEmpty()) {
            messages.add(new Message("Olá, mundo!", "assinatura-123"));
            messages.add(new Message("Teste de assinatura digital", "assinatura-456"));
        }

        // Define a lista de mensagens como um atributo da requisição
        req.setAttribute("messages", messages);

        // Encaminha a requisição para a página JSP
        req.getRequestDispatcher("/WEB-INF/views/signature/view-messages.jsp").forward(req, resp);
    }
}

// Classe auxiliar para representar uma mensagem
class Message {
    private String content;
    private String signature;

    public Message(String content, String signature) {
        this.content = content;
        this.signature = signature;
    }

    public String getContent() {
        return content;
    }

    public String getSignature() {
        return signature;
    }
}
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

    // List of messages (database)
    private List<Message> messages = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Add some example messages (for testing only)
        if (messages.isEmpty()) {
            messages.add(new Message("Olá, mundo!", "assinatura-123"));
            messages.add(new Message("Teste de assinatura digital", "assinatura-456"));
        }

        // Defines the list of messages as an attribute of the request
        req.setAttribute("messages", messages);

        // Forwards the request to the JSP page
        req.getRequestDispatcher("/WEB-INF/views/signature/view-messages.jsp").forward(req, resp);
    }
}

// Helper class to represent a message
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
package com.example.exercise_jakarta2.Servlet;

import com.example.exercise_jakarta2.Class.Person;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.*;

@WebServlet(name = "listePersonnesServlet", value = "/liste")
public class ListPersonServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        List<Person> personnes = List.of(
                new Person("Tata", "AH", 30),
                new Person("Toto", "AHH", 25),
                new Person("Titi", "AHHH", 40)
        );

        req.setAttribute("listePersonnes", personnes);
        req.setAttribute("pageTitle", "Liste des personnes");

        getServletContext().getRequestDispatcher("/list.jsp").forward(req, resp);
    }
}

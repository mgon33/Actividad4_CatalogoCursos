package org.cuatrovientos;

import org.cuatrovientos.modelo.Curso;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/catalogo")
public class CatalogoServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Curso> listaCursos = new ArrayList<>();
        listaCursos.add(new Curso(1, "Desarrollo Web con Java", 15, 20, "Programación"));
        listaCursos.add(new Curso(2, "Diseño de Interfaces", 20, 20, "Diseño")); // Curso lleno
        listaCursos.add(new Curso(3, "Bases de Datos SQL", 10, 25, "Datos"));
        listaCursos.add(new Curso(4, "Introducción a Spring Boot", 5, 15, "Programación"));
        listaCursos.add(new Curso(5, "Administración de Servidores", 28, 30, "Sistemas"));

        request.setAttribute("cursos", listaCursos);
        
        request.getRequestDispatcher("/WEB-INF/views/catalogo.jsp").forward(request, response);
    }
}

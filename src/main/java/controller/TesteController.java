package controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/TesteController")
public class TesteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String oprt = request.getParameter("oprt");
		
		switch (oprt) {
		case "iniciar":
			iniciar(request, response);
			break;

		default:
			parar(request, response);
			break;
		}
	}

	private void parar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final int palavras = 75;
		double tInicio = Double.parseDouble(request.getParameter("tInicio"));
		double diff = (System.currentTimeMillis() - tInicio)/60000.0;
		
		request.setAttribute("ppm", palavras/diff);
		RequestDispatcher dispatcher = request.getRequestDispatcher("./resultado.jsp");
		dispatcher.forward(request, response);
	}

	private void iniciar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		request.setAttribute("iniciar", true);
		request.setAttribute("tInicio", System.currentTimeMillis());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("./index.jsp");
		dispatcher.forward(request, response);
	}
}

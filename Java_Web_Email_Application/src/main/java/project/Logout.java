package project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Logout() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html");
//		PrintWriter out=response.getWriter();
//		request.getSession().invalidate();
//		session.removeAttribute("email");
//		
		HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttribute("email");
            session.invalidate();
        }        
        request.getRequestDispatcher("index.jsp").forward(request, response);
//      response.sendRedirect("index.jsp");
		System.out.print("successfully log out");
//		request.getRequestDispatcher("index.jsp").include(request, response);
//		out.close();
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

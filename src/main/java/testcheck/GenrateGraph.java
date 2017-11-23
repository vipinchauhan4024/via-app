package testcheck;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GenrateGraph
 */
public class GenrateGraph extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    /**
     * Default constructor. 
     */
    public GenrateGraph() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*doGet(request, response);*/
	    final Logger LOGGER = Logger.getLogger(GenrateGraph.class.getName());
		String input=request.getParameter("output");
		System.out.println(input);
		System.out.println(request.getContextPath());
		
		GenerateAllPaterns gap = new GenerateAllPaterns();
		
		String s[]= new String[] {input};
		System.out.println("**"+getServletContext().getContextPath());
		String graph=gap.testmaincall(s);
		System.out.println("Final Return "+ graph);
		request.setAttribute("message", graph);
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length >0) {
		    response.addCookie(cookies[0]);
		    response.addHeader("Proxy-Connection", "Keep-Alive");
		    LOGGER.log(Level.SEVERE, "cookie..."+ cookies[0]);
		}
	    
        request.getRequestDispatcher("/page2dynamic").forward(request, response);
	}

}

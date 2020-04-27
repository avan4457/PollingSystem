package polling.Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import polling.Models.User;
import polling.Services.IuserServices;
import polling.Services.UserServices;

/**
 * Servlet implementation class AddUserServlet
 */
@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserServlet() {
        super();
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
		
		response.setContentType("text/html");
		
		User user = new User(); //Creating new user object
		String msg = "Register now!";
		
		//Getting attribute values through the request and using set methods to assign them to the object
		user.setName(request.getParameter("name")); 
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		user.setPhoneNumber(request.getParameter("phone"));
		user.setGender(request.getParameter("gender"));
		user.setNic(request.getParameter("nic"));
		
		IuserServices iuserservices = new UserServices();//Creating interface object and assigning it with new userServices object 
		
		if(!(iuserservices.CheckEmailExists(user))){
		iuserservices.RegisterUser(user); //Executing RegisterUser method to add the new user
		msg = "Registration Successful";
		}
		else{
			msg = "Email Already in use,Try again";			
		}
		request.setAttribute("msg", msg);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/index.jsp"); // Include returning view
		dispatcher.forward(request, response);
		
	}
}	


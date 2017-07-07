package com.servlet;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Address;
import com.user.Student;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public RegistrationServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Student student = new Student();
		student.setEmail(request.getParameter("email"));
		student.setFirstName(request.getParameter("firstName"));
		student.setLastName(request.getParameter("lastName"));
		student.setPassword(request.getParameter("password"));
		student.setSchoolName("Claim Academy");
		Address a = new Address();
		a.setStreet(request.getParameter("street"));
		a.setCity(request.getParameter("city"));
		a.setState(request.getParameter("street"));
		a.setZipCode(request.getParameter("zipCode"));
		student.setAddress(a);
		
		//This is how we save to a file. Put this into a method with two parameters: student & filename.txt to call so you don't have to write it every time.
		String fileName = "C:\\Users\\Joelle.Fronzaglio\\Documents\\GhostWriter\\student.txt";
		
		try(BufferedWriter bw = new BufferedWriter(new FileWriter(fileName))){
			bw.write(student.toString());
			System.out.println("all Good here.");
		}catch(IOException e) {
			
		}
		
		HttpSession session = request.getSession(true);
		session.setAttribute("student", student);
		
		RequestDispatcher rs = request.getRequestDispatcher("account.jsp");
		rs.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}

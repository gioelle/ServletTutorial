package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Course;
import com.user.Student;
import com.user.WeekDay;

/**
 * Servlet implementation class SchedulerServlet
 */
@WebServlet("/SchedulerServlet")
public class SchedulerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SchedulerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String courseName = request.getParameter("courseName");
		String professor = request.getParameter("professor");
		String[] weekdays = request.getParameterValues("weekday");
		ArrayList<WeekDay> occurances = null;
		
		for(int i = 0; i<weekdays.length; i++) {
			if(weekdays[i].equals(WeekDay.MONDAY.toString())) {
				occurances.add(i, WeekDay.MONDAY);
			} else if(weekdays[i].equals(WeekDay.TUESDAY.toString())) {
				occurances.add(i, WeekDay.TUESDAY);
			} else if(weekdays[i].equals(WeekDay.WEDNESDAY.toString())) {
				occurances.add(i, WeekDay.WEDNESDAY);
			} else if(weekdays[i].equals(WeekDay.THURSDAY.toString())) {
				occurances.add(i, WeekDay.THURSDAY);
			} else if(weekdays[i].equals(WeekDay.FRIDAY.toString())){
				occurances.add(i, WeekDay.FRIDAY);
			}
		}
		
		String time = request.getParameter("time");
		String roomNumber = request.getParameter("roomNumber");
		String startDate = request.getParameter("startDate");
		
		HttpSession session = request.getSession(true);
		Course course = (Course)session.getAttribute("course");
		session.setAttribute("course", course);
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

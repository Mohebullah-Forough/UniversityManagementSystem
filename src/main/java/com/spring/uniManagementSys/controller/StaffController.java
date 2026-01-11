package com.spring.uniManagementSys.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.uniManagementSys.entity.Course;
import com.spring.uniManagementSys.entity.CsStudentMarks;
import com.spring.uniManagementSys.entity.Event;
import com.spring.uniManagementSys.entity.Student;
import com.spring.uniManagementSys.entity.Teacher;
import com.spring.uniManagementSys.service.CourseAssignmentService;
import com.spring.uniManagementSys.service.CourseService;
import com.spring.uniManagementSys.service.EventService;
import com.spring.uniManagementSys.service.StudentService;
import com.spring.uniManagementSys.service.TeacherService;

@Controller
@RequestMapping("/staffs")
public class StaffController {
	
	
	@Autowired
	private StudentService studentService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private EventService eventService;
	@Autowired
	private TeacherService teacherSerivce;
	@Autowired
	private CourseAssignmentService courseAssignmentSerivce;
	
	
	//==========================================
	/*
	 * below is list of all controllers
	 * used for student operations 
	 * in staff controller
	 */
	//==========================================
	@GetMapping("/staff")
	public String staffPage(Model md)
	{
		md.addAttribute("title", "Staff");
		return "personalStaff/staff";
	}
	
	@GetMapping("/updatePassword")
	public String updatePasswordPage(Model md)
	{
		md.addAttribute("title","Update Staff Password");
		return "login/staffLogin/updatePassword";
	}
	
	@GetMapping("/staffProfile")
	public String staffProfilePage(Model md) {
		md.addAttribute("title","Staff Profile");
		return "personalStaff/staffProfile";
	}
	
	@GetMapping("/addStudent")
	public String addStudent(Model md) {
		md.addAttribute("title","Register Student");
		return "personalStaff/addStudent";
	}
	
	@PostMapping("/registerStudent")
	public String registerStudent(@ModelAttribute Student student,Model md)
	{
		studentService.createStudent(student);
		md.addAttribute("title","Student Register");
		return "success";
	}
	
	@GetMapping("/editStudent/{id}")
	public String editStudent(@PathVariable("id") Long id ,Model md)
	{
		Student student = studentService.searchStudentById(id);
		
		md.addAttribute("title","Edit Student");
		md.addAttribute("student",student);
		
		return "personalStaff/editStudent";
	}
	
	@PostMapping("/updateStudent")
	public String updateStudent(@ModelAttribute Student student, Model md)
	{
		studentService.updateStudent(student);
		md.addAttribute("title","Student Update");
		return "update";
	}
	
	@GetMapping("/csStudentMarks")
	public String csStudentMarksPage(Model md)
	{
		md.addAttribute("title","Adding Marks");
		return "personalStaff/csStudentMarks";
		
	}
	
	@GetMapping("/viewStudents")
	public ModelAndView viewStudent()
	{
		List<Student> students = studentService.getAllStudents();
		
		ModelAndView model = new ModelAndView();
		model.addObject("students", students);
		model.addObject("title","View All Students");
		model.setViewName("personalStaff/viewStudents");
		return model;
	}
	
	
	
	@GetMapping("/deleteStudent/{id}")
	public String deleteStudent(@PathVariable("id") Long id ,Model md)
	{
		studentService.deleteStudent(id);
		md.addAttribute("title","Delete Student");
		
		return "personalStaff/deleteStudent";
	}
	
	@GetMapping("/printResultSheet")
	public String printResult(Model md) {
		md.addAttribute("title","Print Result Sheet");
		return "personalStaff/printResult";
	}
	
	
	@PostMapping("/searchCsStudentById")
	public String searchingCsStudentById(@RequestParam("id") long id, Model md)
	{
		String pageName = null;
		Student st = studentService.searchStudentById(id);
		String department = st.getDepartment();
		md.addAttribute("student", st);
		md.addAttribute("title","Makrs");
		
		if (department.equals("Computer Science"))
		{
			pageName =   "personalStaff/csStudentMarks";
		}
		else if(department.equals("Engineering"))
		{
			pageName = "personalStaff/engStudentMarks";
		}
		else if(department.equals("Business"))
		{
			pageName = "personalStaff/businessStudentMarks";
		}
		else if(department.equals("Mathematics"))
		{
			pageName = "personalStaff/mathStudentMarks";
		}
		else if(department.equals("Physics"))
		{
			pageName = "personalStaff/phyStudentMarks";
		}
		
		
		return pageName;
		
	}
	
	@PostMapping("/printResultSheetsearchById")
	public String printResultSheetsearchById(@RequestParam("id") long id, Model md)
	{
		
		Student st = studentService.searchStudentById(id);
		List<CsStudentMarks> csStudentMarks = studentService.getCsStudentMarks(id);
		
		md.addAttribute("student", st);
		md.addAttribute("csMarks", csStudentMarks);
		md.addAttribute("title","Makrs");
		return "personalStaff/printResult";
		
	}
	
	@PostMapping("/saveCsStudentMarks")
	public String saveCsStudentMarks(@ModelAttribute CsStudentMarks csStudentMarks,@RequestParam("studentId") long studentId, Model md) {
		
		studentService.saveCsStudentMarks(csStudentMarks,studentId);
		md.addAttribute("title","Saved");
		return "success";
	}
	
	
	//===================================
	/*
	 * list of all controllers used for course
	 * like (add course, update course, delete course, view course and assign a course to a teacher
	 */
	//===================================
	
	@GetMapping("/addCourse")
	public String addCourse(Model md)
	{
		
		md.addAttribute("title","Add Course");
		return "personalStaff/course/addCourse";
	}
	
	@PostMapping("/registerCourse")
	public String registerCourse(@ModelAttribute Course course,Model md)
	{
		courseService.createCourse(course);
		md.addAttribute("title","Register");
		return "redirect:/staffs/viewCourse";
	}
	
	@GetMapping("/viewCourse")
	public String viewCourse(Model md)
	{
		List<Course> listOfCourses = courseService.getAllCourses();
		md.addAttribute("courses",listOfCourses);
		md.addAttribute("title","View Course");
		return "personalStaff/course/viewCourse";
	}
	
	@GetMapping("/editCourse/{courseId}")
	public String editCourse(@PathVariable("courseId") Long id ,Model md)
	{
		Course courseInformation = courseService.searchCourseById(id);
		md.addAttribute("courseInfo", courseInformation);
		md.addAttribute("title","Edit Course");
		return "personalStaff/course/editCourse";
	}
	
	@PostMapping("/updateCourse")
	public String updateCourse(@ModelAttribute Course course, Model md)
	{
		courseService.updateCourse(course);
		md.addAttribute("title","Update");
		return "personalStaff/course/update";
	}
	
	@GetMapping("/deleteCourse/{courseId}")
	public String deleteCourse(@PathVariable("courseId") Long id)
	{
		courseService.deleteCourse(id);
		return "redirect:/staffs/viewCourse";
	}
	
	@GetMapping("/assignFacultyToCourse")
	public String assignFacultyToCourse(Model md)
	{
		List<Teacher> teachers = teacherSerivce.getAllTeachers();
		List<Course> courses = courseService.getAllCourses();
		md.addAttribute("allTeachers",teachers);
		md.addAttribute("allCourses",courses);
		md.addAttribute("title","Assign Faculty");
		return "personalStaff/course/assignFacultyToCourse";
	}
	@PostMapping("/assignCourse")
	public String assignCourse(@RequestParam("teacherId") Long teacherId, @RequestParam("courseId") Long courseId)
	{
		courseAssignmentSerivce.assignCourseToTeacher(teacherId, courseId);		
		return "redirect:/staffs/viewCourse";
	}
	
	  
	
	//=====================================
	/*
	 * list of methods for event operation
	 * here are the list of methods we perform operations
	 * on the event like (add, edit, delete or view )
	 */
	//=====================================
	
	@GetMapping("/addEvent")
	public String addEvent(Model md)
	{
		md.addAttribute("title","Add Event");
		return "personalStaff/event/addEvent";
	}
	
	@PostMapping("/createEvent")
	public String createEvent(@ModelAttribute Event event, Model md)
	{
		eventService.createEvent(event);
		md.addAttribute("title","Add Event");
		return "redirect:/staffs/viewEvent";
	}
	
	@GetMapping("/viewEvent")
	public String viewEvent(Model md)
	{
		List<Event> listOfEvents = eventService.getAllEvents();
		md.addAttribute("eventList", listOfEvents);
		md.addAttribute("title","View Events");
		return "personalStaff/event/viewEvents";
	}
	
	@GetMapping("/deleteEvent/{eventId}")
	public String deleteEvent(@PathVariable("eventId") long id) {
		eventService.deleteEvent(id);
		return "redirect:/staffs/viewEvent";
		
	}
	
	@GetMapping("/editEvent/{eventId}")
	public String editEvent(@PathVariable("eventId") long id, Model md)
	{
		Event event = eventService.getEventById(id);
		md.addAttribute("event",event);
		md.addAttribute("title","Edit Event");
		return "personalStaff/event/editEvent";
	}
	
	@PostMapping("/updateEvent")
	public String updateEvent(@ModelAttribute Event event, Model md)
	{
		eventService.updateEvent(event);
		return "redirect:/staffs/viewEvent";
	}
	
	
	
	//=================================
	/*
	 * list of methods for teacher 
	 * we can (add, view, edit or delete teacher)
	 */
	//=================================
	
	@GetMapping("/addTeacher")
	public String addTeacher(Model md)
	{
		md.addAttribute("title","Register Teacher");
		return "personalStaff/teacher/addTeacher";
	}
	@PostMapping("/createTeacher")
	public String createTeacher(@ModelAttribute Teacher teacher, Model md)
	{
		teacherSerivce.addTeacher(teacher);
		return "personalStaff/teacher/success";
	}
	
	@GetMapping("/viewTeacher")
	public String viewTeacher(Model md)
	{
		List<Teacher> listOfTeachers = teacherSerivce.getAllTeachers();
		md.addAttribute("teachers",listOfTeachers);
		md.addAttribute("title","View Teachers");
		return "personalStaff/teacher/viewTeacher";
	}
	@GetMapping("/deleteTeacher/{teacherId}")
	public String deleteTeacher(@PathVariable("teacherId") long id)
	{
		teacherSerivce.deleteTeacher(id);
		return "redirect:/staffs/viewTeacher";
	}
	
	@GetMapping("/editTeacher/{teacherId}")
	public String editTeacher(@PathVariable("teacherId")long id,Model md)
	{
		Teacher teacherData = teacherSerivce.getTeacherById(id);
		md.addAttribute("teacher",teacherData);
		md.addAttribute("title","Edit Teacher");
		return "personalStaff/teacher/editTeacher";
	}
	@PostMapping("/updateTeacher")
	public String updateTeacher(@ModelAttribute Teacher teacher)
	{
		teacherSerivce.updateTeacher(teacher);
		return "redirect:/staffs/viewTeacher";
	}


}

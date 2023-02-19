package com.klef.jfsd.sdp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.weaver.NewFieldTypeMunger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.AllocateCourse;
import com.klef.jfsd.sdp.model.CourseRegistration;
import com.klef.jfsd.sdp.model.Faculty;
import com.klef.jfsd.sdp.model.Student;
import com.klef.jfsd.sdp.service.AdminService;
import com.klef.jfsd.sdp.service.CourseRegistrationService;
import com.klef.jfsd.sdp.service.FacultyService;
import com.klef.jfsd.sdp.service.StudentService;

@Controller
public class ClientController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private FacultyService facultyService;
	
	@Autowired
	private StudentService studentService;
	
	
	
	@GetMapping("/")
	public String mainhomedemo()
	{
		return "index";
	}
	
	@GetMapping("/adminhome")
	public String adminhomedemo()
	{
		return "adminhome";
	}
	
	@GetMapping("/studenthome")
	public String studenthomedemo()
	{
		return "studenthome";
	}
	
	@GetMapping("/facultyhome")
	public String facultyhomedemo()
	{
		return "facultyhome";
	}
	
	@GetMapping("about")
	public String aboutusdemo()
	{
		return "about";
	}
	
	@GetMapping("contact")
	
	public String contactusdemo()
	{
		return "contact";
	}
	
	@GetMapping("/adminlogin")
	public ModelAndView adminlogindemo()
	{
		ModelAndView mv=new ModelAndView("adminlogin");
		return mv;
	}
	
	@GetMapping("/facultylogin")
	public ModelAndView facultylogindemo()
	{
		ModelAndView mv=new ModelAndView("facultylogin");
		return mv;
	}
	
	@GetMapping("/viewallfaculty")
	public ModelAndView viewallfacultydemo()
	{
		ModelAndView mv=new ModelAndView("viewallfaculty");
		List<Faculty> facultylist=adminService.viewallfaculty();
		mv.addObject("facultylist", facultylist);
		return mv;
	}
	
	@GetMapping("/deletefaculty")
	public String deletefacultydemo(@RequestParam("facultyid") int facultyid)
	{
		adminService.deletefaculty(facultyid);
		return "redirect:viewallfaculty";
	}
	
	
	@GetMapping("/viewallstudents")
	public ModelAndView viewallstudentsdemo()
	{
		ModelAndView mv= new ModelAndView("viewallstudents");
		List<Student> studentlist=adminService.viewallstudents();
		mv.addObject("studentlist", studentlist);
		return mv;
	}
	
	@GetMapping("/viewallcourses")
	public ModelAndView viewallscoursesdemo()
	{
		ModelAndView mv= new ModelAndView("viewallcourses");
		List<AllocateCourse> courselist=studentService.viewallcourses();
		mv.addObject("courselist", courselist);
		return mv;
	}
	
	
	
	@GetMapping("/studentlogin")
	public ModelAndView studentlogindemo()
	{
		ModelAndView mv=new ModelAndView("studentlogin");
		return mv;
	}
	
	@GetMapping("/addfaculty")
	public ModelAndView addfacultydemo()
	{
		ModelAndView mv=new ModelAndView("addfaculty","faculty",new Faculty());
		return mv;
		
	}
	
	@GetMapping("/addstudent")
	public ModelAndView addstudentdemo()
	{
		ModelAndView mv=new ModelAndView("addstudent","student",new Student());
		
		return mv;
	}
	
	@GetMapping("/courseregister")
	public ModelAndView courseregistrationdemo()
	{
		ModelAndView mv=new ModelAndView("courseregister","coursereg",new CourseRegistration());
		return mv;
	}
	
	@GetMapping("/allocatecourse")
	public ModelAndView allocatecoursedemo()
	{
		ModelAndView mv=new ModelAndView("allocatecourse","allocateCourse",new AllocateCourse());
		List<Faculty> facultylist=adminService.viewallfaculty();
		mv.addObject("facultylist",facultylist);
		return mv;
		
	}
	
	@GetMapping("/changefacultypwd")
	public ModelAndView changefacpwddemo(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		String funame=(String)session.getAttribute("funame");
		
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("changefacultypwd");
		mv.addObject("funame", funame);
		return mv;
	}
	
	@PostMapping("/updatefacultypwd")
	public ModelAndView updatefacultypwddemo(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("changefacultypwd");
		
		String funame=(String)session.getAttribute("funame");
		String fopwd=request.getParameter("fopwd");
		String fnpwd=request.getParameter("fnpwd");
		
		System.out.println(funame);
		System.out.println(fopwd);
		System.out.println(fnpwd);
		int n=facultyService.changefacultypwd(fnpwd, fopwd, funame);
		
		if(n>0)
		{
			mv.addObject("msg","Passsword Updated Successfully");
		}
		
		else
		{
			mv.addObject("msg", "Old Password Incorrect");
		}
		
		return mv;
	}
	
	@GetMapping("/changestudentpwd")
	public ModelAndView changestupwddemo(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		String suname=(String)session.getAttribute("suname");
		
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("changestudentpwd");
		mv.addObject("suname", suname);
		return mv;
	}
	
	@GetMapping("/viewallocatedcourses")
	public ModelAndView viewallocatedcourses(HttpServletRequest request) 
	{
		HttpSession session=request.getSession();
		int fid=(int)session.getAttribute("fid");
		List<AllocateCourse> courselist=facultyService.viewallocatedcourses(fid);
		ModelAndView mv=new ModelAndView("viewallocatedcourses");
		mv.addObject("courselist",courselist);
		System.out.println(fid);
		return mv;
	}
	
	@GetMapping("viewregisteredstudents")
	public ModelAndView viewregisteredstudentsdemo(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		int fid=(int)session.getAttribute("fid");
		List<CourseRegistration> stulist=facultyService.viewregisteredstudents(fid);
		ModelAndView mv= new ModelAndView("viewregisteredstudents");
		mv.addObject("studentlist",stulist);
		return mv;
	}
	
	@PostMapping("/updatestudentpwd")
	public ModelAndView updatestudentpwddemo(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("changestudentpwd");
		
		String suname=(String)session.getAttribute("suname");
		String sopwd=request.getParameter("sopwd");
		String snpwd=request.getParameter("snpwd");
		
		System.out.println(suname);
		System.out.println(sopwd);
		System.out.println(snpwd);
		int n=studentService.changestudentpwd(snpwd, sopwd, suname);
		
		if(n>0)
		{
			mv.addObject("msg","Passsword Updated Successfully");
		}
		
		else
		{
			mv.addObject("msg", "Old Password Incorrect");
		}
		
		return mv;
	}
	
	
	
	@PostMapping("/checkadminlogin")
	public ModelAndView  checkadmminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		
		String auname=request.getParameter("auname");
		String apwd=request.getParameter("apwd");
		
		Admin admin=adminService.checkadminlogin(auname, apwd);
		
		
		if(admin!=null)
		{
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	
	
	
	@PostMapping("/addstudentrecord")
	public ModelAndView addstudentdemo(@ModelAttribute("student") Student student)
	{
		adminService.addstudent(student);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addstudent");
		mv.addObject("msg","student Added successfully");
		
		return mv;
	}
	
	@PostMapping("/courseregistration")
	public ModelAndView courseregdemo(@ModelAttribute("coursereg") CourseRegistration courseregistration)
	{
		CourseRegistration cs=studentService.registerstudent(courseregistration);
		ModelAndView mv=new ModelAndView();
		
		if(cs==null)
		{
		mv.setViewName("courseregister");
		mv.addObject("msg","Registered for this course successfully");
		
		}
		else
			
		{
			mv.setViewName("courseregister");
			mv.addObject("msg","ALready registered !!");
		}
		return mv;
	}
	
	@PostMapping("/addfacultyrecord")
	public ModelAndView addfacultydemo(@ModelAttribute("faculty") Faculty faculty)
	{
		adminService.addfaculty(faculty);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("addfaculty");
		mv.addObject("msg","faculty Added successfully");
		
		return mv;
	}
	
	@PostMapping("/allocatefacultycourse")
	public ModelAndView allocatefacultycoursedemo(@ModelAttribute("allocateCourse") AllocateCourse allocateCourse)
	{
		adminService.allocatecourse(allocateCourse);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("allocatecourse");
		mv.addObject("msg","Course Allocated successfully");
		
		return mv;
	}
	
	
	@PostMapping("/checkfacultylogin")
	public ModelAndView  checkemplogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		
		String funame=request.getParameter("funame");
		String fpwd=request.getParameter("fpwd");
		
		Faculty fac= facultyService.checkfacultylogin(funame, fpwd);
		
		
		if(fac!=null)
		{
			HttpSession  session = request.getSession();
			session.setAttribute("funame", funame);
			session.setAttribute("fid", fac.getFacultyid());
			
			mv.setViewName("facultyhome");
		}
		else
		{
			mv.setViewName("facultylogin");
			mv.addObject("msg","Login Failed");
		}
		return mv;
	}
	
	@GetMapping("viewfaculty")
	
	public ModelAndView viewfacultydemo(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		String funame=(String)session.getAttribute("funame");
		Faculty faculty=facultyService.viewfaculty(funame);
		facultyService.viewfaculty(funame);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewfaculty");
		mv.addObject("faculty", faculty);
		return mv;
	}
	
	@PostMapping("/checkstudentlogin")
	public ModelAndView checkstudentlogindemo(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String suname=request.getParameter("suname");
		String spwd=request.getParameter("spwd");
		
		Student stu= studentService.checkstudentlogin(suname, spwd);
		
		if(stu!=null)
		{
			HttpSession session=request.getSession();
			session.setAttribute("suname", suname);
			mv.setViewName("studenthome");
			
		}
		
		else
		{
			mv.setViewName("studentlogin");
			mv.addObject("msg", "Login Failed");
		}
		
		return mv;
		
	}
	
@GetMapping("/viewstudent")
	
	public ModelAndView viewstudentdemo(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		String suname=(String)session.getAttribute("suname");
		Student student=studentService.viewstudent(suname);
		studentService.viewstudent(suname);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewstudent");
		mv.addObject("student", student);
		return mv;
	}
}

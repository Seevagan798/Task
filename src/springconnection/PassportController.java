package springconnection;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller

@RequestMapping(value="/login")

public class PassportController {
	private Logger logger = Logger.getLogger(PassportController.class);
	
@Autowired
private PassportDAO_Impl passportdao_impl;

@RequestMapping(value="/task",method=RequestMethod.GET)
public String login2(Map<String,Object>model)
{
	logger.info("opened");
	logger.error("stoped");
	logger.warn("verified");
	logger.fatal("continue");
	logger.debug("no error");
	Openpage op=new Openpage();
	System.out.println("Logined");
	model.put("Passportobj",op);
	return "servicerequired";
	
}

@RequestMapping(value="/past",method=RequestMethod.POST)
public ModelAndView insertOpenpage(@Valid @ModelAttribute("Passportobj") Openpage op )
{
	logger.info("loaded");
	System.out.println("insert suceefully");
	passportdao_impl.insertOpenpage(op);
	return new ModelAndView("redirect:/login/page1");
	
}
@RequestMapping(value="/page1",method=RequestMethod.GET)
public String loginmethod1(Map<String,Object>model)
{
	logger.info("sucees");
	Applicant ap =new Applicant();
	System.out.println("logined");
	model.put("Passportobj",ap);
	return "Applicant";
	
}
@RequestMapping(value="/add",method=RequestMethod.POST)
public ModelAndView insertApplicant(@Valid @ModelAttribute("Passportobj") Applicant ap)
{
	System.out.println("insert complicant method");
	passportdao_impl.insertApplicant(ap);
	return new ModelAndView("redirect:/login/insert");
	
}
@RequestMapping(value="/insert",method=RequestMethod.GET)
public String loginmethod(Map<String,Object>model)
{
	Family fm = new Family();
     System.out.println("logined");
	model.put("Passportobj",fm);
	return "family";
	
}
@RequestMapping(value="/page2",method=RequestMethod.POST)
public String insertFamily(@Valid @ModelAttribute("Passportobj") Family fm){
	System.out.println("Insert sucessfully");
	passportdao_impl.insertFamily(fm);
	return "final";
	
}
@RequestMapping(value = "/view", method=RequestMethod.GET)
public String viewId(ModelMap model)
{
    int ps= passportdao_impl.viewId();
    model.addAttribute("view",ps);
    return "final";
   
}
}


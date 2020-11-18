package loginconnection;

import java.util.Map;



import javax.validation.Valid;

 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("/log")
public class LoginController {
    
    @Autowired
    private LoginDAO_Impl logindao;
    
    
     @RequestMapping(value="/sign", method=RequestMethod.GET)
     public String show(Map<String,Object> model)
     {
         Register i=new Register();
         model.put("reg",i);
         return "Register";
     }
     
     @RequestMapping(value="/insert", method=RequestMethod.POST)
     public ModelAndView insert(@Valid @ModelAttribute("reg") Register i,BindingResult result)
        {
         
         if(result.hasErrors())
         {
             return new ModelAndView("reg");
         }
         logindao.insert(i);
         
         return new ModelAndView("redirect:/log/login");
        }
     
     @RequestMapping(value="/login",method = RequestMethod.GET)
        public String showLogin(Model model) 
        {
            System.out.println("loging ");
            model.addAttribute("Login", new Login());
            return "Login";
        }
     
     @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
        public ModelAndView formsubmit(@Valid @ModelAttribute("Login")Login login, BindingResult br, Model model)
        {
            System.out.println("checking");
            ModelAndView view = new ModelAndView("Login");
            if (!br.hasFieldErrors()) 
            {
                if (!logindao.authenticateUser(login)) {
                    br.addError(new ObjectError("err", "Invalid Credentials"));
                    
                } 
                else 
                {
                    
                    view.setViewName("redirect:/login/task");
                }
            }
            return view;
        }

 

}
 
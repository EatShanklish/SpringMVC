
package com.Shanklish.Lab25Controller;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController 
{
    @RequestMapping("/welcome")
    public ModelAndView helloWorld()
    {
	return new ModelAndView("welcome","message","hola world");
    }
 
    @RequestMapping("/newuser")
    public ModelAndView helloSpring()
    {
	return new ModelAndView("newuser","command",new User());
    }
    
    	@RequestMapping(value = "/submitUser", method = RequestMethod.POST)
	public String showUser(@Valid @ModelAttribute("command") User user, BindingResult bindingResult, Model model) 
    	{
		if (bindingResult.hasErrors()) 		   
			return "newuser";
		    
		
		model.addAttribute("name", user.getName());
		model.addAttribute("age", user.getAge());
		return "DisplayUser";
    	}
}
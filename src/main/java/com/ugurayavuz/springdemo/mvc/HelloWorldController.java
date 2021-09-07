package com.ugurayavuz.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("hello")
public class HelloWorldController {

    //need a controller method to show the initial HTML form
    @RequestMapping("/showForm")  //sub mapping
    public String showForm(){
        return "helloworld-form";
    } // /WEB-INF/view/helloworld-form.jsp
    @RequestMapping("/processForm") //sub mapping
    public String processForm(){
        return "helloworld";
    }

    @RequestMapping("/processFormV2")
    public String letsShout(HttpServletRequest request, Model model){
        // read the request parameter from the HTML form
        String theName = request.getParameter("studentName");

        // convert the data to all caps
        theName = theName.toUpperCase();

        // create the message
        String result = "Yo! " + theName;

        // add message to the model
        model.addAttribute("message", result);

        return "helloworld";
    }

    @RequestMapping("/processFormV3")
    public String processFormV3(@RequestParam("studentName") String theName, Model model){
        // now we can use the variable theName which has the studentName with @RequestParam
        String result = "Hello my friend from V3 " + theName;
        model.addAttribute("message", result);
        return "helloworld";
    }
}

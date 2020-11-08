package web;

import domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.UserService;

import javax.servlet.http.HttpServletRequest;
@Controller
public class UserController {
    private UserService userService;

    @Autowired
    public void setUserService(UserService userService){
        this.userService = userService;
    }
    @RequestMapping(value = "/index.html")
    public String tologin()
    {
        return "login";
    }
    @RequestMapping(value = "/login")
    public ModelAndView login(HttpServletRequest request, User user){
        boolean isValidUser=userService.Match(user.getUsername(),user.getPassword());
        if (isValidUser){
            request.getSession().setAttribute("User",user.getUsername()+":登录成功");
            return new ModelAndView("success");
        }else{
            return new ModelAndView("login");
        }
    }
    @RequestMapping("/insert")
    public String InsertUser(User user, Model model){
        userService.InsertUser(user.getUsername(),user.getPassword());
        model.addAttribute("Insert","注册成功");
        return "success1";
    }
    @RequestMapping("/insertPage")
    public String InsertPage()
    {
        return "register";
    }

}
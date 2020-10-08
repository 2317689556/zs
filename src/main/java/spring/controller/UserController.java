package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.service.UserService;
import spring.utils.SendSMSUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    UserService userService;

    /*登录*/
  /*  @RequestMapping("login")
    public String  login(GroupUser user, HttpSession session){
        GroupUser user1 = userService.login(user);
        System.out.println(user1);
        if(user1!=null){
            session.setAttribute("USER",user1);
            return "index";
        }else{
            return "login";
        }
    }*/






}

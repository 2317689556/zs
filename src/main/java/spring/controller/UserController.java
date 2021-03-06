package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import spring.pojo.ZsUser;
import spring.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;

    /*登录*/
    @RequestMapping("login")
    public String login(ZsUser user, HttpSession session) {
        ZsUser user1 = userService.login(user);
        System.out.println(user1);
        if (user1 != null) {
            session.setAttribute("USER", user1);
            return "index";
        }else {
            return "login";
        }
    }


    /*修改用户密码*/
    @RequestMapping("updatePass")
    public int updatePass(ZsUser zsUser){
        int i = userService.updatePass(zsUser);
        if (i!=0){
            return i;
        }else {
            return 0;
        }
    }


}
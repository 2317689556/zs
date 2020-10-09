package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import spring.service.UserService;
import javax.annotation.Resource;

//用户
@Controller
@RequestMapping("/school")
public class HschoolController {
    @Resource
    UserService userService;



   /* *//*用户管理__全查*//*
    @RequestMapping("HschoolFandAll")
    @ResponseBody
    public List<ZsHschool> userFandAll(Model m) {
        List<ZsHschool> school = userService.schoolFandAll();
        System.out.println(school);
        return school;
    }

    *//*用户管理__添加*//*
    @RequestMapping("addschool")
    @ResponseBody
    public boolean userAdd(ZsHschool school) {
        int i = userService.schoolAdd(school);
        return i > 0;
    }

    *//*用户管理__配合修改的单查*//*
    @RequestMapping("findUserById")
    @ResponseBody
    public User fandschoolbyId(ZsHschool school) {
        User i = userService.findschoolById(school);
        return i;
    }

    *//*用户管理__修改*//*
    @RequestMapping("updateUser")
    @ResponseBody
    public int updateUser(User user) {
        int i = userService.updateUser(user);
        return i;
    }

    *//*用户管理__删除*//*
    @RequestMapping("deleteUser")
    @ResponseBody
    public int deleteUser(Integer id) {
        int i = userService.deleteUser(id);
        return i;
    }

    *//*用户管理__备注修改*//*
    @RequestMapping("updateUserBZ")
    @ResponseBody
    public void updateUserBZ(Integer id, String remarks) {
        userService.updateUserBZ(id, remarks);
    }

    *//*日志__查询*//*
    @RequestMapping("Log")
    @ResponseBody
    public List<Log> Log(String a, String start, String stop) {
        List<Log> log = userService.Log(a, start, stop);
        return log;
    }

    *//*手机号验证*//*
    @RequestMapping("/telyanzheng")
    @ResponseBody
    public boolean phoneText(HttpSession session , tbUser su){

        int code = (int) ((Math.random()*9+1)*1000);

        String pCode =  String.valueOf(code);
        System.out.println(pCode);
        session.setAttribute("phoneCode",pCode);

        *//*发送短信*//*
        boolean sendMSM = SendSMSUtils.sendMSM(su.getTel(),String.valueOf(code) );
        return true;
    }

    *//*检验验证码*//*
    @RequestMapping("/yanzheng")
    @ResponseBody
    public boolean yanzheng(HttpSession session , tbUser su){

        String phoneCode= (String) session.getAttribute("phoneCode");

        if(phoneCode.equals(su.getPhoneText())) {
            return true;
        }else {
            return false;
        }
    }

    *//*查询id*//*
    @RequestMapping("findAllByIdName")
    public String findAllByIdName(Model model,String tel2){
      List<User> list = userService.findAllByIdName(tel2);
        model.addAttribute("list",list);
        model.addAttribute("list1", list.get(0));
        return "phone1";
    }

    *//*修改密码*//*
    @RequestMapping("upPwd")
    @ResponseBody
    public boolean upPwd(HttpSession session,String passWord,Integer id){

        tbUser user= (tbUser) session.getAttribute("USER_SESSION");
        System.out.println(id+passWord);
        int i = userService.upPwd(id,passWord);

        if(i>0) {
            return true;
        }else {
            return false;
        }
    }
*/
}

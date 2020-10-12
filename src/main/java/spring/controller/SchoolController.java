package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.pojo.ZsSchool;
import spring.pojo.ZsSyudy;
import spring.service.SchoolService;

import javax.annotation.Resource;
import java.util.List;

@RequestMapping("/school")
@Controller
public class SchoolController {
    @Resource
    private SchoolService schoolService;


    //学习中心管理
    @RequestMapping("/showSchoolenter")
    @ResponseBody
    public List<ZsSchool> showSchoolenter(){
        List<ZsSchool> list = schoolService.showSchoolenter();
        return list;
    }


    //学习中心用户管理
    @ResponseBody
    @RequestMapping("/showSchoolUser")
    public List<ZsSyudy> showSchoolUser(){
        List<ZsSyudy> list = schoolService.showSchoolUser();
        return list;
    }

    //添加学习中心用户
    @RequestMapping("/addSchoolUser")
    @ResponseBody
    public boolean addSchoolUser(ZsSyudy zsSyudy){
        int i = schoolService.addSchoolUser(zsSyudy);
        if (i>0){
            return true;
        }
        return false;
    }

    //编辑用户查询
    @RequestMapping("/editSchoolUser")
    @ResponseBody
    public ZsSyudy editSchoolUser(Integer id){
        ZsSyudy zsSyudy = schoolService.editSchoolUser(id);
        return zsSyudy;
    }

    //修改用户
    @ResponseBody
    @RequestMapping("/UpdateSchoolUser")
    public int UpdateSchoolUser(ZsSyudy zsSyudy){
        int i = schoolService.UpdateSchoolUser(zsSyudy);
        return i;
    }

    //删除用户
    @RequestMapping("/deleteSchoolUser")
    @ResponseBody
    public int deleteSchoolUser(Integer id){
        int i = schoolService.deleteSchoolUser(id);
        return i;
    }

    //重置密码
    @RequestMapping("/changePassword")
    public String changePassword(ZsSyudy zsSyudy){
        int i = schoolService.changePassword(zsSyudy);

        return "redirect:/jsps/JG/schoolUserManage.jsp";

    }
}

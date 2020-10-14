package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.pojo.ZsRegion;
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

    //删除学习中心
    @RequestMapping("/delSchoolCenter")
    @ResponseBody
    public int delSchoolCenter(Integer id){

        int i = schoolService.delSchoolCenter(id);
        return i;
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


    /*省的查询*/
    @RequestMapping("/shengAll")
    @ResponseBody
    public List<ZsRegion> shengAll() {
        List<ZsRegion> list = schoolService.shengAll();
        return list;
    }

    /*市的查询*/
    @RequestMapping("/shiAll")
    @ResponseBody
    public List<ZsRegion> shiAll(Integer pid) {
        List<ZsRegion> list = schoolService.shiAll(pid);
        return list;
    }



    /*课程进修生授权*/
    @RequestMapping("engageFandAll")
    @ResponseBody
    public List<ZsSchool> engageFandAll() {
        List<ZsSchool> list = schoolService.engageFandAll();
        System.out.println(list);
        return list;
    }


    /*课程进修是否授权*/
    @RequestMapping("updatewschool")
    @ResponseBody
    public int updatewschool(Integer id) {
        int i = schoolService.updatewschool(id);
        System.out.println(id);
        return i;
    }

}

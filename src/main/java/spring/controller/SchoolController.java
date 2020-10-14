package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.pojo.ZsRegion;
import spring.pojo.ZsSchool;
import spring.pojo.ZsSupports;
import spring.pojo.ZsSyudy;
import spring.service.SchoolService;

import javax.annotation.Resource;
import java.util.ArrayList;
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

    //添加学习中心
    @RequestMapping("/schoolAdd")
    public String schoolAdd(ZsSchool zsSchool, ZsSyudy zsSyudy, ZsSupports zsSupports){

        System.out.println(zsSchool);

        /*学习中心表的添加*/
        List<ZsSchool> list1 = new ArrayList<ZsSchool>();
            ZsSchool school = new ZsSchool();
            school.setSlAreaId(zsSchool.getSlAreaId());//省份
            school.setSlSchoolName(zsSchool.getSlSchoolName());//学习中心全称
            school.setSlNumber(zsSchool.getSlNumber());//学习中心编号
            school.setSlOuterName(zsSchool.getSlOuterName());//校外学习中心全称
            school.setSlDistrictId(zsSchool.getSlDistrictId());//区域管理中心
            school.setSlState(zsSchool.getSlState());//状态
            school.setSlStartTime(school.getSlStartTime());//审批通过时间
            school.setSlApproval(school.getSlApproval());//批文号
            list1.add(school);
            /*schoolService.schoolAdd(list1);*/

            /*学习中心用户表的添加*/
        List<ZsSyudy> list2 = new ArrayList<ZsSyudy>();
            ZsSyudy syudy = new ZsSyudy();
            syudy.setSyAddress(zsSyudy.getSyAddress());//联系地址
            syudy.setSyName(zsSyudy.getSyName());//负责人姓名
            syudy.setSyPhone(zsSyudy.getSyPhone());//负责人电话
            syudy.setSyEmail(zsSyudy.getSyEmail());//负责人邮箱
            syudy.setSyUsername(zsSyudy.getSyUsername());//账号
            syudy.setSyPassword(zsSyudy.getSyPassword());//密码
            list2.add(syudy);
            /*schoolService.syudyAdd(list2);*/

            /*依托单位表的添加*/
        List<ZsSupports> list3 = new ArrayList<ZsSupports>();
            ZsSupports supports = new ZsSupports();
            supports.setSsName(zsSupports.getSsName());//依托单位名称
            supports.setSsNature(zsSupports.getSsNature());//依托单位信息
            supports.setSsCode(zsSupports.getSsCode());//依托单位法人代码
            list3.add(supports);

            schoolService.schoolAdd(list1,list2,list3);
            return "JG/school";
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

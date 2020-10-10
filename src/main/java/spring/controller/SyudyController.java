package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import spring.pojo.ZsRegion;
import spring.pojo.ZsSchool;
import spring.pojo.ZsSyudy;
import spring.pojo.ZsregionVo;
import spring.service.SyudyService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/syudy")
public class SyudyController {

    @Resource
    SyudyService syudyService;

    /*查询学习中心用户*//*
    @RequestMapping("examineSyudy")
    public List<ZsSyudy> examineSyudy() {
        List<ZsSyudy> zsSyudies = syudyService.examineSyudy();
        return zsSyudies;
    }

    *//*添加学习中心用户*//*
    public int addSyudy(ZsSyudy zsSyudy){
        int i = syudyService.addSyudy(zsSyudy);
        return i;
    }

    *//*修改学习中心用户*//*
    public int updateSyudy(ZsSyudy zsSyudy){
        int i = syudyService.updateSyudy(zsSyudy);
        return i;
    }

    *//*根据id查询地址*//*
    @RequestMapping("getzsRegion")
    public ZsregionVo getzsRegion(String id) {
        ZsregionVo zsRegion = syudyService.getzsRegion(Integer.valueOf(id));
        return zsRegion;
    }

    *//*查询学习中心*//*
    @RequestMapping("examineSchool")
    public List<ZsSchool> examineSchool() {
        List<ZsSchool> zsSyudies = syudyService.examineSchool();
        return zsSyudies;
    }

    *//*添加学习中心*//*
    @RequestMapping("addSchool")
    public int addSchool(ZsSchool zsSchool) {
        int i = syudyService.addSchool(zsSchool);
        return i;
    }

    *//*根据id修改学习中心*//*
    @RequestMapping("updateSchool")
    public int updateSchool(ZsSchool zsSchool){
        int i = syudyService.updateSchool(zsSchool);
        return i;
    }
*/

}
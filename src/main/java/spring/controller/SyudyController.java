package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.pojo.*;
import spring.service.SyudyService;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    /*用户名检测*/
    @RequestMapping("nameFindByName")
    @ResponseBody
    public Map<String,Object> nameFindByName(String syUsername){
        Map<String,Object> map=new HashMap<String, Object>();
        System.out.println(syUsername);
        Integer name = syudyService.nameFindByName(syUsername);

        if(name !=0){
            map.put("name",name);
            map.put("msg","error");
        }else{
            map.put("msg","suc");
        }
        return map;
    }

    /*区域管理查询*/
    @RequestMapping("quyuAll")
    @ResponseBody
    public List<ZsAddress> quyuAll(){
        List<ZsAddress> list = syudyService.quyuAll();
        System.out.println(list);
        return list;
    }
}
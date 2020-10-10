package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.pojo.ZsHschool;
import spring.service.HschoolService;
import javax.annotation.Resource;
import java.util.List;

//用户
@Controller
@RequestMapping("/hschool")
public class HschoolController {
    @Autowired
    private  HschoolService hschoolService;

   //*高校__全查*//*
    @RequestMapping("HschoolFandAll")
    @ResponseBody
    public List<ZsHschool> hschoolFandAll(Model m) {
        List<ZsHschool> hschool = hschoolService.hschoolFandAll();
        System.out.println(hschool);
        return hschool;
    }

    /*高校__删除*/
    @RequestMapping("deleteHschool")
    @ResponseBody
    public int deleteHschool(Integer id) {
        int i = hschoolService.deleteHschool(id);
        return i;
    }


    /*高校 管理__配合修改的单查*/
    @RequestMapping("findHschoolById")
    @ResponseBody
    public ZsHschool findHschoolById(ZsHschool hschool) {
        ZsHschool i = hschoolService.findHschoolById(hschool);
        return i;
    }

    /*高校管理__修改*/
    @RequestMapping("updatehschool")
    @ResponseBody
    public int updatehschool(ZsHschool hschool) {
        int i = hschoolService.updatehschool(hschool);
        return i;
    }


    /*高校管理__添加*/
    @RequestMapping("addHschool")
    @ResponseBody
    public boolean addHschool(ZsHschool hschool) {
        int i = hschoolService.addHschool(hschool);
        return i > 0;
    }
    /*提交注释*/
}

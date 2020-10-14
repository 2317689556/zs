package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.pojo.ZsEnroll;
import spring.service.WZsenrollService;

import java.util.List;

//用户
@Controller
@RequestMapping("/wZcenroll")
public class WZsenrollController {
    @Autowired
    private WZsenrollService wenrollService;

   //*学习中心管理全查*//*
    @RequestMapping("wZcenrollFandAll")
    @ResponseBody
    public List<ZsEnroll> hschoolFandAll() {
        List<ZsEnroll> list = wenrollService.whschoolFandAll();
        System.out.println(list);
        return list;
    }


    /*学习中心修改是否允许招生*/
    /*不允许 updatewschool*/
    @RequestMapping("updatewZcenroll2")
    @ResponseBody
    public int updatewZcenroll2(Integer id) {
        int i = wenrollService.updatewZcenroll2(id);
        return i;
    }
}

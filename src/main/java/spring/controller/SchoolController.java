package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.pojo.ZsDot;
import spring.pojo.ZsSchool;
import spring.service.SchoolService;

import javax.annotation.Resource;
import java.util.List;

@RequestMapping("/school")
@Controller
public class SchoolController {
    @Resource
    private SchoolService schoolService;

    @RequestMapping("/showSchoolenter")
    @ResponseBody
    public List<ZsSchool> showSchoolenter(){
        List<ZsSchool> list = schoolService.showSchoolenter();
        return list;
    }

    /*JG-surgicalDrape.jsp----机构信息管理---报名点信息查询*/
    @RequestMapping("surgicalDrape")
    @ResponseBody
    public List<ZsDot> surgicalDrape(){
        List<ZsDot> list=schoolService.surgicalDrape();
        for (ZsDot dd:list){
            System.out.println(dd);
        }
        return list;
    }
}

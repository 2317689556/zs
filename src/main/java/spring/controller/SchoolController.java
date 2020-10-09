package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
}

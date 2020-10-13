package spring.controller;

import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.pojo.Params;
import spring.pojo.ZsStudent;
import spring.pojo.ZsUser;
import spring.service.StudentService;
import spring.utils.TemplateExcelUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Resource
    private StudentService studentService;

    @RequestMapping("/showIdentity")
    @ResponseBody
    public PageInfo<ZsStudent> showIdentity(Params params) {
        PageInfo<ZsStudent> pageInfo = studentService.showIdentity(params);
        return pageInfo;
    }



    @ResponseBody
    @RequestMapping("/outIdentity")
    public List<ZsStudent> outIdentity(HttpSession session) {
        String temp = "IdentityTemp.xlsx";

        ZsUser zsUser = (ZsUser) session.getAttribute("USER");

        temp = session.getServletContext().getRealPath("/template") + File.separator + temp;
        //目标路径
        String target = "D:" + File.separator + "enrollment_management" + File.separator + "identity"+File.separator+"IdentityTemp"+System.currentTimeMillis()+".xslx";
        List<ZsStudent> list = studentService.outIdentity();

        String[] params  = new String[2];
        params[0]=zsUser.getuName();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        params[1]=sdf.format(new Date());

        List<String> tlist = strList();
        new TemplateExcelUtil().exportExcel(temp,target,params,tlist,list);

        return list;
    }

    private List<String> strList() {
        List<String> strings = new ArrayList<>();
        strings.add("id");
        strings.add("stName");
        strings.add("stIdcard");
        strings.add("stBirthday");
        strings.add("stSex");
        strings.add("stNation");
        strings.add("stOffice");
        strings.add("stEndTime");
        strings.add("stAddress");
        strings.add("stPhone");
        return strings;


   }
}

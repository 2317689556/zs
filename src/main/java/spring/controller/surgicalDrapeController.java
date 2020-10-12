package spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import spring.pojo.ZsDot;
import spring.pojo.ZsUser;
import spring.service.surgicalDrapeService;
import spring.utils.TemplateExcelUtil;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("surgicalDrape")
public class surgicalDrapeController {
    @Autowired
    surgicalDrapeService ss;

    @RequestMapping("surgicalDrapeTable")
    @ResponseBody
    public List<ZsDot> surgicalDrapeTable(){
        return ss.surgicalDrapeTable();
    }

    @RequestMapping("surgicalDrapeDaochu")
    @ResponseBody
    public boolean daochuSaomiao(HttpSession session){
        ZsUser user= (ZsUser) session.getAttribute("USER");
        //模板导出分页
        //目的路径
        String target="D:\\zhaosheng\\招生_"+System.currentTimeMillis()+".xlsx";
        //模板名称
        String temp="baomingdian.xlsx";
        temp=session.getServletContext().getRealPath("poi")+File.separator+temp;

        //参数列表
        String [] params=new String[1];
        params[0]=user.getuName();
        //导出数据的列表`
        List<ZsDot> list=ss.surgicalDrapeTable();
        for (ZsDot ll:list){
            if (ll.getDtState().equals("0")){
                ll.setDtState("禁用");
            }if (ll.getDtState().equals("1")){
                ll.setDtState("启用");
            }else {
                ll.setDtState("wtf");
            }
        }
        //excel表 列对应的javabean属性的集合
        List<String> propertyList=createPropertyList();
        TemplateExcelUtil export=new TemplateExcelUtil();
        export.exportExcel(temp, target, params, propertyList, list);
        return true;
    }
    public List<String> createPropertyList(){
        List<String> list=new ArrayList<>();
        list.add("dtNumber");
        list.add("dtName");
        list.add("scname");
        list.add("dtState");
        return list;
    }
}

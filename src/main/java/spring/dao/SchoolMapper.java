package spring.dao;

import spring.pojo.ZsDot;
import spring.pojo.ZsSchool;

import java.util.List;

public interface SchoolMapper {
    List<ZsSchool> showSchoolenter();

    /*JG-surgicalDrape.jsp----机构信息管理---报名点信息查询*/
    List<ZsDot> surgicalDrape();
}

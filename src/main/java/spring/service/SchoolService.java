package spring.service;

import org.springframework.stereotype.Service;
import spring.dao.SchoolMapper;
import spring.pojo.ZsDot;
import spring.pojo.ZsSchool;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SchoolService {
    @Resource
    SchoolMapper schoolMapper;

    public List<ZsSchool> showSchoolenter() {
        return schoolMapper.showSchoolenter();
    }

    /*JG-surgicalDrape.jsp----机构信息管理---报名点信息查询*/
    public List<ZsDot> surgicalDrape() { return schoolMapper.surgicalDrape();
    }
}

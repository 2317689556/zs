package spring.service;

import org.springframework.stereotype.Service;
import spring.dao.HschoolMapper;
import spring.dao.SchoolMapper;
import spring.pojo.ZsHschool;
import spring.pojo.ZsSchool;

import javax.annotation.Resource;
import java.util.List;

@Service
public class HschoolService {
    @Resource
    HschoolMapper hschoolMapper;

    /*高校全查*/
    public List<ZsHschool> hschoolFandAll() {
        return hschoolMapper.hschoolFandAll();
    }

    /*删除高校*/
    public int deleteHschool(Integer id) {
        return hschoolMapper.deleteHschool(id);
    }

    /*配合修改的单查*/
    public ZsHschool findHschoolById(ZsHschool hschool) {
        return hschoolMapper.findHschoolById(hschool);
    }


    /*高校管理__修改*/
    public int updatehschool(ZsHschool hschool) {
        return hschoolMapper.updatehschool(hschool);
    }

    public int addHschool(ZsHschool hschool) {
        return hschoolMapper.addHschool(hschool);
    }
}

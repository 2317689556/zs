package spring.service;

import org.springframework.stereotype.Service;
import spring.dao.SchoolMapper;
import spring.pojo.ZsSchool;
import spring.pojo.ZsSyudy;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SchoolService {
    @Resource
    SchoolMapper schoolMapper;

    public List<ZsSchool> showSchoolenter() {
        return schoolMapper.showSchoolenter();
    }

    public List<ZsSyudy> showSchoolUser() {
        return schoolMapper.showSchoolUser();
    }

    public int addSchoolUser(ZsSyudy zsSyudy) {
        return schoolMapper.addSchoolUser(zsSyudy);
    }
}

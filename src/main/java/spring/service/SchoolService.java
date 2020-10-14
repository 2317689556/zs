package spring.service;

import org.springframework.stereotype.Service;
import spring.dao.SchoolMapper;
import spring.pojo.ZsRegion;
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

    public ZsSyudy editSchoolUser(Integer id) {
        return schoolMapper.editSchoolUser(id);
    }

    public int UpdateSchoolUser(ZsSyudy zsSyudy) {
        return schoolMapper.UpdateSchoolUser(zsSyudy);
    }

    public int deleteSchoolUser(Integer id) {
        return schoolMapper.deleteSchoolUser(id);
    }

    public int changePassword(ZsSyudy zsSyudy) {
        return schoolMapper.changePassword(zsSyudy);
    }

    public int delSchoolCenter(Integer id) {
        return schoolMapper.delSchoolCenter(id);
    }

    /*省的查询*/
    public List<ZsRegion> shengAll() {
        return schoolMapper.shengAll();
    }

    /*市的查询*/
    public List<ZsRegion> shiAll(Integer pid) {
        return schoolMapper.shiAll(pid);
    }
}

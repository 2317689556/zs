package spring.dao;

import spring.pojo.ZsSchool;
import spring.pojo.ZsSyudy;

import java.util.List;

public interface SchoolMapper {
    //学习中心管理
    List<ZsSchool> showSchoolenter();

    //学习中心用户管理
    List<ZsSyudy> showSchoolUser();

    //添加学习中心用户
    int addSchoolUser(ZsSyudy zsSyudy);
}

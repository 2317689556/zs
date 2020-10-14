package spring.dao;

import spring.pojo.ZsRegion;
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

    //编辑查询
    ZsSyudy editSchoolUser(Integer id);

    //编辑用户
    int UpdateSchoolUser(ZsSyudy zsSyudy);

    //删除用户
    int deleteSchoolUser(Integer id);

    //重置密码
    int changePassword(ZsSyudy zsSyudy);

    //删除学习中心
    int delSchoolCenter(Integer id);

    /*省的查询*/
    List<ZsRegion> shengAll();

    /*市的查询*/
    List<ZsRegion> shiAll(Integer pid);

    /*课程进修生授权*/
    List<ZsSchool> engageFandAll();

    /*课程进修是否授权*/
    int updatewschool(Integer id);
}

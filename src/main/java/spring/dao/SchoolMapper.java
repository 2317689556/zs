package spring.dao;

import spring.pojo.ZsEnroll;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import spring.pojo.ZsRegion;
import spring.pojo.ZsSchool;
import spring.pojo.ZsSupports;
import spring.pojo.ZsSyudy;

import java.util.List;
@Repository
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
    /*学习中心的添加*/
    int schoolAdd(ZsSchool zsSchool);

    /*学习中心的添加*/
    void schoolAdd(@Param("list1") List<ZsSchool> list1);
    /*学习中心用户的添加*/
    void syudyAdd(@Param("list2") List<ZsSyudy> list2);
    /*依托单位表的添加*/
    void supportsAdd(@Param("list3") List<ZsSupports> list3);
}

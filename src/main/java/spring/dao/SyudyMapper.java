package spring.dao;

import spring.pojo.*;

import java.util.List;

public interface SyudyMapper {



    /*用户名检测*/
    Integer nameFindByName(String syUsername);

    /*区域管理查询*/
    List<ZsAddress> quyuAll();

    /*查询学习中心用户*//*
    List<ZsSyudy> examineSyudy();

    *//*根据id查询地址*//*
    ZsregionVo getzsRegion(int id);

    *//*查询学习中心*//*
    List<ZsSchool> examineSchool();

    *//*添加学习中心*//*
    int addSchool(ZsSchool zsSchool);

    *//*修改学习中心*//*
    int updateSchool(ZsSchool zsSchool);

    *//*添加学习中心用户*//*
    int addSyudy(ZsSyudy zsSyudy);

    *//*根据id修改学习中心用户*//*
    int updateSyudy(ZsSyudy zsSyudy);*/
}

package spring.dao;

import org.apache.ibatis.annotations.Param;
import spring.pojo.ZsHschool;

import java.util.List;

public interface HschoolMapper {

    /*高校全查*/
    List<ZsHschool> hschoolFandAll(@Param("hlNumber")String hlNumber, @Param("hlName")String hlName);

    /*删除高校*/
    int deleteHschool(@Param("id") Integer id);

    /*配合修改的高校单查*/
    ZsHschool findHschoolById(ZsHschool hschool);

    /*修改的高校*/
    int updatehschool(ZsHschool hschool);

    /*添加的高校*/
    int addHschool(ZsHschool hschool);

}



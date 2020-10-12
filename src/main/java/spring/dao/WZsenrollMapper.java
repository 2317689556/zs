package spring.dao;


import spring.pojo.ZsEnroll;

import java.util.List;

public interface WZsenrollMapper {

    //学习中心管理全查
    List<ZsEnroll> whschoolFandAll();

    //学习中心修改是否允许招生
    /*允许*/
    int updatewZcenroll(Integer id);

    //学习中心修改是否允许招生
    /*不允许*/
    int updatewZcenroll2(Integer id);


}



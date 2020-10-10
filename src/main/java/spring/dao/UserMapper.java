package spring.dao;

import spring.pojo.ZsUser;

public interface UserMapper {

    /*登录*/
    ZsUser login(ZsUser user);


    /*修改User*/
    int updateUser(ZsUser zsUser);

}

package spring.service;


import org.springframework.stereotype.Service;
import spring.dao.UserMapper;
import spring.pojo.ZsUser;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserService {
    @Resource
    UserMapper userMapper;

    /*登录*/
    public ZsUser login(ZsUser user) {
        return userMapper.login(user);
    }

    /*修改密码*/
    public int updatePass(ZsUser zsUser){
        int i = userMapper.updateUser(zsUser);
        return i;
    }




}

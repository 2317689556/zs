package spring.service;


import org.springframework.stereotype.Service;
import spring.dao.UserMapper;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserService {
    @Resource
    UserMapper userMapper;


    /*登录*/
   /* public GroupUser login(GroupUser user) {
        return userMapper.login(user);
    }*/
}

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

    public ZsUser login(ZsUser user) {
        /*登录*/
        return userMapper.login(user);
    }


}

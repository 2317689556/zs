package spring.service;

import org.springframework.stereotype.Service;
import spring.dao.WZsenrollMapper;
import spring.pojo.ZsEnroll;

import javax.annotation.Resource;
import java.util.List;

@Service
public class WZsenrollService {
    @Resource
    WZsenrollMapper wnrollMapper;



    /*学习中心管理全查*/
    public List<ZsEnroll> whschoolFandAll() {
        return wnrollMapper.whschoolFandAll();
    }


    //*学习中心修改是否允许招生*//*
    /*允许*/
    public int updatewZcenroll(Integer id) {
        return wnrollMapper.updatewZcenroll(id);
    }

    //*学习中心修改是否允许招生*//*
    /*不允许*/
    public int updatewZcenroll2(Integer id) {
        return wnrollMapper.updatewZcenroll2(id);
    }
}

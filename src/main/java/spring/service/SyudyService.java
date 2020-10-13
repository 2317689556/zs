package spring.service;

import org.springframework.stereotype.Service;
import spring.dao.SyudyMapper;
import spring.pojo.*;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SyudyService {

    @Resource
    SyudyMapper syudyMapper;

    public Integer nameFindByName(String syUsername) {
        return syudyMapper.nameFindByName(syUsername);
    }

    /*区域管理查询*/
    public List<ZsAddress> quyuAll() {
        return syudyMapper.quyuAll();
    }



    /*用户名检测*/
    



    /* *//*查询学习中心用户*//*
    public List<ZsSyudy> examineSyudy(){
        List<ZsSyudy> zsSyudies = syudyMapper.examineSyudy();
        return zsSyudies;
    }

    *//*根据id查询地址*//*
    public ZsregionVo getzsRegion(int id) {
        ZsregionVo zsRegion = syudyMapper.getzsRegion(id);
        return zsRegion;
    }

    *//*查询学习中心*//*
    public List<ZsSchool> examineSchool() {
        List<ZsSchool> zsSchools = syudyMapper.examineSchool();
        return zsSchools;
    }

    *//*添加学习中心*//*
    public int addSchool(ZsSchool zsSchool) {
        int i = syudyMapper.addSchool(zsSchool);
        return i;
    }

    *//*修改学习中心*//*
    public int updateSchool(ZsSchool zsSchool) {
        int i = syudyMapper.updateSchool(zsSchool);
        return i;
    }

    *//*添加学习中心用户*//*
    public int addSyudy(ZsSyudy zsSyudy) {
        int i = syudyMapper.addSyudy(zsSyudy);
        return i;
    }

    *//*根据id修改学习中心用户*//*
    public int updateSyudy(ZsSyudy zsSyudy) {
        int i = syudyMapper.updateSyudy(zsSyudy);
        return i;
    }*/
}

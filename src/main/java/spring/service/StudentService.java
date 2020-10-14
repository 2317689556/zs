package spring.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;
import spring.dao.StudentMapper;
import spring.pojo.Params;
import spring.pojo.ZsSchool;
import spring.pojo.ZsStudent;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentService {
    @Resource
    private StudentMapper studentMapper;

    public PageInfo<ZsStudent> showIdentity(Params params, String slSchoolName, String stIdcard, String stName) {
        int page = (params.getOffset()/params.getLimit())+1;
        int size = params.getLimit();

        //开始分页
        PageHelper.startPage(page,size);
        List<ZsStudent> list = studentMapper.showIdentity(params,slSchoolName,stIdcard,stName);

        PageInfo<ZsStudent> p = new PageInfo<>(list);
        return p;

    }


    public List<ZsStudent> outIdentity() {
        return studentMapper.outIdentity();
    }

    public int delIdentityMessage(Integer id) {
        return studentMapper.delIdentityMessage(id);
    }

    public List<ZsStudent> showIdentityStatistic() {
        return studentMapper.showIdentityStatistic();
    }

    public ZsSchool showSchoolClass() {
        return studentMapper.showSchoolClass();
    }
}

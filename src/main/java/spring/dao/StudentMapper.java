package spring.dao;

import spring.pojo.Params;
import spring.pojo.ZsStudent;

import java.util.List;

public interface StudentMapper {
    //身份信息查询
    List<ZsStudent> showIdentity(Params params);

    //导出数据
    List<ZsStudent> outIdentity();
}

package spring.dao;

import org.apache.ibatis.annotations.Param;
import spring.pojo.Params;
import spring.pojo.ZsStudent;

import java.util.List;

public interface StudentMapper {
    //身份信息查询
    List<ZsStudent> showIdentity(@Param("params") Params params,@Param("slSchoolName") String slSchoolName,
                                 @Param("stIdcard") String stIdcard,@Param("stName") String stName);

    //导出数据
    List<ZsStudent> outIdentity();

    //删除身份信息
    int delIdentityMessage(Integer id);
}

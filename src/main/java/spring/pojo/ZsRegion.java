package spring.pojo;


import lombok.Data;

import java.util.Date;


/**
 * 地区表 zs_region
 **/
@Data
public class ZsRegion {

    private long id;
    private Date createtime;//创建时间
    private String areaName;//地区名称
    private long pid;//地区等级id
    private String shi;//市
    private String province;

}

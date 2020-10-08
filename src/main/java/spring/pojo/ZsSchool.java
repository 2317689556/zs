package spring.pojo;


import lombok.Data;

import java.util.Date;

/**
 *学习中心表 zs_school
 **/
@Data
public class ZsSchool {

  private Integer id;
  private String slNumber;//编号
  private String slSchoolName;//学习中心全称
  private String slOuterName;//校外学习中心全称
  private Integer slAreaId;//地区
  private Integer slDistrictId;//区域管理中心
  private Integer slState;//状态，1启用，0禁用
  private Date slStartTime;//审批通过时间
  private String slApproval;//批文号
  private String slCard1;//信用代码证照片
  private String slCard2;//办学许可证照片
  private String slCard3;//身份证照片
  private String slEmpty1;
  private String slEmpty2;
  private String slEmpty3;
  private String slEmpty4;
  private String slEmpty5;

}

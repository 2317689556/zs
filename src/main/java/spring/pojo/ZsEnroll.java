package spring.pojo;


import lombok.Data;

import java.util.Date;

/**
 *报读信息表 zs_enroll
 **/
@Data
public class ZsEnroll {

  private Integer id;
  private String elCentre;//学习中心
  private String elBatch;//入学批次
  private String elGradation;//报读层次
  private String elMajor;//专业
  private String elWay;//入学方式
  private String elType;//学生类型
  private String elXjbatch;//学籍批次
  private Integer elStatus;//录取状态 1录取，-1不录取
  private Date elEnrollTime;//录取时间
  private Integer elInform;//录取通知书 1有，-1没有
  private String elEmpty1;
  private String elEmpty2;
  private String elEmpty3;
  private String elEmpty4;
  private String elEmpty5;
}

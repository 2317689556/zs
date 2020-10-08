package spring.pojo;


import lombok.Data;

import java.util.Date;

/**
 *学历相关信息表 zs_education
 **/
@Data
public class ZsEducation {

  private Integer id;
  private String enOutName;//曾用名
  private String enOutEducation;//原学历最高层次
  private String enOutCategory;//原学历类别
  private String enOutShape;//原学习形式
  private Date enOutTime;//原毕业时间
  private String enOutSchool;//原毕业学校
  private Integer enOutNumber;//原证书编号
  private String enSort;//类别
  private Integer enZnumber;//证报告编号
  private String enVerify;//备案表验证码
  private String enEmpty1;
  private String enEmpty2;
  private String enEmpty3;
  private String enEmpty4;
  private String enEmpty5;

}

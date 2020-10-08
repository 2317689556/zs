package spring.pojo;


import lombok.Data;

import java.util.Date;

/**
 *学生表 zs_student
 **/
@Data
public class ZsStudent {

  private Integer id;
  private String stName;//姓名
  private String stIdcard;//身份证号
  private Date stBirthday;//出生日期
  private Integer stSex;//性别，男1，女0
  private String stNation;//民族
  private String stOffice;//发证机关
  private Date stEndTime;//有效期
  private String stAddress;//住址
  private String stPhone;//电话
  private String stImg;//身份证头像
  private String stState;//状态，已报名2，未报名3，通过1，不通过-1
  private String stAge;//年龄
  private String stEmpty1;
  private String stEmpty2;
  private String stEmpty3;
  private String stEmpty4;
  private String stEmpty5;



}

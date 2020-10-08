package spring.pojo;


import lombok.Data;

/**
 *学生其他信息表 zs_rest
 **/
@Data
public class ZsRest {

  private Integer id;
  private String rtFace;//政治面貌
  private String rtAddress;//户籍所在地
  private String rtSite;//通讯地址
  private String rtCoding;//邮政编码
  private String rtPhone;//移动电话
  private String rtMail;//E-mail
  private Integer rtPosition;//职位,在职1，离职2
  private String rtUnit;//工作单位
  private String rtJhrName;//监护人姓名
  private String rtJhrPapers;//监护人证件
  private String rtJhrNumber;//监护人证件号
  private String rtEmpty1;
  private String rtEmpty2;
  private String rtEmpty3;
  private String rtEmpty4;
  private String rtEmpty5;
}

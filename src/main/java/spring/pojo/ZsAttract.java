package spring.pojo;

import lombok.Data;

/**
 *招生管理用户表 zs_attract
 **/
@Data
public class ZsAttract {

  private Integer id;
  private String atName;//姓名
  private String atUsername;//用户名
  private String atPassword;//密码
  private Integer atState;//状态，启用1，禁用0
  private Integer atRole;//权限
  private String atEmail;//邮箱
  private String atPhone;//电话
  private String atAddress;//联系地址
  private String atNuber;//管理的学习中心编号
  private String atEmpty1;
  private String atEmpty2;
  private String atEmpty3;
  private String atEmpty4;
  private String atEmpty5;
}

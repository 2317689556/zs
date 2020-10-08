package spring.pojo;


import lombok.Data;

/**
 *学习中心用户表 zs_syudy
 **/
@Data
public class ZsSyudy {

  private Integer id;
  private String syName;//姓名
  private String syUsername;//用户名
  private String syPassword;//密码
  private Integer syState;//状态，启用1，禁用0
  private Integer syRole;//权限
  private String syEmail;//邮箱
  private String syPhone;//电话
  private String syAddress;//联系地址
  private String syNuber;//管理的学习中心编号
  private String syEmpty1;
  private String syEmpty2;
  private String syEmpty3;
  private String syEmpty4;
  private String syEmpty5;
}

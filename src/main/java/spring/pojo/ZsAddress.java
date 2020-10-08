package spring.pojo;

import lombok.Data;

/**
 *地区管理表 zs_address
 **/
@Data
public class ZsAddress {

  private Integer id;
  private Integer asNumber;//编号
  private String asName;//名称
  private String asAddress;//地区
  private String asPostcode;//邮编
  private String asState;//状态，启用1，禁用0
  private String asEmpty1;
  private String asEmpty2;
  private String asEmpty3;
  private String asEmpty4;
  private String asEmpty5;

}

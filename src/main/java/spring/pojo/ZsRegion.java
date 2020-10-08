package spring.pojo;

import lombok.Data;

import java.sql.Date;

/**
 *地区表  region
 **/
@Data
public class ZsRegion {

  private Integer id;
  private String bigint;//省
  private String datetime;//市
  private Date varchar;//县
  private Date pid;//级别id
}

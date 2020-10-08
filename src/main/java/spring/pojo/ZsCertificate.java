package spring.pojo;


import lombok.Data;

/**
 *学生证件表  zs_certificate
 **/
@Data
public class ZsCertificate {
  private Integer id;
  private String ceIdcard;//身份证照片
  private String ceOutEducation;//原学历证书照片
  private String ceBackups;//备案报告照片
  private String ceCertificate;//护士执业证书照片
  private String ceReport;//护士执业证书查询报告照片
  private String ceRegister;//护士执业证书注册页照片
  private String ceMaterials;//户籍材料照片
  private String ceElse;//其他材料照片
  private String ceEmpty1;
  private String ceEmpty2;
  private String ceEmpty3;
  private String ceEmpty4;
  private String ceEmpty5;
}

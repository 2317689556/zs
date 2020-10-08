package spring.pojo;


import lombok.Data;

/**
 * 报点表 zs_dot
 **/
@Data
public class ZsDot {

    private Integer id;
    private Integer dtNumber;//报点编号
    private String dtName;//名称
    private String dtAddress;//地址
    private String dtState;//状态，启用1，禁用0
    private String dtEmpty1;
    private String dtEmpty2;
    private String dtEmpty3;
    private String dtEmpty4;
    private String dtEmpty5;
}

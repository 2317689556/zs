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
    private String scname;
    private String dtState;//状态，启用1，禁用0
    private String dtSchoolId;//学习中心表id关连字段
    private String dtEmpty3;
    private String dtEmpty4;
    private String dtEmpty5;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDtNumber() {
        return dtNumber;
    }

    public void setDtNumber(Integer dtNumber) {
        this.dtNumber = dtNumber;
    }

    public String getDtName() {
        return dtName;
    }

    public void setDtName(String dtName) {
        this.dtName = dtName;
    }

    public String getDtAddress() {
        return dtAddress;
    }

    public void setDtAddress(String dtAddress) {
        this.dtAddress = dtAddress;
    }

    public String getScname() {
        return scname;
    }

    public void setScname(String scname) {
        this.scname = scname;
    }

    public String getDtState() {
        return dtState;
    }

    public void setDtState(String dtState) {
        this.dtState = dtState;
    }

    public String getDtSchoolId() {
        return dtSchoolId;
    }

    public void setDtSchoolId(String dtSchoolId) {
        this.dtSchoolId = dtSchoolId;
    }

    public String getDtEmpty3() {
        return dtEmpty3;
    }

    public void setDtEmpty3(String dtEmpty3) {
        this.dtEmpty3 = dtEmpty3;
    }

    public String getDtEmpty4() {
        return dtEmpty4;
    }

    public void setDtEmpty4(String dtEmpty4) {
        this.dtEmpty4 = dtEmpty4;
    }

    public String getDtEmpty5() {
        return dtEmpty5;
    }

    public void setDtEmpty5(String dtEmpty5) {
        this.dtEmpty5 = dtEmpty5;
    }
}

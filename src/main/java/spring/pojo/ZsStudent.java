package spring.pojo;


import lombok.Data;

import java.util.Date;

/**
 * 学生表 zs_student
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

    private String slSchoolName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStName() {
        return stName;
    }

    public void setStName(String stName) {
        this.stName = stName;
    }

    public String getStIdcard() {
        return stIdcard;
    }

    public void setStIdcard(String stIdcard) {
        this.stIdcard = stIdcard;
    }

    public Date getStBirthday() {
        return stBirthday;
    }

    public void setStBirthday(Date stBirthday) {
        this.stBirthday = stBirthday;
    }

    public Integer getStSex() {
        return stSex;
    }

    public void setStSex(Integer stSex) {
        this.stSex = stSex;
    }

    public String getStNation() {
        return stNation;
    }

    public void setStNation(String stNation) {
        this.stNation = stNation;
    }

    public String getStOffice() {
        return stOffice;
    }

    public void setStOffice(String stOffice) {
        this.stOffice = stOffice;
    }

    public Date getStEndTime() {
        return stEndTime;
    }

    public void setStEndTime(Date stEndTime) {
        this.stEndTime = stEndTime;
    }

    public String getStAddress() {
        return stAddress;
    }

    public void setStAddress(String stAddress) {
        this.stAddress = stAddress;
    }

    public String getStPhone() {
        return stPhone;
    }

    public void setStPhone(String stPhone) {
        this.stPhone = stPhone;
    }

    public String getStImg() {
        return stImg;
    }

    public void setStImg(String stImg) {
        this.stImg = stImg;
    }

    public String getStState() {
        return stState;
    }

    public void setStState(String stState) {
        this.stState = stState;
    }

    public String getStAge() {
        return stAge;
    }

    public void setStAge(String stAge) {
        this.stAge = stAge;
    }

    public String getStEmpty1() {
        return stEmpty1;
    }

    public void setStEmpty1(String stEmpty1) {
        this.stEmpty1 = stEmpty1;
    }

    public String getStEmpty2() {
        return stEmpty2;
    }

    public void setStEmpty2(String stEmpty2) {
        this.stEmpty2 = stEmpty2;
    }

    public String getStEmpty3() {
        return stEmpty3;
    }

    public void setStEmpty3(String stEmpty3) {
        this.stEmpty3 = stEmpty3;
    }

    public String getStEmpty4() {
        return stEmpty4;
    }

    public void setStEmpty4(String stEmpty4) {
        this.stEmpty4 = stEmpty4;
    }

    public String getStEmpty5() {
        return stEmpty5;
    }

    public void setStEmpty5(String stEmpty5) {
        this.stEmpty5 = stEmpty5;
    }

    public String getSlSchoolName() {
        return slSchoolName;
    }

    public void setSlSchoolName(String slSchoolName) {
        this.slSchoolName = slSchoolName;
    }
}

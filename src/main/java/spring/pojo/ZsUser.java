package spring.pojo;

import lombok.Data;

/**
 * 登录用户表 zs_user
 **/


@Data
public class ZsUser {

    private Integer id;
    private String uName;//登陆用户
    private String uPass;//登陆用户密码
    private Integer uRole;//登录用户权限
    private String uEmpty1;
    private String uEmpty2;
    private String uEmpty3;
    private String uEmpty4;
    private String uEmpty5;

    public Integer getuRole() {
        return uRole;
    }

    public void setuRole(Integer uRole) {
        this.uRole = uRole;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuPass() {
        return uPass;
    }

    public void setuPass(String uPass) {
        this.uPass = uPass;
    }

    public String getuEmpty1() {
        return uEmpty1;
    }

    public void setuEmpty1(String uEmpty1) {
        this.uEmpty1 = uEmpty1;
    }

    public String getuEmpty2() {
        return uEmpty2;
    }

    public void setuEmpty2(String uEmpty2) {
        this.uEmpty2 = uEmpty2;
    }

    public String getuEmpty3() {
        return uEmpty3;
    }

    public void setuEmpty3(String uEmpty3) {
        this.uEmpty3 = uEmpty3;
    }

    public String getuEmpty4() {
        return uEmpty4;
    }

    public void setuEmpty4(String uEmpty4) {
        this.uEmpty4 = uEmpty4;
    }

    public String getuEmpty5() {
        return uEmpty5;
    }

    public void setuEmpty5(String uEmpty5) {
        this.uEmpty5 = uEmpty5;
    }
}

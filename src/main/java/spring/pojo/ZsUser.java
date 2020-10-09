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
}

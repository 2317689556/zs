package spring.pojo;

import lombok.Data;

import java.util.Date;

/**
 * 日志表  log
 **/
@Data
public class ZsLog {

    private Integer id;
    private String lgName;//登录人的姓名
    private String lgStare;//进行的操作
    private Date lgTime;//时间
}

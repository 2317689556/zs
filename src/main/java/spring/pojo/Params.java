package spring.pojo;

public class Params {

    private Integer limit;//一页的行数
    private Integer offset;//请求偏移量

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }
}

package model;

public class Comments {
    private int cid;
    private int aid;
    private int uid;
    private String contents;
    private String createTime;
    private String username;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String create_time) {
        this.createTime = create_time;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "Comments{" +
                "cid=" + cid +
                ", aid=" + aid +
                ", uid=" + uid +
                ", contents='" + contents + '\'' +
                ", createTime='" + createTime + '\'' +
                ", username='" + username + '\'' +
                '}';
    }
}

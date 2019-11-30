package dto;

import java.util.Date;

public class ArticleForm {
    private Integer aid;
    private String createTime;
    private String title;
    private String description;
    private String itemType;
    private Integer uid;
    private String wangxinSupport;
    private String price;
    private String wangxinPrice;
    private String image;
    private String username;
    private String address;
    private String contact;
    private String statue;

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getItemType() {
        return itemType;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getWangxinSupport() {
        return wangxinSupport;
    }

    public void setWangxinSupport(String wangxinSupport) {
        wangxinSupport = wangxinSupport;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getWangxinPrice() {
        return wangxinPrice;
    }

    public void setWangxinPrice(String wangxinPrice) {
        this.wangxinPrice = wangxinPrice;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getStatue() {
        return statue;
    }

    public void setStatue(String statue) {
        this.statue = statue;
    }
}

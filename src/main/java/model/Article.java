package model;

import java.util.Date;

public class Article {
	private int aid;
	private Date createTime;
	private String title;
	private String description;
    private int itemType;
	private int uid;
	private boolean WangxinSupport;
	private float price;
	private int wangxinPrice;
	private String image;
	private String username;
	private String address;
	private String contact;
	private int statue;

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getStatue() {
        return statue;
    }

    public void setStatue(int statue) {
        this.statue = statue;
    }

    public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getWangxinPrice() {
		return wangxinPrice;
	}
	public void setWangxinPrice(int wangxinPrice) {
		this.wangxinPrice = wangxinPrice;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getAid() {
		return aid;
	}
	
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
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
	
	public boolean isWangxinSupport() {
		return WangxinSupport;
	}
	public void setWangxinSupport(boolean wangxinSupport) {
		WangxinSupport = wangxinSupport;
	}

	public int getItemType() {
		return itemType;
	}
	public void setItemType(int itemType) {
		this.itemType = itemType;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}

    @Override
    public String toString() {
        return "Article{" +
                "aid=" + aid +
                ", createTime=" + createTime +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", itemType=" + itemType +
                ", uid=" + uid +
                ", WangxinSupport=" + WangxinSupport +
                ", price=" + price +
                ", wangxinPrice=" + wangxinPrice +
                ", image='" + image + '\'' +
                ", username='" + username + '\'' +
                ", address='" + address + '\'' +
                ", contact='" + contact + '\'' +
                ", statue=" + statue +
                '}';
    }
	
	

}

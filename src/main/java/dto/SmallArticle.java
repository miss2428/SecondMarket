package dto;

import java.text.SimpleDateFormat;
import java.util.Date;

public class SmallArticle {
	private int aid;
	private Date createTime;
	private String title;
	private float price;
	private String image;
	private String username;
	public String getCreateTimeS() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(createTime);
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
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
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
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

    @Override
    public String toString() {
        return "SmallArticle{" +
                "aid=" + aid +
                ", createTime=" + createTime +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", image='" + image + '\'' +
                ", username='" + username + '\'' +
                '}';
    }
}

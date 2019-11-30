package service;

import dto.SmallArticle;
import model.User;

import java.util.List;

public interface MeService {
    public User getUser(int uid);

    public List<SmallArticle> queryPublic(User u);

    public void updateUser(User u);


}

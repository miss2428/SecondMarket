package service;

import dao.ArticleDao;
import dao.UserDao;
import dto.SmallArticle;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MeServiceImp implements MeService {
    @Autowired
    private UserDao ud;
    @Autowired
    private ArticleDao ad;


    @Override
    public User getUser(int uid) {
        return ud.searchById(uid);
    }

    @Override
    public List<SmallArticle> queryPublic(User u) {

        return ad.getPublic(u.getUid());
    }

    @Override
    public void updateUser(User u) {
        ud.updateUser(u);
    }
}

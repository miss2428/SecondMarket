package dao;

import dto.SmallArticle;
import model.*;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import service.ArticleService;
import service.CommentsServiceImp;
import service.MeService;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:ApplicationContext.xml"})
public class UserDaoTest {

    @Autowired
    private MeService ms;

    @Autowired
    private UserDao ud;
    @Autowired
    private ArticleService as;
    @Autowired
    private ArticleDao ad;
    @Autowired
    private CommentsServiceImp cs;

    @Test
    public void searchById() {
        User u = ud.searchById(10);
        System.out.println(u);
    }
    @Test
    public void test01()
    {
        Article article = ad.searchById(41);
        System.out.println(article);
    }

    @Test
    public void test03()
    {
        User u = new User();
        u.setUid(12);
        List<SmallArticle> sa = ms.queryPublic(u);
        System.out.println(sa);
    }

    @Test
    public void test04()
    {
        Comments c = cs.addComment(1, 6, "good");
        System.out.println(c);


    }
    @Test
    public void test05()
    {
        List<Comments> c = cs.queryByArticle(1);
        System.out.println(c);
    }

    @Test
    public void test06()
    {
        List<Comments> comments = cs.queryByUser(6);
        System.out.println(comments);
    }

}
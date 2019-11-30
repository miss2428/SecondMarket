package dao;

import dto.SmallArticle;
import model.Article;
import model.SearchModel;

import java.util.List;

public interface ArticleDao {

    public List<SmallArticle> searchAllArticle(SearchModel sm);

    public Article searchById(int aid);

    public void insertArticle(Article a);

    public List<SmallArticle> getPublic(int uid);

    public void deleteArticle(int aid);
}

package service;

import dto.ArticleForm;
import dto.SmallArticle;
import model.Article;
import model.Page;
import model.SearchModel;

import java.util.List;

public interface ArticleService {

    public Page<SmallArticle> searchCurrentPage(SearchModel sm);

    public ArticleForm searchById(int aid);

    public void addArticle(Article a);

    public void deleteArticle(int aid);
}

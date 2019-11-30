package service;

import com.github.pagehelper.PageHelper;
import constvalue.SessionConst;
import dao.ArticleDao;
import dto.ArticleForm;
import dto.SmallArticle;
import model.Article;
import model.Page;
import model.SearchModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.List;

@Service
public class ArticleServiceImp implements ArticleService {


    @Autowired
    private ArticleDao ad;

    @Override
    public Page<SmallArticle> searchCurrentPage(SearchModel sm) {
        com.github.pagehelper.Page<Object> objects = PageHelper.startPage(sm.getCurrentPage(), 6);
        List<SmallArticle> list =  ad.searchAllArticle(sm);
        Page<SmallArticle> p = new Page();
        p.setList(list);
        p.setCurrentPage(sm.getCurrentPage());
        p.setTotalPages(objects.getPages());
        p.setTotalRecords((int) objects.getTotal());
        return p;
    }

    @Override
    public ArticleForm searchById(int aid) {
        Article a = ad.searchById(aid);
        ArticleForm af = new ArticleForm();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String publicDate = sdf.format(a.getCreateTime());
        af.setAid(a.getAid());
        af.setCreateTime(publicDate);
        af.setTitle(a.getTitle());
        af.setDescription(a.getDescription());
        af.setItemType(SessionConst.getItemName(a.getItemType()));
        af.setUid(a.getUid());
        af.setWangxinSupport(a.isWangxinSupport()?"是":"不支持");
        af.setPrice(""+a.getPrice());
        af.setWangxinPrice(a.getWangxinPrice()+"");
        af.setImage(a.getImage());
        af.setUsername(a.getUsername());
        af.setAddress(a.getAddress());
        af.setContact(a.getContact());
        af.setStatue(""+a.getStatue());

        return af;


    }

    @Override
    public void addArticle(Article a) {
        ad.insertArticle(a);
    }

    @Override
    public void deleteArticle(int aid) {
        ad.deleteArticle(aid);
    }
}

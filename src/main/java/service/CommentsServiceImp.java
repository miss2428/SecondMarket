package service;

import dao.CommentsDao;
import dao.UserDao;
import model.Comments;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class CommentsServiceImp implements CommentsService {
    @Autowired
    private CommentsDao ad;
    @Autowired
    private UserDao ud;

    public List<Comments> queryByArticle(int aid)
    {
        return ad.queryByArticle(aid);
    }

    public List<Comments> queryByUser(int uid)
    {
        return ad.queryByUser(uid);
    }

    public Comments addComment(int aid, int uid, String contents)
    {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Comments c = new Comments();
        c.setAid(aid);
        c.setUid(uid);
        c.setContents(contents);
        c.setCreateTime(sdf.format(new Date()));
        c.setUsername(ud.getName(uid));
        int cid = ad.addComment(c);
        c.setCid(cid);

        return c;
    }

}

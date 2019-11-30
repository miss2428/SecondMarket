package controller;


import constvalue.SessionConst;
import model.Comments;
import model.User;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import service.CommentsServiceImp;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CommentsConroller {

    private Logger log = Logger.getLogger(this.getClass());

    @Autowired
    private CommentsServiceImp cs;

    @RequestMapping("/getCommentByAid.action")
    @ResponseBody
    public List<Comments> queryByAid(@RequestParam("aid") Integer aid)
    {

        List<Comments> comments = cs.queryByArticle(aid);
        log.debug(comments);
        return comments;
    }

    @RequestMapping("/getCommentByUid.action")
    @ResponseBody
    public List queryByUid(@RequestParam("uid")Integer uid)
    {
        List<Comments> comments = cs.queryByUser(uid);
        return comments;
    }

    @RequestMapping("addComment.action")
    @ResponseBody
    public Comments addComment(@RequestParam("contents")String contents, @RequestParam("aid")Integer aid, @RequestParam("uid")Integer uid)
    {
        Comments c = cs.addComment(aid, uid, contents);
        log.debug(c);
        return c;
    }

}

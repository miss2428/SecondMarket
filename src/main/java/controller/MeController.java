package controller;

import constvalue.SessionConst;
import model.User;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import service.ArticleService;
import service.MeService;

import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

@Controller
public class MeController {
    private Logger log = Logger.getLogger(this.getClass());

    @Autowired
    private ArticleService as;

    @Autowired
    private MeService ms;
    @RequestMapping(value = "/me.action", method = RequestMethod.GET)
    public String getMe(HttpSession session)
    {
        return "me.jsp";
    }

    @RequestMapping(value = "/public.action", method = RequestMethod.GET)
    public String getPublic(HttpSession session, Model model)
    {
        User u = (User)session.getAttribute(SessionConst.user);
        model.addAttribute("article",ms.queryPublic(u));
        return "public.jsp";
    }


    @RequestMapping("/delete.action")
    public void deleteArticle(@RequestParam(name = "aid", defaultValue = "0")Integer aid ,PrintWriter pw)
    {

        as.deleteArticle(aid);

        pw.print("删除成功");
    }

    @RequestMapping(value = "/edit.action", method = RequestMethod.GET)
    public String editMessage(HttpSession session, Model model)
    {
        User u = (User)session.getAttribute(SessionConst.user);
        model.addAttribute("user", u);
        return "edit_message.jsp";
    }

    @RequestMapping(value = "/edit.action", method = RequestMethod.POST)
    public String editMessage(User u, HttpSession session)
    {
        ms.updateUser(u);
        session.setAttribute(SessionConst.user, u);
        return "edit_message.jsp";
    }
}

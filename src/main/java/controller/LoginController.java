package controller;

import cn.yiban.open.Authorize;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import constvalue.AppContext;
import constvalue.SessionConst;
import model.User;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.LoginService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class LoginController {

    @Autowired
    private LoginService ls;

    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/login.action")
    public String HandleLogin(String username, String password, HttpSession session, Model model)
    {
        boolean result = ls.login(username, password);
        if(!result)
        {
            model.addAttribute("errorMenssage","输入的用户名或密码有错误，请重试");
            return "login.jsp";
        }else{
            User u  = ls.searchByUsername(username);
            session.setAttribute(SessionConst.user, u);
            return "index.jsp";
        }

    }
    @RequestMapping(value = "/")
    public String HandleAll()
    {
        return "redirect:/init";
    }

    @RequestMapping("/showLogin.action")
    public String showLogin()
    {
        return "login.jsp";
    }


    //易班登陆的相关操作
    @RequestMapping("/init")
    public void init(HttpServletRequest req, HttpServletResponse res) throws IOException {
        Authorize authorize = new Authorize(AppContext.APP_ID, AppContext.APP_SEC);
        String url = authorize.forwardurl(AppContext.BACK_URL, "QUERY", Authorize.DISPLAY_TAG_T.MOBILE);
        log.info("inited");
        res.sendRedirect(url);
    }

    @RequestMapping("/auth")
    public String auth(HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws IOException {
        String code = req.getParameter(AppContext.KEY_CODE);
        if (code == null || code.equals("")) {
            log.info("failed");
            return "redirect:/init";
        }

        Authorize authorize = new Authorize(AppContext.APP_ID, AppContext.APP_SEC);
        String text = authorize.querytoken(code, AppContext.BACK_URL);



        JSONObject json = JSON.parseObject(text);
        AppContext.ACCESS_TOKEN = json.getString(AppContext.KEY_TOKEN);

        cn.yiban.open.common.User user = new cn.yiban.open.common.User(AppContext.ACCESS_TOKEN);

        JSONObject json1 = JSON.parseObject(user.me()).getJSONObject("info");
        log.info(json1);
        User user1 = ls.yibanLogin(json1);
        session.setAttribute(SessionConst.user, user1);
        session.setAttribute(SessionConst.access_token, AppContext.ACCESS_TOKEN);


        return "redirect:showArticle.action";
    }

    @RequestMapping("quit.action")
    public String quit(HttpSession session)
    {
        if(session == null){

        }else{
            session.invalidate();
        }
        return "index.jsp";
    }
}

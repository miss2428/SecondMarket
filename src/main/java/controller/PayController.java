package controller;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import constvalue.AppContext;
import constvalue.JumpConst;
import org.apache.log4j.Logger;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import util.Pay;


public class PayController {
    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/PayServlet")
    public String pay(Model model, @RequestParam("wx") Integer wx, @RequestParam("aid") Integer aid)
    {
        String text = Pay.query(AppContext.ACCESS_TOKEN, wx);
        JSONObject json = JSON.parseObject(text);
        model.addAttribute(JumpConst.info, "支付成功");
        model.addAttribute(JumpConst.url, "single.action&aid="+aid);
        return "jump.jsp";
    }

    @RequestMapping("/expay")
    public String exPay(Model model, @RequestParam("wx") Integer wx, @RequestParam("uid") Integer uid, @RequestParam("aid")Integer aid)
    {
        String text = Pay.exchangePay(AppContext.ACCESS_TOKEN, wx, uid);
        JSONObject json = JSON.parseObject(text);
        log.error(json);
        model.addAttribute(JumpConst.info, "支付成功");
        model.addAttribute(JumpConst.url, "single.action&aid="+aid);
        return "jump.jsp";
    }

    @RequestMapping("/payback")
    public void payBack()
    {
       ;
    }
}

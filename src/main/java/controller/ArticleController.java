package controller;

import constvalue.JumpConst;
import constvalue.RequestConst;
import constvalue.SessionConst;
import dto.ArticleForm;
import dto.SmallArticle;
import model.Article;
import model.Page;
import model.SearchModel;
import model.User;
import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import service.ArticleService;
import util.IpTimeStamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.List;

@Controller
public class ArticleController {
    private Integer currentPage;
    private Integer item;
    private String searchValue;
    private Logger log = Logger.getLogger(this.getClass());

    @RequestMapping("/showArticle.action")
    public String getArticle()
    {
        return "index.jsp";
    }

    @Autowired
    private ArticleService as;
    @RequestMapping("/getArticle.action")
    public ModelAndView multiPage(HttpServletRequest request, HttpSession session)
    {
        String repage = request.getParameter(SessionConst.currentPage);
        String reitem = request.getParameter(SessionConst.item);

        log.debug(repage);
        log.debug(reitem);
        Integer currentPage = (Integer)session.getAttribute(SessionConst.currentPage);
        Integer item = (Integer)session.getAttribute(SessionConst.item);
        if(repage != null && !repage.trim().equals(""))
        {
            log.debug("page not null");
            currentPage = Integer.parseInt(repage);
            session.setAttribute(SessionConst.currentPage, currentPage);
        }
        if(reitem != null && !reitem.trim().equals(""))
        {
            log.debug("item not null");
            item = Integer.parseInt(reitem);
            session.setAttribute(SessionConst.item, item);
            currentPage = 1;
        }
        searchValue = request.getParameter(SessionConst.searchValue);


        SearchModel sm = new SearchModel();
        sm.setCurrentPage(currentPage);
        sm.setItem(item);
        sm.setSearchValue(searchValue);
        Page<SmallArticle> page = as.searchCurrentPage(sm);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index.jsp");
        mv.addObject(SessionConst.page, page);
        return mv;

    }
    @RequestMapping("/single.action")
    public String singleView(Model model, int aid, HttpSession session)
    {
        ArticleForm af = as.searchById(aid);
        model.addAttribute(RequestConst.articleForm, af);
        if(session.getAttribute(SessionConst.user) != null  )
        {
            model.addAttribute("wx",((User)session.getAttribute(SessionConst.user)).getWx());
        }
        else{
            model.addAttribute("wx","");
        }

        return "single.jsp";
    };

    @SuppressWarnings("deprecation")
    @RequestMapping(value="addArticle.action", method = RequestMethod.POST)
    public String addArticle(HttpServletRequest request, HttpServletResponse response, Model model) throws FileUploadException, IOException {
        String address = null;
        String wangxinSupportS = null;
        String itemTypeU = null;
        String title = null;
        String price = null;
        String contact = null;
        String description = null;
        String wangxinPrice = null;
        boolean wangxinSupport;

        String filePath = request.getServletContext().getRealPath("/") + "/WEB-INF/jsp/productImages";
        String fileName = null;
        File f = new File(filePath);
        if(!f.exists())
        {
            f.mkdir();
        }
        DiskFileUpload diskFileUpload = new DiskFileUpload();
        try{
            List<FileItem> list = diskFileUpload.parseRequest(request);
            IpTimeStamp its=new IpTimeStamp(InetAddress.getLocalHost().getHostAddress());

            for(FileItem fileItem : list){

                if(fileItem.isFormField()){
                    if("address".equals(fileItem.getFieldName())){
                        if(fileItem.getString() != null)
                        address = new String(fileItem.getString().getBytes("ISO-8859-1"),"UTF-8");
                    }
                    if("title".equals(fileItem.getFieldName())){
                        if(fileItem.getString() != null)
                        title = new String(fileItem.getString().getBytes("ISO-8859-1"),"UTF-8");
                    }
                    if("price".equals(fileItem.getFieldName())){
                        if(fileItem.getString() != null)
                        price = fileItem.getString();
                    }
                    if("contact".equals(fileItem.getFieldName())){
                        if(fileItem.getString() != null)
                        contact = new String(fileItem.getString().getBytes("ISO-8859-1"),"UTF-8");
                    }
                    if("itemType".equals(fileItem.getFieldName())){
                        if(fileItem.getString() != null)
                        itemTypeU = new String(fileItem.getString().getBytes("ISO-8859-1"),"UTF-8");
                    }
                    if("wangxinSupport".equals(fileItem.getFieldName())){
                        if(fileItem.getString() != null)
                        wangxinSupportS = new String(fileItem.getString().getBytes("ISO-8859-1"),"UTF-8");
                    }
                    if("wangxinPrice".equals(fileItem.getFieldName())){
                        wangxinPrice = fileItem.getString();
                    }
                    if("description".equals(fileItem.getFieldName())){
                        if(fileItem.getString() != null)
                        description = new String(fileItem.getString().getBytes("ISO-8859-1"),"UTF-8");
                    }
                }
                else
                {
                    if("file".equals(fileItem.getFieldName())){
                        File remoteFile = new File(new String(fileItem.getName().getBytes(),"UTF-8"));
                        String rfname = remoteFile.getName();

                        String ext = rfname.substring(rfname.lastIndexOf(".")+1);

                        fileName=its.getIPtimeRand()+"."+ext;
                        String abpath = filePath+java.io.File.separator+fileName;



                        InputStream ins = fileItem.getInputStream();
                        OutputStream ous = new FileOutputStream(abpath);

                        try{
                            byte[] buffer = new byte[1024];
                            int len = 0;
                            while((len = ins.read(buffer)) > -1)
                                ous.write(buffer,0,len);
                        }finally{
                            ous.close();
                            ins.close();
                        }
                    }

                }

            }
        }catch(FileUploadException e){
            log.error(e);
        }

        String realPath="productImages" +"/"+fileName+"";


        if(wangxinSupportS == null || wangxinSupportS.equals("option2"))
        {
            wangxinSupport = false;
        }
        else  if(wangxinSupportS.equals("option1")){
            wangxinSupport = true;
        }
        else {
            wangxinSupport = false;
        }
        int itemType = 1;
        switch (itemTypeU) {
            case "闲置数码":
                itemType = 1;
                break;
            case "闲置书籍":
                itemType = 2;
                break;
            case "闲置衣服":
                itemType = 3;
                break;
            case "鞋服配饰":
                itemType = 4;

            default:
                break;
        }



        Article a = new Article();
        a.setAddress(address);
        a.setContact(contact);
        a.setCreateTime(new Date());
        a.setDescription(description);
        a.setImage(realPath);
        a.setItemType(itemType);
        a.setPrice(Float.parseFloat(price));
        a.setTitle(title);
        a.setUid(((User)request.getSession().getAttribute("user")).getUid());
        a.setUsername(((User)request.getSession().getAttribute("user")).getUsername());
        if(wangxinPrice != null && !wangxinPrice.trim().equals("")) {
            a.setWangxinPrice(Integer.parseInt(wangxinPrice));
        }
        a.setWangxinSupport(wangxinSupport);
        as.addArticle(a);
        log.debug(a);
        model.addAttribute(JumpConst.info, "添加成功");
        model.addAttribute(JumpConst.url, "showArticle.action");



        return "jump.jsp";
    }
    @RequestMapping(value="addArticle.action", method = RequestMethod.GET)
    public String showCreate()
    {
        return "create.jsp";
    }
}

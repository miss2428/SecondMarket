package interceptor;

import constvalue.SessionConst;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IsLoginedInterceptor implements HandlerInterceptor {

        private Logger log = Logger.getLogger(this.getClass());
        private static final String[] ignoreUri = {"/auth", "/init","/login.action", "/getArticle.action","/showLogin.action"};
        @Override
        public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
            boolean flag = false;
            String servletPath = request.getServletPath();
            for (String s : ignoreUri) {
                if (servletPath.contains(s)) {
                    flag = true;
                    break;
                }
            }
            if (!flag) {
                if (request.getSession().getAttribute(SessionConst.user) == null) {
                    log.debug("pre false");
                    request.getRequestDispatcher("init").forward(request, response);
                    flag = false;
                } else {
                    flag = true;
                }
            }
            return flag;
        }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}

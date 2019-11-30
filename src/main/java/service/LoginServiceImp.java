package service;

import com.alibaba.fastjson.JSONObject;
import dao.UserDao;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImp implements LoginService {
    @Autowired
    private UserDao ud;

    @Override
    public User yibanLogin(JSONObject json1) {
        String username = json1.getString("yb_username");
        int uid = Integer.parseInt(json1.getString("yb_userid"));
        String address = json1.getString("yb_schoolname");
        int wx = Integer.parseInt(json1.getString("yb_money"));
        model.User mu = new model.User();
        mu.setUid(uid);
        mu.setAddress(address);
        mu.setUsername(username);
        mu.setWx(wx);
        if(ud.searchById(uid) != null)
        {
            mu = ud.searchById(uid);
        }else{
            ud.insertYibanUser(mu);
        }


        return mu;
    }

    @Override
    public boolean login(String username, String password) {
        String realPassword = ud.getPassword(username);
        if(realPassword == null ||!realPassword.equals(password))
            return false;
        else
            return true;
    }

    @Override
    public User searchByUsername(String username) {
        return ud.searchByUsername(username);
    }
}

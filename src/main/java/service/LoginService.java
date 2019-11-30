package service;

import com.alibaba.fastjson.JSONObject;
import model.User;


public interface LoginService {
    public boolean login(String username, String password);

    public User searchByUsername(String username);

    public User yibanLogin(JSONObject json1);
}

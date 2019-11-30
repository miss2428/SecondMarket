package util;

import cn.yiban.util.HTTPSimple;

public class Pay {
	public static String query(String token,int pay)
	{
		String query = constvalue.AppContext.PAY_URL;
		query += "?access_token=";
		query += token;
		query += "&pay=";
		query +=pay;
		return HTTPSimple.GET(query);
	}

	public static String exchangePay(String token, int pay, int yb_userid)
    {
        String query = constvalue.AppContext.EXPAY_URL;
        query += "?access_token=";
        query += token;
        query += "&pay=";
        query +=pay;
        query += "&sign_back=payback";
        query += "&yb_userid=";
        query += yb_userid;
        return HTTPSimple.GET(query);
    }

}

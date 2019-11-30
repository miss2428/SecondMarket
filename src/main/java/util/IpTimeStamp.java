package util;

import java.text.SimpleDateFormat;  
import java.util.Date;  
import java.util.Random;  
// �ļ�����Զ�����  
public class IpTimeStamp {  
    private SimpleDateFormat sdf = null;  
    private String ip = null;  
    public IpTimeStamp() {}  
    public IpTimeStamp(String ip) {  
        this.ip = ip;  
    }  
    public String getIPtimeRand() {  
        StringBuffer buf = new StringBuffer();  
        if(this.ip != null) {  
            String s[] = this.ip.split("\\.");  
            for(int i=0; i<s.length; i++) {  
                buf.append(this.addZero(s[i],3));  
            }  
        }  
        buf.append(this.getTimeStamp());  
        Random r = new Random();    //��������� �� 3λ  
        for(int i=0; i<3; i++) {  
            buf.append(r.nextInt(10));  //���е��������� 10  
        }  
        return buf.toString();  
    }  
    //����ʱ���  
    public String getDate() {  
        this.sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss. SSS");  
        return this.sdf.format(new Date());  
    }  
  
    public String getTimeStamp() {  
        this.sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");  
        return this.sdf.format(new Date());  
    }  
  
    private String addZero(String str,int len) {  
        StringBuffer s = new StringBuffer();  
        s.append(str);  
        while(s.length() < len) {  
            s.insert(0,"0");  
        }  
        return s.toString();  
    }  
  
//  public static void main(String args[]) {  
//      System.out.println(new IPtimeStamp("192.168.2.3").getIPtimeRand());  
//  }  
}  
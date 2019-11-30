package constvalue;

public class SessionConst {

    public static final String access_token = "access_token";

	public static final String user = "user";
	

	public static final String item = "item";
	
	public static final String currentPage = "currentPage";
	
	public static final String searchValue = "searchValue";
	
	public static final String page = "page";
	
	public static final int allitem = 0;
	
	public static final int item1 = 1;
	
	public static final int item2 = 2;
	
	public static final int item3 = 3;
	
	public static final int item4 = 4;
	
    public static String getItemName(int item)
    {
        switch(item){
            case 1: return "闲置数码";
            case 2: return "闲置书籍";
            case 3: return "闲置衣服";
            case 4: return "鞋服配饰";
            default:return "未知类别";
        }
    }

}

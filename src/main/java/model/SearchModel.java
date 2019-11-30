package model;

public class SearchModel {
	private String searchValue;
	private int item;
	private int currentPage;
	
	


    public SearchModel() {
    }

    public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
        if(currentPage == null)
        {
            this.currentPage = 1;
        }else {
            this.currentPage = currentPage;
        }
	}

	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	public int getItem() {
		return item;
	}
	public void setItem(Integer item) {
        if(item == null)
        {
            this.item = 0;
        }else {
            this.item = item;
        }
	}
	

}

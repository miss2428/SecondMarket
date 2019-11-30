package model;


	import java.util.List;    
    
	   /**  
	    * 封装分页信息  
	    *
	    */    
	   public class Page<E> {    
	       
	       //结果集    
	       private List<E> list;    
	           
	       //查询记录数    
	       private int totalRecords;    
	           
	       private int totalPages;
	           
	       //第几页    
	       private int currentPage;    
	           
	       /**  
	        * 总页数  
	        * @return  
	        */    
	       public int getTotalPages() {    
	           if(totalRecords%6==0 && totalRecords!=0)
	           {
	        	   return totalRecords/6;
	           }
	           else
	           {
	        	   return totalRecords/6 + 1;
	           }
	       }    
      
	       public List<E> getList() {    
	           return list;    
	       }    
	       
	       public void setList(List<E> list) {    
	           this.list = list;    
	       }    
	       
	       public int getTotalRecords() {    
	           return totalRecords;    
	       }    
	       
	       public void setTotalRecords(int totalRecords) {    
	           this.totalRecords = totalRecords;    
	       }

		public int getCurrentPage() {
			return currentPage;
		}

		public void setCurrentPage(int currentPage) {
			this.currentPage = currentPage;
		}


		public void setTotalPages(int totalPages) {
			this.totalPages = totalPages;
		}

           @Override
           public String toString() {
               return "Page{" +
                       "list=" + list +
                       ", totalRecords=" + totalRecords +
                       ", totalPages=" + totalPages +
                       ", currentPage=" + currentPage +
                       '}';
           }
       }

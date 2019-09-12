package entity;

public class Page {
    public int currentPage;
    public int startItem;//起始位
    public int endItem;//结束位
    public int pageSize;//每页数量
    public int pageCount;//总页数
    public int itemCount;//总条数

    public Page(){
        this.currentPage=1;
        this.pageSize=10;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        if(currentPage<1){
            currentPage=1;
        }
        this.currentPage = currentPage;
    }

    public int getStartItem() {
        return (currentPage-1)*pageSize;
    }

    public int getEndItem() {
        return getStartItem()+pageSize;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageCount() {
        return itemCount%pageSize==0?itemCount/pageSize:(itemCount/pageSize+1);
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public int getItemCount() {
        return itemCount;
    }

    public void setItemCount(int itemCount) {
        this.itemCount = itemCount;
    }

}

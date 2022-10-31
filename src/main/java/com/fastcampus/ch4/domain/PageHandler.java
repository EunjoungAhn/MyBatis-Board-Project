package com.fastcampus.ch4.domain;

public class PageHandler {
    private int naviSize = 10; // page navigation size
    private int page; // 현재 페이지
    private int pageSize; // 한 페이지의 크기
    private int totalCnt; // 게시물의 총 갯수
    private int totalPage; // 전체 페이지의 갯수
    private int beginPage; // 화면에 보여줄 첫 페이지
    private int endPage; // 화면에 보여줄 마지막 페이지
    private boolean showNext = false; // 이후를 보여줄지의 여부. endPage==totalPage이면, showNext는 false
    private boolean showPrev = false; // 이전을 보여줄지의 여부. beginPage==1이 아니면 showPrev는 false

    public int getNaviSize() {
        return naviSize;
    }

    public void setNaviSize(int naviSize) {
        this.naviSize = naviSize;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalCnt() {
        return totalCnt;
    }

    public void setTotalCnt(int totalCnt) {
        this.totalCnt = totalCnt;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getBeginPage() {
        return beginPage;
    }

    public void setBeginPage(int beginPage) {
        this.beginPage = beginPage;
    }

    public int getEndPage() {
        return endPage;
    }

    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }

    public boolean isShowNext() {
        return showNext;
    }

    public void setShowNext(boolean showNext) {
        this.showNext = showNext;
    }

    public boolean isShowPrev() {
        return showPrev;
    }

    public void setShowPrev(boolean showPrev) {
        this.showPrev = showPrev;
    }

    public PageHandler(int totalCnt, int page){
            this(totalCnt, page, 10);
        }

        public PageHandler(int totalCnt, int page, int pageSize) {
            this.totalCnt = totalCnt;
            this.page = page;
            this.pageSize = pageSize;


            this.totalPage = (int)Math.ceil(totalCnt / (double)pageSize);// 전체 페이지에서 마지막 페이징 구간에서 반올림이 안됨으로 더블로 처리
            this.beginPage = (page-1) / naviSize * naviSize + 1; // 11 -> 11, 10 -> 1, 15->11. 따로 떼어내서 테스트
            this.endPage = Math.min(beginPage + naviSize - 1, totalPage); // 둘중 작은 값이 담긴다.
            this.showPrev = beginPage!=1;
            this.showNext = endPage!=totalPage;
        }

        void print() {
            System.out.println("page="+ page);
            System.out.print(showPrev? "PREV " : "");

            for(int i=beginPage;i<=endPage;i++) {
                System.out.print(i+" ");
            }
            System.out.println(showNext? " NEXT" : "");
        }

        @Override
        public String toString() {
            return "PageHandler{" +
                    ", totalCnt=" + totalCnt +
                    ", showNext=" + showNext +
                    ", beginPage=" + beginPage +
                    ", naviSize=" + naviSize +
                    ", totalPage=" + totalPage +
                    ", endPage=" + endPage +
                    ", showPrev=" + showPrev +
                    '}';
        }
}

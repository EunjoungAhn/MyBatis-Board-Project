package com.fastcampus.ch4.domain;

public class PageHandler {
        int naviSize = 10; // page navigation size
        int page; // 현재 페이지
        int pageSize; // 한 페이지의 크기
        int totalCnt; // 게시물의 총 갯수
        int totalPage; // 전체 페이지의 갯수
        int beginPage; // 화면에 보여줄 첫 페이지
        int endPage; // 화면에 보여줄 마지막 페이지
        boolean showNext = false; // 이후를 보여줄지의 여부. endPage==totalPage이면, showNext는 false
        boolean showPrev = false; // 이전을 보여줄지의 여부. beginPage==1이 아니면 showPrev는 false

        public PageHandler(int totalCnt, int page){
            this(totalCnt, page, 10);
        }

        public PageHandler(int totalCnt, int page, int pageSize) {
            this.totalCnt = totalCnt;
            this.page = page;
            this.pageSize = pageSize;


            this.totalPage = (int)Math.ceil(totalCnt / pageSize);
            this.beginPage = page / naviSize * naviSize + 1; // 11 -> 11, 10 -> 1, 15->11. 따로 떼어내서 테스트
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

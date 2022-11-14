package com.fastcampus.ch4.service;

import com.fastcampus.ch4.domain.BoardDto;
import com.fastcampus.ch4.domain.SearchCondition;
import com.fastcampus.ch4.domain.User;

import java.util.List;
import java.util.Map;

public interface AdminService {
    int getCount() throws Exception;
    int remove(String id) throws Exception;
    List<User> getList() throws Exception;
    List<User> getPage(Map map) throws Exception;
    int getSearchResultCnt(SearchCondition sc) throws Exception;
    List<User> getSearchResultPage(SearchCondition sc) throws Exception;
}
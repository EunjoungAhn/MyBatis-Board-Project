package com.fastcampus.ch4.service;

import com.fastcampus.ch4.dao.UserDao;
import com.fastcampus.ch4.domain.BoardDto;
import com.fastcampus.ch4.domain.SearchCondition;
import com.fastcampus.ch4.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    UserDao userDao;

    @Override
    public int getCount() throws Exception {
        return userDao.count();
    }

    @Override
    public int remove(String id) throws Exception {
        return 0;
    }

    @Override
    public List<User> getList() throws Exception {
        return userDao.selectAll();
    }

    @Override
    public List<User> getPage(Map map) throws Exception {
        return userDao.selectPage(map);
    }

    @Override
    public int getSearchResultCnt(SearchCondition sc) throws Exception {
        return userDao.searchResultCnt(sc);
    }

    @Override
    public List<User> getSearchResultPage(SearchCondition sc) throws Exception {
        return userDao.searchSelectPage(sc);
    }

}
package com.fastcampus.ch4.dao;

import com.fastcampus.ch4.domain.*;

import java.util.List;
import java.util.Map;

public interface UserDao {
    User selectUser(String id) throws Exception;
    int deleteUser(String id, String pwd) throws Exception;
    int insertUser(User user) throws Exception;
    int updateUser(User user) throws Exception;
    int count() throws Exception;
    void deleteAll() throws Exception;
    List<User> selectPage(Map map) throws Exception;
    List<User> selectAll() throws Exception;
    int searchResultCnt(SearchCondition sc) throws Exception;
    List<User> searchSelectPage(SearchCondition sc) throws Exception;
}
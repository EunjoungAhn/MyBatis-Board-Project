package com.fastcampus.ch4.dao;

import com.fastcampus.ch4.domain.BoardDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDaoImpl implements BoardDao {
    @Autowired
    SqlSession session;

    //mapper의 실제 이름을 검색을 위해서, 문자로 변수 지정해서 붙여주기
    String namespace="com.fastcampus.ch4.dao.BoardMapper.";

    @Override
    public BoardDto select(int bno) throws Exception{
        return session.selectOne( namespace+"select", bno);
    }
}

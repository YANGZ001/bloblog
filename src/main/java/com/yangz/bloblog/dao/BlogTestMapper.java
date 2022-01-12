package com.yangz.bloblog.dao;

import com.yangz.bloblog.entity.BlogTest;

public interface BlogTestMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BlogTest record);

    int insertSelective(BlogTest record);

    BlogTest selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BlogTest record);

    int updateByPrimaryKey(BlogTest record);
}
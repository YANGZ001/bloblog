package com.yangz.bloblog.dao;

import com.yangz.bloblog.entity.BlogConfig;

public interface BlogConfigMapper {
    int deleteByPrimaryKey(String configName);

    int insert(BlogConfig record);

    int insertSelective(BlogConfig record);

    BlogConfig selectByPrimaryKey(String configName);

    int updateByPrimaryKeySelective(BlogConfig record);

    int updateByPrimaryKey(BlogConfig record);
}
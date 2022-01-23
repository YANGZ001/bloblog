package com.yangz.bloblog.service;

import com.yangz.bloblog.entity.BlogTagCount;
import com.yangz.bloblog.util.PageQueryUtil;
import com.yangz.bloblog.util.PageResult;

import java.util.List;

/**
 * @Package com.yangz.bloblog.service
 * @Author Zhang Yang
 * @Version V1.0
 */
public interface TagService {

    /**
     * 查询标签的分页数据
     *
     * @param pageUtil
     * @return
     */
    PageResult getBlogTagPage(PageQueryUtil pageUtil);

    int getTotalTags();

    Boolean saveTag(String tagName);

    Boolean deleteBatch(Integer[] ids);

    List<BlogTagCount> getBlogTagCountForIndex();
}

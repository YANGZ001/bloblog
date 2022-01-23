package com.yangz.bloblog.service;

import com.yangz.bloblog.entity.BlogLink;
import com.yangz.bloblog.util.PageQueryUtil;
import com.yangz.bloblog.util.PageResult;

import java.util.List;
import java.util.Map;

/**
 * @Package com.yangz.bloblog.service
 * @Author Zhang Yang
 * @Version V1.0
 */

public interface LinkService {
    /**
     * 查询友链的分页数据
     *
     * @param pageUtil
     * @return
     */
    PageResult getBlogLinkPage(PageQueryUtil pageUtil);

    int getTotalLinks();

    Boolean saveLink(BlogLink link);

    BlogLink selectById(Integer id);

    Boolean updateLink(BlogLink tempLink);

    Boolean deleteBatch(Integer[] ids);

    /**
     * 返回友链页面所需的所有数据
     *
     * @return
     */
    Map<Byte, List<BlogLink>> getLinksForLinkPage();
}

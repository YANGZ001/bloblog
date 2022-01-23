package com.yangz.bloblog.service;

import com.yangz.bloblog.entity.BlogCategory;
import com.yangz.bloblog.util.PageQueryUtil;
import com.yangz.bloblog.util.PageResult;

import java.util.List;

/**
 * @Package com.yangz.bloblog.service
 * @Author Zhang Yang
 * @Version V1.0
 */
public interface CategoryService {

    /**
     * 查询分类的分页数据
     *
     * @param pageUtil
     * @return
     */
    PageResult getBlogCategoryPage(PageQueryUtil pageUtil);

    int getTotalCategories();

    /**
     * 添加分类数据
     *
     * @param categoryName
     * @param categoryIcon
     * @return
     */
    Boolean saveCategory(String categoryName,String categoryIcon);

    Boolean updateCategory(Integer categoryId, String categoryName, String categoryIcon);

    Boolean deleteBatch(Integer[] ids);

    List<BlogCategory> getAllCategories();
}

package com.yangz.bloblog.controller.vo;
import java.io.Serializable;

/**
 * @Package com.yangz.bloblog.controller.vo
 * @Author Zhang Yang
 * @Version V1.0
 */

public class SimpleBlogListVO implements Serializable {

    private Long blogId;

    private String blogTitle;

    public Long getBlogId() {
        return blogId;
    }

    public void setBlogId(Long blogId) {
        this.blogId = blogId;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }
}


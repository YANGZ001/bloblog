package com.yangz.bloblog.entity;

/**
 * @Package com.yangz.bloblog.entity
 * @Author Zhang Yang
 * @Version V1.0
 */
public class BlogTagCount {
    private Integer tagId;

    private String tagName;

    private Integer tagCount;


    public Integer getTagId() {
        return tagId;
    }

    public void setTagId(Integer tagId) {
        this.tagId = tagId;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }

    public Integer getTagCount() {
        return tagCount;
    }

    public void setTagCount(Integer tagCount) {
        this.tagCount = tagCount;
    }
}


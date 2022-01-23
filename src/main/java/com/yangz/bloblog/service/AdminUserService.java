package com.yangz.bloblog.service;

import com.yangz.bloblog.entity.AdminUser;

/**
 * @Package com.yangz.bloblog.service.impl
 * @Author Zhang Yang
 * @Date 12/1/22 5:27 PM
 * @Version V1.0
 */
public interface AdminUserService {
    AdminUser login(String userName, String password);

    /**
     * 获取用户信息
     * Get user information
     *
     * @param loginUserId
     * @return
     */
    AdminUser getUserDetailById(Integer loginUserId);

    /**
     * 修改当前登录用户的密码
     * update password of current user
     *
     * @param loginUserId
     * @param originalPassword
     * @param newPassword
     * @return
     */
    Boolean updatePassword(Integer loginUserId, String originalPassword, String newPassword);

    /**
     * 修改当前登录用户的名称信息
     * Update name of current user
     *
     * @param loginUserId
     * @param loginUserName
     * @param nickName
     * @return
     */
    Boolean updateName(Integer loginUserId, String loginUserName, String nickName);
}

package com.yangz.bloblog.service;

/**
 * @Package com.yangz.bloblog.service
 * @Author Zhang Yang
 * @Version V1.0
 */
import java.util.Map;

public interface ConfigService {
    /**
     * 修改配置项
     *
     * @param configName
     * @param configValue
     * @return
     */
    int updateConfig(String configName, String configValue);

    /**
     * 获取所有的配置项
     *
     * @return
     */
    Map<String,String> getAllConfigs();
}

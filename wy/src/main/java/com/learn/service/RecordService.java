package com.learn.service;

import com.learn.entity.RecordEntity;

import java.util.List;
import java.util.Map;

/**
 * 缴费时间
 * 
 */
public interface RecordService {
    /**
    * 查询
	* @return
	*/
	RecordEntity queryObject(Long id);

    /**
    * 查询列表
    * @return
    */
	List<RecordEntity> queryList(Map<String, Object> map);

    /**
    * 查询总数
    * @return
    */
	int queryTotal(Map<String, Object> map);

    /**
    * 保存
    * @return
    */
	void save(RecordEntity record);

    /**
    * 修改
    * @return
    */
	void update(RecordEntity record);

    /**
    * 删除
    * @return
    */
	void delete(Long id);

    /**
    * 批量删除
    * @return
    */
	void deleteBatch(Long[] ids);
}

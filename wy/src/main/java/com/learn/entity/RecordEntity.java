package com.learn.entity;

import java.io.Serializable;
import java.util.Date;


/**
 * 运输站信息
 */
public class RecordEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //
    private Long id;

    //运输站名称
    private String name;

    //分量
    private String price;

    //运输时间
    private Date time;

    //用户名
    private Long user;

    private SysUserEntity sysUserEntity;

    public SysUserEntity getSysUserEntity() {
        return sysUserEntity;
    }

    public void setSysUserEntity(SysUserEntity sysUserEntity) {
        this.sysUserEntity = sysUserEntity;
    }


    //说明
    private String remark;

    //运输状态
    private String state = "待运输";


    private Date gmttime = new Date();

    public Date getGmttime() {
        return gmttime;
    }

    public void setGmttime(Date gmttime) {
        this.gmttime = gmttime;
    }

    /**
     * 设置：
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取：
     */
    public Long getId() {
        return id;
    }

    /**
     * 设置：收费名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取：收费名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置：分量
     */
    public void setPrice(String price) {
        this.price = price;
    }

    /**
     * 获取：分量
     */
    public String getPrice() {
        return price;
    }

    /**
     * 设置：缴费截止时间
     */
    public void setTime(Date time) {
        this.time = time;
    }

    /**
     * 获取：缴费截止时间
     */
    public Date getTime() {
        return time;
    }

    /**
     * 设置：用户名
     */
    public void setUser(Long user) {
        this.user = user;
    }

    /**
     * 获取：用户名
     */
    public Long getUser() {
        return user;
    }

    /**
     * 设置：说明
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    /**
     * 获取：说明
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 设置：运输状态
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * 获取：运输状态
     */
    public String getState() {
        return state;
    }
}

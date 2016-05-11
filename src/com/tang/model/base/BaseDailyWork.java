package com.tang.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseDailyWork<M extends BaseDailyWork<M>> extends Model<M> implements IBean {

	public void setId(java.lang.String id) {
		set("id", id);
	}

	public java.lang.String getId() {
		return get("id");
	}

	public void setIsDelete(java.lang.Integer isDelete) {
		set("isDelete", isDelete);
	}

	public java.lang.Integer getIsDelete() {
		return get("isDelete");
	}

	public void setCreateTime(java.util.Date createTime) {
		set("createTime", createTime);
	}

	public java.util.Date getCreateTime() {
		return get("createTime");
	}

	public void setUpdateTime(java.util.Date updateTime) {
		set("updateTime", updateTime);
	}

	public java.util.Date getUpdateTime() {
		return get("updateTime");
	}

	public void setCommanderId(java.lang.String commanderId) {
		set("commanderId", commanderId);
	}

	public java.lang.String getCommanderId() {
		return get("commanderId");
	}

	public void setExecutorId(java.lang.String executorId) {
		set("executorId", executorId);
	}

	public java.lang.String getExecutorId() {
		return get("executorId");
	}

	public void setWorkType(java.lang.Integer workType) {
		set("workType", workType);
	}

	public java.lang.Integer getWorkType() {
		return get("workType");
	}

	public void setBeginTime(java.util.Date beginTime) {
		set("beginTime", beginTime);
	}

	public java.util.Date getBeginTime() {
		return get("beginTime");
	}

	public void setEndTime(java.util.Date endTime) {
		set("endTime", endTime);
	}

	public java.util.Date getEndTime() {
		return get("endTime");
	}

	public void setTitle(java.lang.String title) {
		set("title", title);
	}

	public java.lang.String getTitle() {
		return get("title");
	}

	public void setDesText(java.lang.String desText) {
		set("desText", desText);
	}

	public java.lang.String getDesText() {
		return get("desText");
	}

}

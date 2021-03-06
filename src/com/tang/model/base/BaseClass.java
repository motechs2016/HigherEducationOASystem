package com.tang.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseClass<M extends BaseClass<M>> extends Model<M> implements IBean {

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

	public void setClassName(java.lang.String className) {
		set("className", className);
	}

	public java.lang.String getClassName() {
		return get("className");
	}

	public void setClassDes(java.lang.String classDes) {
		set("classDes", classDes);
	}

	public java.lang.String getClassDes() {
		return get("classDes");
	}

	public void setCollegeId(java.lang.String collegeId) {
		set("collegeId", collegeId);
	}

	public java.lang.String getCollegeId() {
		return get("collegeId");
	}

	public void setSchooolId(java.lang.String schooolId) {
		set("schooolId", schooolId);
	}

	public java.lang.String getSchooolId() {
		return get("schooolId");
	}

}

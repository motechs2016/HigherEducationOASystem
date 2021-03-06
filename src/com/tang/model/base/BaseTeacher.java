package com.tang.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseTeacher<M extends BaseTeacher<M>> extends Model<M> implements IBean {

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

	public void setTeacherName(java.lang.String teacherName) {
		set("teacherName", teacherName);
	}

	public java.lang.String getTeacherName() {
		return get("teacherName");
	}

	public void setSex(java.lang.Integer sex) {
		set("sex", sex);
	}

	public java.lang.Integer getSex() {
		return get("sex");
	}

	public void setBornDate(java.util.Date bornDate) {
		set("bornDate", bornDate);
	}

	public java.util.Date getBornDate() {
		return get("bornDate");
	}

	public void setMajorId(java.lang.String majorId) {
		set("majorId", majorId);
	}

	public java.lang.String getMajorId() {
		return get("majorId");
	}

	public void setCollegeId(java.lang.String collegeId) {
		set("collegeId", collegeId);
	}

	public java.lang.String getCollegeId() {
		return get("collegeId");
	}

	public void setSchoolId(java.lang.String schoolId) {
		set("schoolId", schoolId);
	}

	public java.lang.String getSchoolId() {
		return get("schoolId");
	}

	public void setUserId(java.lang.String userId) {
		set("userId", userId);
	}

	public java.lang.String getUserId() {
		return get("userId");
	}

	public void setEmail(java.lang.String email) {
		set("email", email);
	}

	public java.lang.String getEmail() {
		return get("email");
	}

}

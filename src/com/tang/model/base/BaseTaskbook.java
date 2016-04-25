package com.tang.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseTaskbook<M extends BaseTaskbook<M>> extends Model<M> implements IBean {

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

	public void setSerialNumber(java.lang.Integer serialNumber) {
		set("serialNumber", serialNumber);
	}

	public java.lang.Integer getSerialNumber() {
		return get("serialNumber");
	}

	public void setCourseCode(java.lang.String courseCode) {
		set("courseCode", courseCode);
	}

	public java.lang.String getCourseCode() {
		return get("courseCode");
	}

	public void setCourseName(java.lang.String courseName) {
		set("courseName", courseName);
	}

	public java.lang.String getCourseName() {
		return get("courseName");
	}

	public void setTeachingNumber(java.lang.String teachingNumber) {
		set("teachingNumber", teachingNumber);
	}

	public java.lang.String getTeachingNumber() {
		return get("teachingNumber");
	}

	public void setMajor(java.lang.String major) {
		set("major", major);
	}

	public java.lang.String getMajor() {
		return get("major");
	}

	public void setSchoolZone(java.lang.String schoolZone) {
		set("schoolZone", schoolZone);
	}

	public java.lang.String getSchoolZone() {
		return get("schoolZone");
	}

	public void setClassAndStudent(java.lang.String classAndStudent) {
		set("classAndStudent", classAndStudent);
	}

	public java.lang.String getClassAndStudent() {
		return get("classAndStudent");
	}

	public void setGrade(java.lang.String grade) {
		set("grade", grade);
	}

	public java.lang.String getGrade() {
		return get("grade");
	}

	public void setTotalStudent(java.lang.Integer totalStudent) {
		set("totalStudent", totalStudent);
	}

	public java.lang.Integer getTotalStudent() {
		return get("totalStudent");
	}

	public void setTestType(java.lang.String testType) {
		set("testType", testType);
	}

	public java.lang.String getTestType() {
		return get("testType");
	}

	public void setWeekTime(java.lang.String weekTime) {
		set("weekTime", weekTime);
	}

	public java.lang.String getWeekTime() {
		return get("weekTime");
	}

	public void setTotalTime(java.lang.String totalTime) {
		set("totalTime", totalTime);
	}

	public java.lang.String getTotalTime() {
		return get("totalTime");
	}

	public void setStartAndEndWeek(java.lang.String startAndEndWeek) {
		set("startAndEndWeek", startAndEndWeek);
	}

	public java.lang.String getStartAndEndWeek() {
		return get("startAndEndWeek");
	}

	public void setClassHour(java.lang.Integer classHour) {
		set("classHour", classHour);
	}

	public java.lang.Integer getClassHour() {
		return get("classHour");
	}

	public void setTeacherSign(java.lang.String teacherSign) {
		set("teacherSign", teacherSign);
	}

	public java.lang.String getTeacherSign() {
		return get("teacherSign");
	}

	public void setTitle(java.lang.String title) {
		set("title", title);
	}

	public java.lang.String getTitle() {
		return get("title");
	}

	public void setCourseProperty(java.lang.String courseProperty) {
		set("courseProperty", courseProperty);
	}

	public java.lang.String getCourseProperty() {
		return get("courseProperty");
	}

	public void setMergeClassOpinion(java.lang.String mergeClassOpinion) {
		set("mergeClassOpinion", mergeClassOpinion);
	}

	public java.lang.String getMergeClassOpinion() {
		return get("mergeClassOpinion");
	}

	public void setClassRoomType(java.lang.String classRoomType) {
		set("classRoomType", classRoomType);
	}

	public java.lang.String getClassRoomType() {
		return get("classRoomType");
	}

	public void setTerm(java.lang.String term) {
		set("term", term);
	}

	public java.lang.String getTerm() {
		return get("term");
	}

}

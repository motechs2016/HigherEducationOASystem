

package com.tang.controller;

import com.alibaba.fastjson.JSONObject;
import com.jfinal.aop.Before;
import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.kit.HttpKit;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.tx.Tx;
import com.tang.bean.RequestBean;
import com.tang.interceptor.LoginInterceptor;
import com.tang.interceptor.PowerInterceptor;
import com.tang.model.Teacher;
import com.tang.util.RecordKit;
import com.tang.util.RequestBeanKit;
import com.tang.util.ResponseBeanKit;
import com.tang.util.SysConstant;
import org.eclipse.jetty.server.Request;

/**
 * Created by Tang on 2016/4/21.
 */
@Before(LoginInterceptor.class)
public class TeacherController extends Controller {

    /**
     * 添加教师 添加教师时 默认创建教师登录账号 邮箱为登录名 初始密码为123456
     *
     * @throws Exception
     */
    @ActionKey("/teacher/addTeacher")
    @Before(Tx.class)
    public void addTeacher() throws Exception {
        HttpKit.setCharSet("utf-8");
        RequestBean requestBean = RequestBeanKit.getRequestBean(getRequest());
        Boolean result = Teacher.dao.addTeacherInfo(requestBean);
        JSONObject responseObject;
        //返回结果 成功返回0 失败返回1
        if (result) {
            responseObject = ResponseBeanKit.responseBean(SysConstant.CODE.SUCCESS, SysConstant.TEACHER.ADDSUCCESS, null, null);
        } else {
            responseObject = ResponseBeanKit.responseBean(SysConstant.CODE.FAIL, SysConstant.TEACHER.ADDFAIL, null, null);
        }
        System.out.println("/teacher/addTeacher---" + responseObject);
        renderJson(responseObject);
    }

    /**
     * 查看本学院教师列表
     */
    @ActionKey("/teacher/queryTeacher")
    public void queryTeacher() {
        HttpKit.setCharSet("utf-8");
        RequestBean requestBean = RequestBeanKit.getRequestBean(getRequest());
        Page<Record> recordPage = Teacher.dao.queryTeacher(requestBean);
        JSONObject responseObject;
        if (null != recordPage) {
            requestBean.getPageInfo().setCount(recordPage.getTotalRow());
            requestBean.getPageInfo().setTotalPage(recordPage.getTotalPage());
            responseObject = ResponseBeanKit.responseBean(SysConstant.CODE.SUCCESS, null, RecordKit.listRecordToMap(Teacher.dao.completQueryTeacher(recordPage)), requestBean.getPageInfo());
        } else {
            responseObject = ResponseBeanKit.responseBean(SysConstant.CODE.FAIL, SysConstant.TEACHER.QUERYTEACHERNULL, null, null);
        }
        System.out.println("/teacher/queryTeacher---" + responseObject);
        renderJson(responseObject);
    }

    /**
     * 获取教师详情
     */
    @ActionKey("/teacher/detailTeacher")
    public void detailTeacher() {
        HttpKit.setCharSet("utf-8");
        RequestBean requestBean = RequestBeanKit.getRequestBean(getRequest());
        Record record = Teacher.dao.detailTeacher(requestBean);
        JSONObject responseObject;
        if (null != record) {
            responseObject = ResponseBeanKit.responseBean(SysConstant.CODE.SUCCESS, null, record.getColumns(), null);
        } else {
            responseObject = ResponseBeanKit.responseBean(SysConstant.CODE.FAIL, SysConstant.TEACHER.TEACHERNOTEXIST, null, null);
        }
        System.out.println("/teacher/detailTeacher---" + responseObject);
        renderJson(responseObject);
    }

    /**
     * 删除教师
     */
    @ActionKey("/teacher/deleteTeacher")
//    @Before(PowerInterceptor.class)
    public void deleteTeacher() {
        HttpKit.setCharSet("utf-8");
        RequestBean requestBean = RequestBeanKit.getRequestBean(getRequest());
        Boolean result = Teacher.dao.deleteTeacher(requestBean);
        JSONObject responseContent;
        if (result) {
            responseContent = ResponseBeanKit.responseBean(SysConstant.CODE.SUCCESS, SysConstant.TEACHER.DELETESUCCESS, null, null);
        } else {
            responseContent = ResponseBeanKit.responseBean(SysConstant.CODE.FAIL, SysConstant.TEACHER.DELETEFAIL, null, null);
        }
        System.out.println("/teacher/deleteTeacher---" + responseContent);
        renderJson(responseContent);
    }

    /**
     * 更新教师信息
     */
    @Before(Tx.class)
    @ActionKey("/teacher/updateTeacher")
    public void updateTeacher() {
        HttpKit.setCharSet("utf-8");
        RequestBean requestBean = RequestBeanKit.getRequestBean(getRequest());
        Boolean result = Teacher.dao.updateTeacher(requestBean);
        JSONObject responseContent;
        if (result) {
            responseContent = ResponseBeanKit.responseBean(SysConstant.CODE.SUCCESS, SysConstant.TEACHER.UPDATESUCCESS, null, null);
        } else {
            responseContent = ResponseBeanKit.responseBean(SysConstant.CODE.FAIL, SysConstant.TEACHER.UPDATEFAIL, null, null);
        }
        System.out.println("/teacher/updateTeacher---" + responseContent);
        renderJson(responseContent);
    }
}

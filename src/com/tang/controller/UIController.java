package com.tang.controller;

import com.jfinal.aop.Before;
import com.jfinal.core.ActionKey;
import com.tang.interceptor.LoginInterceptor;

/**
 * Created by Tang on 2016/5/3.
 * 页面跳转控制器
 */
@Before(LoginInterceptor.class)
public class UIController extends CollegeController {

    /**
     * 上传任务书页面
     */
    @ActionKey("/UI/uploadTaskbookUI")
    public void uploadTaskbookUI(){
        render("/page/taskbook/upload.jsp");
    }

    /**
     * 任务书列表页面
     */
    @ActionKey("/UI/queryTaskbookUI")
    public void queryTaskbookUI(){
        render("/page/taskbook/query.jsp");
    }

    /**
     * 添加教师页面
     */
    @ActionKey("/UI/addTeacherUI")
    public void addTeacherUI(){
        render("/page/teacher/add.jsp");
    }

    /**
     * 教师列表页面
     */
    @ActionKey("/UI/queryTeacherUI")
    public void queryTeacherUI(){
        render("/page/teacher/query.jsp");
    }

    /**
     * 教师详情页面
     */
    @ActionKey("/UI/detailTeacherUI")
    public void detailTeacherUI(){
        render("/page/teacher/detail.jsp");
    }
}
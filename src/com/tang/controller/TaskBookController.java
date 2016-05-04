package com.tang.controller;

import com.jfinal.aop.Before;
import com.jfinal.core.ActionKey;
import com.jfinal.core.Controller;
import com.jfinal.kit.JsonKit;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.plugin.activerecord.tx.Tx;
import com.jfinal.upload.UploadFile;
import com.tang.bean.PageInfo;
import com.tang.bean.RequestBean;
import com.tang.entity.TaskBookExcel;
import com.tang.interceptor.LoginInterceptor;
import com.tang.model.Taskbook;
import com.tang.util.*;
import org.apache.log4j.Logger;

import java.util.List;

/**
 * Created by Tang on 2016/4/7.
 */
@Before(LoginInterceptor.class)
public class TaskBookController extends Controller {

    public static final Logger log = Logger.getLogger(TaskBookController.class);

    @ActionKey("/taskbook/index")
    public void index(){
        render("/page/taskbook/query.jsp");
    }

    /**
     * 任务书列表
     */
    @ActionKey("/taskbook/list")
    public void taskBookList(){
        RequestBean requestBean = RequestBeanKit.getRequestBean(getRequest());
        Page<Record> recordPage = Taskbook.dao.taskbookList(requestBean);
        PageInfo pageInfo = requestBean.getPageInfo();
        if (null != recordPage){
            pageInfo.setCount(recordPage.getTotalRow());
            pageInfo.setTotalPage(recordPage.getTotalPage());
            renderJson(ResponseBeanKit.responseBean(SysConstant.CODE.SUCCESS,SysConstant.TASKBOOK.QUERYSUCCESS,RecordKit.listRecordToMap(recordPage.getList()),pageInfo));
        }else {
            renderJson(ResponseBeanKit.responseBean(SysConstant.CODE.SUCCESS,SysConstant.TASKBOOK.UPLOADFAIL,null,pageInfo));
        }
    }

    /**
     * 导入任务书信息
     * @throws Exception
     */
    @Before(Tx.class)
    @ActionKey("/taskbook/uploadTaskbook")
    public void uploadTaskbook() throws Exception{
        UploadFile uploadFile = getFile("file","uploadFiles");
        String term = getPara("term");
        List<TaskBookExcel> list = TaskExcelKit.readTaskExcel(uploadFile.getFile());
        System.out.println(list.size());
        Boolean result = Taskbook.dao.importTaskbook(list,term);
        if (result){
            renderJson(ResponseBeanKit.responseBean(SysConstant.CODE.SUCCESS,SysConstant.TASKBOOK.UPLOADSUCCESS, null,null));
        }else {
            renderJson(ResponseBeanKit.responseBean(SysConstant.CODE.FAIL,SysConstant.TASKBOOK.UPLOADFAIL,null,null));
        }
    }
}

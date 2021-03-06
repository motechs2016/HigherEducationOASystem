<%--
  Created by IntelliJ IDEA.
  User: Tang
  Date: 2016/4/27
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教师选课情况列表</title>
    <!-- Bootstrap core CSS -->
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="/css/font-awesome.min.css" rel="stylesheet">

    <!-- ionicons -->
    <link href="/css/ionicons.min.css" rel="stylesheet">

    <!-- Simplify -->
    <link href="/css/simplify.min.css" rel="stylesheet">

    <link rel="stylesheet" href="/css/ui-dialog.css">

    <script src="/jquery/jquery.min.js"></script>
    <script src="/js/dialog-min.js"></script>

    <script src="/js/validation.js"></script>

    <script type="application/javascript">

        var session = <%=session.getAttribute("user")%>

        /**
         * 页面加载的时候判断该用户是否有学校和学院
         * */
                $(document).ready(function () {
                    var collegeId = session.teacher.collegeId;
                    var schoolId = session.teacher.schoolId;
                    if (null == collegeId || '' == collegeId || null == schoolId || '' == schoolId) {
                        var d = dialog({
                            title: '提示',
                            content: '您好，欢迎使用本教学办公事务管理系统，您当前没有所在学校和班级，为了保证您体验更多完善的功能，请完善您的个人信息',
                            okValue: '好的，完善个人信息',
                            ok: function () {
                                window.location.href = '/UI/completUserUI';
                            },
                            cancelValue: '暂时不用，我先看看',
                            cancel: function () {
                            }
                        });
                        d.show();
                    } else {
                        queryMajor();
                    }
                });

        /**
         * 获取本学院教师列表 页面一加载就执行
         */

        var teacherList;
        function queryTeacher(currentPage) {
            var collegeId = session.teacher.collegeId;
            var schoolId = session.teacher.schoolId;
            if (null == collegeId || '' == collegeId || null == schoolId || '' == schoolId) {
                alert("对不起！您没有在该学校或者学院任职！无法执行操作！");
                return false;
            }
            var para = {
                "requestContent": {
                    "collegeId": collegeId,
                    "schoolId": schoolId,
                    "teacherName": $("#teacherName").val(),
                    "majorId": $("#selectMajor").val(),
                    "isChoosen": $("#isChoosen").val()
                },
                "pageInfo": {
                    "pageSize": 10,
                    "currentPage": currentPage
                }
            };
            $.ajax({
                data: para,
                type: "post",
                url: "/teacher/queryTeacher",
                dataType: "json",
                cache: false,
                async: false,
                success: function (data) {
                    totalPage = data.page.totalPage;
                    $("#tbody").empty();
                    //给表格填充值
                    teacherList = data.responseContent;
                    for (var i in teacherList) {
                        var str = "<tr> " +
                                "<td> " + checkTdNUllOrEmpty(teacherList[i].teacherName) + " </td>" +
                                "<td> " + checkSex(teacherList[i].sex) + " </td>" +
                                "<td> " + getAge(teacherList[i].bornDate) + " </td>" +
                                "<td> " + checkTdNUllOrEmpty(teacherList[i].email) + " </td>" +
                                "<td> " + checkTdNUllOrEmpty(teacherList[i].schoolName) + " </td>" +
                                "<td> " + checkTdNUllOrEmpty(teacherList[i].collegeName) + " </td>" +
                                "<td> " + checkTdNUllOrEmpty(teacherList[i].majorName) + " </td>" +
                                "<td> " + checkTdTeacherTaskbook(teacherList[i].taskbookList) + "</td>" +
                                "<td><button class='btn btn-warning marginTB-xs detailClick'>查看详情</button>" +
                                "</tr>";
                        $("#tbody").append(str);
                    }

                    //给详情按钮添加点击事件
                    $(".detailClick").click(function () {
                        var inx = $(".detailClick").index(this);
                        for (var i = 0; i < teacherList.length; i++) {
                            if (i == inx) {
//                                $.post("/UI/detailTeacherStatusUI", {"teacherId": teacherList[i].id});
                                window.location.href = "/UI/detailTeacherStatusUI?teacherId=" + teacherList[i].id;
                                break;
                            }
                        }
                    });

                    //重新设置总页数
                    $('#pagination').jqPaginator('option', {
                        totalPages: totalPage
                    });
                },
                error: function () {
                    alert("请求失败");
                }
            });
        }

        $(function () {
            var userRole = session.userRole;
            if (0 == userRole) {
                $(".detailClick").show();
            } else {
                $(".detailClick").hide();
            }
        });


        /**
         * 获取专业列表 给专业下拉框赋值
         * @returns {boolean}
         */
        function queryMajor() {
            var collegeId = session.teacher.collegeId;
            var schoolId = session.teacher.schoolId;
            if (null == collegeId || '' == collegeId || null == schoolId || '' == schoolId) {
                alert("对不起！您没有在该学校或者学院任职！无法执行操作！");
                return false;
            }
            var para = {
                "requestContent": {
                    "collegeId": collegeId,
                    "schoolId": schoolId
                },
                "pageInfo": {
                    "pageSize": 999999,
                    "currentPage": 1
                }
            };
            $.ajax({
                data: para,
                type: "post",
                url: "/major/queryMajor",
                dataType: "json",
                cache: false,
                async: false,
                success: function (data) {
                    $("#selectMajor").empty();
                    $("#selectMajor").append("<option selected='selected' value=''>教师专业</option>");
                    for (var i in data.responseContent) {
                        $("#selectMajor").append("<option value='" + data.responseContent[i].id + "'>" + data.responseContent[i].majorName + "</option>");
                    }
                },
                error: function () {
                    alert("请求失败");
                }
            });
        }
    </script>

</head>
<body>

<%--顶部导航栏--%>
<div class="padding-md">
    <ol class="breadcrumb">
        <li><span class="primary-font"><i class="icon-home"></i></span><a href="/higherEducation/main">Home</a></li>
        <li>选课管理</li>
        <li>教师选课情况查看</li>
        <li class="active">教师状态查看</li>
    </ol>
    <div class="form-inline no-margin">
        <div class="form-group">
            <label class="sr-only">教师姓名</label>
            <input type="text" class="form-control" placeholder="教师姓名" id="teacherName" name="teacherName">
        </div>
        <!-- /form-group -->
        <div class="form-group">
            <select class="form-control" id="selectMajor" name="selectMajor">

            </select>
        </div>

        <div class="form-group">
            <select class="form-control" id="isChoosen" name="isChoosen">
                <option selected="selected" value="">是否选课</option>
                <option value=1>已选课</option>
                <option value=0>未选课</option>
            </select>
        </div>
        <!-- /form-group -->
        <button type="button" class="btn btn-sm btn-success" id="search" onclick="queryTeacher(1)">Search</button>
    </div>
    <%--教师信息列表--%>
    <table class="table table-striped" id="dataTable">
        <thead>
        <tr>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>邮箱</th>
            <th>学校</th>
            <th>学院</th>
            <td>专业</td>
            <td>选课状态</td>
            <td>选课详情</td>
        </tr>
        </thead>
        <tbody id="tbody">
        <!-- 此处开始迭代 -->

        </tbody>
    </table>
</div>
<%-- 分页 --%>
<ul class="pagination" id="pagination"></ul>
<a href="#" class="scroll-to-top hidden-print"><i class="fa fa-chevron-up fa-lg"></i></a>
<%-- 调用分页插件 --%>
<script src="/jquery/jquery.min.js"></script>
<script src="/js/jqPaginator.js"></script>
<script type="application/javascript">

    $.jqPaginator('#pagination', {
        totalPages: 1,
        visiblePages: 10,
        currentPage: 1,
        onPageChange: function (num, type) {
            queryTeacher(num);
        }
    });
</script>
</body>
</html>

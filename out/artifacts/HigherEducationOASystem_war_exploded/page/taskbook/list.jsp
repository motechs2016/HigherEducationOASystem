<%--
  Created by IntelliJ IDEA.
  User: Tang
  Date: 2016/4/7
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>任务书列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap core CSS -->
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="/css/font-awesome.min.css" rel="stylesheet">

    <!-- ionicons -->
    <link href="/css/ionicons.min.css" rel="stylesheet">

    <!-- datatable -->
    <link href="/css/dataTables.bootstrap.css" rel="stylesheet">

    <!-- Simplify -->
    <link href="/css/simplify.min.css" rel="stylesheet">

    <script src="/jquery/jquery.min.js"></script>

    <script type="text/javascript">
        function go() {
            var number = document.getElementById("jump").value;
//            var recordPage = eval("("+XMLHttpRequest.response()+")");
//            alert(recordPage);
            $.ajax({
                type: "post",
                data: {"pageNumber": number},
                url: "/taskbook/list",
                success: function () {

                },
                error: function () {
                    alert("调用失败");
                }
            })
        };

        $("#search").click(function(){
            alert("123");
            $.ajax({
                type: "post",
                data: {
                    "courseName": $("#courseName").val
                    , "major": document.getElementById("major").value,
                    "courseProperty": document.getElementById("courseProperty").value
                    , "term": document.getElementById("term").value
                },
                url: "/taskbook/list",
                success: function () {

                },
                error: function () {
                    alert("调用失败");
                }
            })
        });

        function search() {
            alert("fffff");
            $.ajax({
                type: "post",
                data: {
                    "courseName": $("#courseName").val()
                    , "major": $("#major").val(),
                    "courseProperty": $("#courseProperty").val()
                    , "term": $("#term").val()
                },
                url: "/taskbook/list",
                success: function () {

                },
                error: function () {
                    alert("调用失败");
                }
            })
        }
    </script>
</head>

<body class="overflow-hidden">
<div class="wrapper preload">
    <div class="sidebar-right">
        <div class="sidebar-inner scrollable-sidebar">
            <div class="sidebar-header clearfix">
                <input class="form-control dark-input" placeholder="Search" type="text">

                <div class="btn-group pull-right">
                    <a href="#" class="sidebar-setting" data-toggle="dropdown"><i class="fa fa-cog fa-lg"></i></a>
                    <ul class="dropdown-menu pull-right flipInV">
                        <li><a href="#"><i class="fa fa-circle text-danger"></i><span class="m-left-xs">Busy</span></a>
                        </li>
                        <li><a href="#"><i class="fa fa-circle-o"></i><span class="m-left-xs">Turn Off Chat</span></a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="title-block">
                Group Chat
            </div>
            <div class="content-block">
                <ul class="sidebar-list">
                    <li>
                        <a href="#">
                            <i class="fa fa-circle-o text-success"></i><span class="m-left-xs">Close Friends</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-circle-o text-success"></i><span class="m-left-xs">Business</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="title-block">
                Favorites
            </div>
            <div class="content-block">
                <ul class="sidebar-list">
                    <li>
                        <a href="#" class="clearfix">
                            <img src="/images/profile/profile2.jpg" class="img-circle" alt="user avatar">

                            <div class="chat-detail m-left-sm">
                                <div class="chat-name">
                                    John Doe
                                </div>
                                <div class="chat-message">
                                    Where are you?
                                </div>
                            </div>
                            <div class="chat-status">
                                <i class="fa fa-circle-o text-success"></i>
                            </div>
                            <div class="chat-alert">
                                <span class="badge badge-purple bounceIn animation-delay2">2</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="clearfix">
                            <img src="/images/profile/profile3.jpg" class="img-circle" alt="user avatar">

                            <div class="chat-detail m-left-sm">
                                <div class="chat-name">
                                    Jane Doe
                                </div>
                                <div class="chat-message">
                                    Hello
                                </div>
                            </div>
                            <div class="chat-status">
                                <i class="fa fa-circle-o text-success"></i>
                            </div>
                            <div class="chat-alert">
                                <span class="badge badge-info bounceIn animation-delay2">1</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="clearfix">
                            <img src="/images/profile/profile4.jpg" class="img-circle" alt="user avatar">

                            <div class="chat-detail m-left-sm">
                                <div class="chat-name">
                                    John Doe
                                </div>
                                <div class="chat-message">
                                    See you again next week.
                                </div>
                            </div>
                            <div class="chat-status">
                                <i class="fa fa-circle-o text-danger"></i>
                            </div>
                            <div class="chat-alert">
                                <i class="fa fa-check text-success"></i>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="clearfix">
                            <img src="/images/profile/profile5.jpg" class="img-circle" alt="user avatar">

                            <div class="chat-detail m-left-sm">
                                <div class="chat-name">
                                    John Doe
                                </div>
                                <div class="chat-message">
                                    Hello, Are you there?
                                </div>
                            </div>
                            <div class="chat-status">
                                <i class="fa fa-circle-o text-danger"></i>
                            </div>
                            <div class="chat-alert">
                                <i class="fa fa-reply"></i>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="title-block">
                More friends
            </div>
            <div class="content-block">
                <ul class="sidebar-list">
                    <li>
                        <a href="#" class="clearfix">
                            <img src="/images/profile/profile6.jpg" class="img-circle" alt="user avatar">

                            <div class="chat-detail m-left-sm">
                                <div class="chat-name">
                                    John Doe
                                </div>
                                <div class="chat-message">
                                    Where are you?
                                </div>
                            </div>
                            <div class="chat-status">
                                <i class="fa fa-circle-o text-success"></i>
                            </div>
                            <div class="chat-alert">
                                <span class="badge badge-success bounceIn animation-delay2">2</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="clearfix">
                            <img src="/images/profile/profile7.jpg" class="img-circle" alt="user avatar">

                            <div class="chat-detail m-left-sm">
                                <div class="chat-name">
                                    Jane Doe
                                </div>
                                <div class="chat-message">
                                    Hello
                                </div>
                            </div>
                            <div class="chat-status">
                                <i class="fa fa-circle-o text-success"></i>
                            </div>
                            <div class="chat-alert">
                                <span class="badge badge-danger bounceIn animation-delay2">1</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="clearfix">
                            <img src="/images/profile/profile8.jpg" class="img-circle" alt="user avatar">

                            <div class="chat-detail m-left-sm">
                                <div class="chat-name">
                                    John Doe
                                </div>
                                <div class="chat-message">
                                    See you again next week.
                                </div>
                            </div>
                            <div class="chat-status">
                                <i class="fa fa-circle-o text-danger"></i>
                            </div>
                            <div class="chat-alert">
                                <i class="fa fa-check text-success"></i>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="clearfix">
                            <img src="/images/profile/profile9.jpg" class="img-circle" alt="user avatar">

                            <div class="chat-detail m-left-sm">
                                <div class="chat-name">
                                    John Doe
                                </div>
                                <div class="chat-message">
                                    Hello, Are you there?
                                </div>
                            </div>
                            <div class="chat-status">
                                <i class="fa fa-circle-o text-danger"></i>
                            </div>
                            <div class="chat-alert">
                                <i class="fa fa-reply"></i>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- sidebar-inner -->
    </div>
    <!-- sidebar-right -->
    <header class="top-nav">
        <div class="top-nav-inner">
            <div class="nav-header">
                <button type="button" class="navbar-toggle pull-left sidebar-toggle" id="sidebarToggleSM">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <ul class="nav-notification pull-right">
                    <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-cog fa-lg"></i></a>
                        <span class="badge badge-danger bounceIn">1</span>
                        <ul class="dropdown-menu dropdown-sm pull-right">
                            <li class="user-avatar">
                                <img src="/images/profile/profile1.jpg" alt="" class="img-circle">

                                <div class="user-content">
                                    <h5 class="no-m-bottom">John Doe</h5>

                                    <div class="m-top-xs">
                                        <a href="profile.html" class="m-right-sm">Profile</a>
                                        <a href="signin.html">Log out</a>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="inbox.html">
                                    Inbox
                                    <span class="badge badge-danger bounceIn animation-delay2 pull-right">1</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Notification
                                    <span class="badge badge-purple bounceIn animation-delay3 pull-right">2</span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="sidebarRight-toggle">
                                    Message
                                    <span class="badge badge-success bounceIn animation-delay4 pull-right">7</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">Setting</a>
                            </li>
                        </ul>
                    </li>
                </ul>

                <a href="/higherEducation/main" class="brand">
                    <i class="fa fa-database"></i><span class="brand-name">HAUT OA System</span>
                </a>
            </div>
            <div class="nav-container">
                <button type="button" class="navbar-toggle pull-left sidebar-toggle" id="sidebarToggleLG">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <ul class="nav-notification">
                    <li class="search-list">
                        <div class="search-input-wrapper">
                            <div class="search-input">
                                <form name="search-form" method="post" action="/taskbook/list">
                                    <input type="text" class="form-control input-sm inline-block" name="term">
                                </form>
                                <a href="javascript:document:search_form.submit();" class="input-icon text-normal"><i
                                        class="ion-ios7-search-strong"></i></a>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="pull-right m-right-sm">
                    <div class="user-block hidden-xs">
                        <a href="#" id="userToggle" data-toggle="dropdown">
                            <img src="/images/profile/profile1.jpg" alt=""
                                 class="img-circle inline-block user-profile-pic">

                            <div class="user-detail inline-block">
                                Jane Doe
                                <i class="fa fa-angle-down"></i>
                            </div>
                        </a>

                        <div class="panel border dropdown-menu user-panel">
                            <div class="panel-body paddingTB-sm">
                                <ul>
                                    <li>
                                        <a href="profile.html">
                                            <i class="fa fa-edit fa-lg"></i><span class="m-left-xs">My Profile</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="inbox.html">
                                            <i class="fa fa-inbox fa-lg"></i><span class="m-left-xs">Inboxes</span>
                                            <span class="badge badge-danger bounceIn animation-delay3">2</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="signin.html">
                                            <i class="fa fa-power-off fa-lg"></i><span class="m-left-xs">Sign out</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <ul class="nav-notification">
                        <li>
                            <a href="#" data-toggle="dropdown"><i class="fa fa-envelope fa-lg"></i></a>
                            <span class="badge badge-purple bounceIn animation-delay5 active">2</span>
                            <ul class="dropdown-menu message pull-right">
                                <li><a>You have 4 new unread messages</a></li>
                                <li>
                                    <a class="clearfix" href="#">
                                        <img src="/images/profile/profile2.jpg" alt="User Avatar">

                                        <div class="detail">
                                            <strong>John Doe</strong>

                                            <p class="no-margin">
                                                Lorem ipsum dolor sit amet...
                                            </p>
                                            <small class="text-muted"><i class="fa fa-check text-success"></i> 27m ago
                                            </small>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a class="clearfix" href="#">
                                        <img src="/images/profile/profile3.jpg" alt="User Avatar">

                                        <div class="detail">
                                            <strong>Jane Doe</strong>

                                            <p class="no-margin">
                                                Lorem ipsum dolor sit amet...
                                            </p>
                                            <small class="text-muted"><i class="fa fa-check text-success"></i> 5hr ago
                                            </small>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a class="clearfix" href="#">
                                        <img src="/images/profile/profile4.jpg" alt="User Avatar">

                                        <div class="detail m-left-sm">
                                            <strong>Bill Doe</strong>

                                            <p class="no-margin">
                                                Lorem ipsum dolor sit amet...
                                            </p>
                                            <small class="text-muted"><i class="fa fa-reply"></i> Yesterday</small>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a class="clearfix" href="#">
                                        <img src="/images/profile/profile5.jpg" alt="User Avatar">

                                        <div class="detail">
                                            <strong>Baby Doe</strong>

                                            <p class="no-margin">
                                                Lorem ipsum dolor sit amet...
                                            </p>
                                            <small class="text-muted"><i class="fa fa-reply"></i> 9 Feb 2013</small>
                                        </div>
                                    </a>
                                </li>
                                <li><a href="#">View all messages</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#" data-toggle="dropdown"><i class="fa fa-bell fa-lg"></i></a>
                            <span class="badge badge-info bounceIn animation-delay6 active">4</span>
                            <ul class="dropdown-menu notification dropdown-3 pull-right">
                                <li><a href="#">You have 5 new notifications</a></li>
                                <li>
                                    <a href="#">
												<span class="notification-icon bg-warning">
													<i class="fa fa-warning"></i>
												</span>
                                        <span class="m-left-xs">Server #2 not responding.</span>
                                        <span class="time text-muted">Just now</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
												<span class="notification-icon bg-success">
													<i class="fa fa-plus"></i>
												</span>
                                        <span class="m-left-xs">New user registration.</span>
                                        <span class="time text-muted">2m ago</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
												<span class="notification-icon bg-danger">
													<i class="fa fa-bolt"></i>
												</span>
                                        <span class="m-left-xs">Application error.</span>
                                        <span class="time text-muted">5m ago</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
												<span class="notification-icon bg-success">
													<i class="fa fa-usd"></i>
												</span>
                                        <span class="m-left-xs">2 items sold.</span>
                                        <span class="time text-muted">1hr ago</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
												<span class="notification-icon bg-success">
													<i class="fa fa-plus"></i>
												</span>
                                        <span class="m-left-xs">New user registration.</span>
                                        <span class="time text-muted">1hr ago</span>
                                    </a>
                                </li>
                                <li><a href="#">View all notifications</a></li>
                            </ul>
                        </li>
                        <li class="chat-notification">
                            <a href="#" class="sidebarRight-toggle"><i class="fa fa-comments fa-lg"></i></a>
                            <span class="badge badge-danger bounceIn">1</span>

                            <div class="chat-alert">
                                Hello, Are you there?
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- ./top-nav-inner -->
    </header>
    <aside class="sidebar-menu fixed">
        <div class="sidebar-inner scrollable-sidebar">
            <div class="main-menu">
                <ul class="accordion">
                    <li class="menu-header">
                        Main Menu
                    </li>
                    <li class="bg-palette1">
                        <a href="/higherEducation/main">
									<span class="menu-content block">
										<span class="menu-icon"><i class="block fa fa-home fa-lg"></i></span>
										<span class="text m-left-sm">Home</span>
									</span>
									<span class="menu-content-hover block">
										Home
									</span>
                        </a>
                    </li>
                    <li class="bg-palette2">
                        <a href="/page/main/loading.jsp">
									<span class="menu-content block">
										<span class="menu-icon"><i class="block fa fa-desktop fa-lg"></i></span>
										<span class="text m-left-sm">Loading</span>
									</span>
									<span class="menu-content-hover block">
										Loading
									</span>
                        </a>
                    </li>
                    <li class="openable bg-palette3">
                        <a href="#">
									<span class="menu-content block">
										<span class="menu-icon"><i class="block fa fa-list fa-lg"></i></span>
										<span class="text m-left-sm">任务书管理</span>
										<span class="submenu-icon"></span>
									</span>
									<span class="menu-content-hover block">
										Form
									</span>
                        </a>
                        <ul class="submenu bg-palette4">
                            <li><a href="/page/taskbook/uploadTaskBook.jsp"><span class="submenu-label">上传任务书</span></a>
                            </li>
                            <li><a href="/taskbook/list?pageNumber=1&pageSize=10"><span
                                    class="submenu-label">查看任务书</span></a></li>
                        </ul>
                    </li>
                    <li class="openable bg-palette4 open">
                        <a href="#">
									<span class="menu-content block">
										<span class="menu-icon"><i class="block fa fa-tags fa-lg"></i></span>
										<span class="text m-left-sm">UI Elements</span>
										<span class="submenu-icon"></span>
									</span>
									<span class="menu-content-hover block">
										UI Kits
									</span>
                        </a>
                        <ul class="submenu">
                            <li><a href="ui_element.html"><span class="submenu-label">Basic Elements</span></a></li>
                            <li><a href="button.html"><span class="submenu-label">Button & Icons</span></a></li>
                            <li class="openable open">
                                <a href="#">
                                    <small class="badge badge-success badge-square bounceIn animation-delay2 m-left-xs pull-right">
                                        2
                                    </small>
                                    <span class="submenu-label">Tables</span>
                                </a>
                                <ul class="submenu third-level">
                                    <li><a href="static_table.html"><span class="submenu-label">Static Table</span></a>
                                    </li>
                                    <li class="active"><a href="datatable.html"><span
                                            class="submenu-label">DataTables</span></a></li>
                                </ul>
                            </li>
                            <li><a href="widget.html"><span class="submenu-label">Widget</span></a></li>
                            <li><a href="tab.html"><span class="submenu-label">Tab</span></a></li>
                            <li><a href="calendar.html"><span class="submenu-label">Calendar</span></a></li>
                            <li><a href="treeview.html"><span class="submenu-label">Treeview</span></a></li>
                            <li><a href="nestable_list.html"><span class="submenu-label">Nestable Lists</span></a></li>
                        </ul>
                    </li>
                    <li class="bg-palette1">
                        <a href="inbox.html">
									<span class="menu-content block">
										<span class="menu-icon"><i class="block fa fa-envelope fa-lg"></i></span>
										<span class="text m-left-sm">Inboxs</span>
										<small class="badge badge-danger badge-square bounceIn animation-delay5 m-left-xs">
                                            5
                                        </small>
									</span>
									<span class="menu-content-hover block">
										Inboxs
									</span>
                        </a>
                    </li>
                    <li class="bg-palette2">
                        <a href="timeline.html">
									<span class="menu-content block">
										<span class="menu-icon"><i class="block fa fa-clock-o fa-lg"></i></span>
										<span class="text m-left-sm">Timeline</span>
										<small class="badge badge-warning badge-square bounceIn animation-delay6 m-left-xs pull-right">
                                            7
                                        </small>
									</span>
									<span class="menu-content-hover block">
										Timeline
									</span>
                        </a>
                    </li>
                    <li class="menu-header">
                        Others
                    </li>
                    <li class="openable bg-palette3">
                        <a href="#">
									<span class="menu-content block">
										<span class="menu-icon"><i class="block fa fa-gift fa-lg"></i></span>
										<span class="text m-left-sm">Extra Pages</span>
										<span class="submenu-icon"></span>
									</span>
									<span class="menu-content-hover block">
										Pages
									</span>
                        </a>
                        <ul class="submenu">
                            <li><a href="signin.html"><span class="submenu-label">Sign in</span></a></li>
                            <li><a href="signup.html"><span class="submenu-label">Sign Up</span></a></li>
                            <li><a href="lockscreen.html"><span class="submenu-label">Lock Screen</span></a></li>
                            <li><a href="profile.html"><span class="submenu-label">Profile</span></a></li>
                            <li><a href="gallery.html"><span class="submenu-label">Gallery</span></a></li>
                            <li><a href="blog.html"><span class="submenu-label">Blog</span></a></li>
                            <li><a href="single_post.html"><span class="submenu-label">Single Post</span></a></li>
                            <li><a href="pricing.html"><span class="submenu-label">Pricing</span></a></li>
                            <li><a href="invoice.html"><span class="submenu-label">Invoice</span></a></li>
                            <li><a href="error404.html"><span class="submenu-label">Error404</span></a></li>
                            <li><a href="blank.html"><span class="submenu-label">Blank</span></a></li>
                        </ul>
                    </li>
                    <li class="openable bg-palette4">
                        <a href="#">
									<span class="menu-content block">
										<span class="menu-icon"><i class="block fa fa-list fa-lg"></i></span>
										<span class="text m-left-sm">Menu Level</span>
										<span class="submenu-icon"></span>
									</span>
									<span class="menu-content-hover block">
										Menu
									</span>
                        </a>
                        <ul class="submenu">
                            <li class="openable">
                                <a href="signin.html">
                                    <span class="submenu-label">menu 2.1</span>
                                    <small class="badge badge-success badge-square bounceIn animation-delay2 m-left-xs pull-right">
                                        3
                                    </small>
                                </a>
                                <ul class="submenu third-level">
                                    <li><a href="#"><span class="submenu-label">menu 3.1</span></a></li>
                                    <li><a href="#"><span class="submenu-label">menu 3.2</span></a></li>
                                    <li class="openable">
                                        <a href="#">
                                            <span class="submenu-label">menu 3.3</span>
                                            <small class="badge badge-danger badge-square bounceIn animation-delay2 m-left-xs pull-right">
                                                2
                                            </small>
                                        </a>
                                        <ul class="submenu fourth-level">
                                            <li><a href="#"><span class="submenu-label">menu 4.1</span></a></li>
                                            <li><a href="#"><span class="submenu-label">menu 4.2</span></a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="#"><span class="submenu-label">menu 2.2</span></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="sidebar-fix-bottom clearfix">
                <div class="user-dropdown dropup pull-left">
                    <a href="#" class="dropdwon-toggle font-18" data-toggle="dropdown"><i class="ion-person-add"></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="inbox.html">
                                Inbox
                                <span class="badge badge-danger bounceIn animation-delay2 pull-right">1</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Notification
                                <span class="badge badge-purple bounceIn animation-delay3 pull-right">2</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="sidebarRight-toggle">
                                Message
                                <span class="badge badge-success bounceIn animation-delay4 pull-right">7</span>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">Setting</a>
                        </li>
                    </ul>
                </div>
                <a href="lockscreen.html" class="pull-right font-18"><i class="ion-log-out"></i></a>
            </div>
        </div>
        <!-- sidebar-inner -->
    </aside>

    <div class="main-container">
        <div class="padding-md">
            <ul class="breadcrumb">
                <li><span class="primary-font"><i class="icon-home"></i></span><a href="index.html"> Home</a></li>
                <li>任务书管理</li>
                <li>任务书列表</li>
            </ul>
            <div>
                <form class="form-inline no-margin" id="searchForm">
                    <div class="form-group">
                        <label class="sr-only">课程名称</label>
                        <input type="text" class="form-control" placeholder="课程名称" id="courseName" name="courseName">
                    </div>
                    <!-- /form-group -->
                    <div class="form-group">
                        <label class="sr-only">专业</label>
                        <input type="text" class="form-control" placeholder="专业" id="major" name="major">
                    </div>
                    <!-- /form-group -->
                    <div class="form-group">
                        <label class="sr-only">课程性质</label>
                        <input type="text" class="form-control" placeholder="课程性质" id="courseProperty"
                               name="courseProperty">
                    </div>
                    <!-- /form-group -->
                    <div class="form-group">
                        <label class="sr-only">学期</label>
                        <input type="text" class="form-control" placeholder="学期" id="term" name="term">
                    </div>
                    <!-- /form-group -->
                    <button type="button" class="btn btn-sm btn-success" id="search">Search</button>
                    <script>
                        $("#search").click(function(){
                            $.ajax({
                                type: "post",
                                data: {
                                    "courseName": document.getElementById("courseName").value
                                    , "major": document.getElementById("major").value,
                                    "courseProperty": document.getElementById("courseProperty").value
                                    , "term": document.getElementById("term").value
                                },
                                url: "/taskbook/list",
                                success: function () {

                                },
                                error: function () {
                                    alert("调用失败");
                                }
                            })
                        })
                    </script>
                </form>
            </div>
            <table class="table table-striped" id="dataTable">
                <thead>
                <tr>
                    <th>序号</th>
                    <th>课程代码</th>
                    <th>课程名称</th>
                    <th>教学计划号</th>
                    <th>专业</th>
                    <th>校区</th>
                    <th>班级及人数</th>
                    <th>年级</th>
                    <th>总人数</th>
                    <th>考核方式</th>
                    <th>周学时</th>
                    <th>总学时</th>
                    <th>上课起止周次</th>
                    <th>时数</th>
                    <th>教师签名</th>
                    <th>职称</th>
                    <th>课程性质</th>
                    <th>合班意见</th>
                    <th>教室类型</th>
                    <th>学期</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="taskbook" items="${recordPage.list}">
                    <tr>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.serialNumber == null || taskbook.serialNumber == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.serialNumber}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.courseCode == null || taskbook.courseCode == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.courseCode}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.courseName == null || taskbook.courseName == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.courseName}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.teachingNumber == null || taskbook.teachingNumber == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.teachingNumber}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.major == null || taskbook.major == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.major}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.schoolZone == null || taskbook.schoolZone == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.schoolZone}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.classAndStudent == null || taskbook.classAndStudent == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.classAndStudent}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.grade == null || taskbook.grade == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.grade}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.totalStudent == null || taskbook.totalStudent == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.totalStudent}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.testType == null || taskbook.testType == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.testType}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.weekTime == null || taskbook.weekTime == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.weekTime}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.totalTime == null || taskbook.totalTime == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.totalTime}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.startAndEndWeek == null || taskbook.startAndEndWeek == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.startAndEndWeek}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.classHour == null || taskbook.classHour == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.classHour}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.teacherSign == null || taskbook.teacherSign == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.teacherSign}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.title == null || taskbook.title == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.title}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.courseProperty == null || taskbook.courseProperty == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.courseProperty}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.mergeClassOpinion == null || taskbook.mergeClassOpinion == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.mergeClassOpinion}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.classRoomType == null || taskbook.classRoomType == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.classRoomType}
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${taskbook.term == null || taskbook.term == ''}">
                                    <span class="label label-danger">未填写</span>
                                </c:when>
                                <c:otherwise>
                                    ${taskbook.term}
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <!-- ./padding-md -->
        <%--<div id="pager">
            <ul class="pagination pagination-split">
                <li class="disabled"><a href="#">&laquo;</a></li>
                <li class="active"><a href="/taskbook/list?pageNumber=1">1</a></li>
                <li><a href="/taskbook/list?pageNumber=2">2</a></li>
                <li><a href="/taskbook/list?pageNumber=3">3</a></li>
                <li><a href="/taskbook/list?pageNumber=4">4</a></li>
                <li><a href="/taskbook/list?pageNumber=5">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </div>--%>
        <div class="pages">
            <div id="Pagination">
                <ul class="pagination pagination-split"></ul>
            </div>
            <div class="searchPage">
                <span class="page-sum">共<strong class="allPage">${recordPage.totalPage}</strong>页</span>
                <span class="page-go">跳转到第<input type="text" id="jump">页</span>
                <button type="button" class="btn btn-success marginTB-xs" onclick="go()">GO<i
                        class="fa fa-angle-double-right m-left-xs"></i></button>
            </div>
        </div>
    </div>
    <!-- /main-container -->
    <footer class="footer">
				<span class="footer-brand">
					<strong class="text-danger">HAUT OA System</strong>
				</span>

        <p class="no-margin">
            &copy; 2016 <strong>CoderKK</strong>. ALL Rights Reserved.
        </p>
    </footer>
</div>
<!-- /wrapper -->
</div>
<a href="#" class="scroll-to-top hidden-print"><i class="fa fa-chevron-up fa-lg"></i></a>

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<!-- Jquery -->
<script src="/js/jquery-1.11.1.min.js"></script>

<!-- Bootstrap -->
<script src="/bootstrap/js/bootstrap.min.js"></script>

<!-- Datatable -->
<script src='/js/jquery.dataTables.min.js'></script>
<script src='/js/uncompressed/dataTables.bootstrap.js'></script>

<!-- Slimscroll -->
<script src='/js/jquery.slimscroll.min.js'></script>

<!-- Popup Overlay -->
<script src='/js/jquery.popupoverlay.min.js'></script>

<!-- Modernizr -->
<script src='/js/modernizr.min.js'></script>

<!-- Simplify -->
<script src="/js/simplify/simplify.js"></script>


</body>
</html>

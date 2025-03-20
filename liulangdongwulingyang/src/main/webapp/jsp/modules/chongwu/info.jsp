<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>

</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto" id="navUl">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑宠物</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">宠物管理</li>
                        <li class="breadcrumb-item active">宠物登记</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">宠物信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表所有字段 -->

                                        <div class="form-group col-md-6">
                                            <label>姓名</label>
                                            <input id="yonghuName" name="yonghuName" class="form-control"
                                                   v-model="ruleForm.yonghuName" readonly>
                                        </div>


                                    <div class="form-group col-md-6">
                                        <label>性别</label>
                                        <input id="yonghuSexValue" name="yonghuSexValue" class="form-control"
                                               v-model="ruleForm.yonghuSexValue" readonly>
                                    </div>


                                        <div class="form-group col-md-6">
                                            <label>年龄</label>
                                            <input id="yonghuAge" name="yonghuAge" class="form-control"
                                                   v-model="ruleForm.yonghuAge" readonly>
                                        </div>


                                    <div class="form-group col-md-6">
                                        <label>用户头像</label>
                                        <img id="yonghuPhotoImg" width="100" height="100">
                                    </div>

                                        <div class="form-group col-md-6">
                                            <label>工作</label>
                                            <input id="yonghuGongzuo" name="yonghuGongzuo" class="form-control"
                                                   v-model="ruleForm.yonghuGongzuo" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>收入</label>
                                            <input id="yonghuJine" name="yonghuJine" class="form-control"
                                                   v-model="ruleForm.yonghuJine" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>家庭地址</label>
                                            <input id="yonghuAddress" name="yonghuAddress" class="form-control"
                                                   v-model="ruleForm.yonghuAddress" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>联系方式</label>
                                            <input id="yonghuPhone" name="yonghuPhone" class="form-control"
                                                   v-model="ruleForm.yonghuPhone" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>身份证号</label>
                                            <input id="yonghuIdNumber" name="yonghuIdNumber" class="form-control"
                                                   v-model="ruleForm.yonghuIdNumber" readonly>
                                        </div>


                                        <div class="form-group col-md-6">
                                            <label>爱好</label>
                                            <input id="yonghuAihao" name="yonghuAihao" class="form-control"
                                                   v-model="ruleForm.yonghuAihao" readonly>
                                        </div>


                                    <div class="form-group col-md-6">
                                        <label>是否养过宠物</label>
                                        <input id="yonghuYesnoValue" name="yonghuYesnoValue" class="form-control"
                                               v-model="ruleForm.yonghuYesnoValue" readonly>
                                    </div>

                            <!-- 本表所有字段 -->



                                    <input id="updateId" name="id" type="hidden">

                                    <div class="form-group col-md-6">
                                        <label>宠物名称</label>
                                        <input id="chongwuName" name="chongwuName" class="form-control"
                                               v-model="ruleForm.chongwuName" readonly>
                                    </div>


                                <div class="form-group col-md-6">
                                    <label>宠物类别</label>
                                    <input id="chongwuValue" name="chongwuValue" class="form-control"
                                           v-model="ruleForm.chongwuValue" readonly>
                                </div>


                                <div class="form-group col-md-6">
                                    <label>性别</label>
                                    <input id="chongwuSexValue" name="chongwuSexValue" class="form-control"
                                           v-model="ruleForm.chongwuSexValue" readonly>
                                </div>


                                    <div class="form-group col-md-6">
                                        <label>年龄</label>
                                        <input id="chongwuAge" name="chongwuAge" class="form-control"
                                               v-model="ruleForm.chongwuAge" readonly>
                                    </div>


                                    <div class="form-group col-md-6">
                                        <label>花色</label>
                                        <input id="chongwuHuase" name="chongwuHuase" class="form-control"
                                               v-model="ruleForm.chongwuHuase" readonly>
                                    </div>


                                <div class="form-group col-md-6">
                                    <label>健康情况</label>
                                    <input id="chongwuJiankangValue" name="chongwuJiankangValue" class="form-control"
                                           v-model="ruleForm.chongwuJiankangValue" readonly>
                                </div>


                                    <div class="form-group col-md-6">
                                        <label>所在地</label>
                                        <input id="chongwuSuozaidi" name="chongwuSuozaidi" class="form-control"
                                               v-model="ruleForm.chongwuSuozaidi" readonly>
                                    </div>


                                    <div class="form-group col-md-6">
                                        <label>领养要求</label>
                                        <input id="chongwuLingyangyaoqiu" name="chongwuLingyangyaoqiu" class="form-control"
                                               v-model="ruleForm.chongwuLingyangyaoqiu" readonly>
                                    </div>


                                    <div class="form-group col-md-6">
                                        <label>联系方式</label>
                                        <input id="chongwuLianxifangshi" name="chongwuLianxifangshi" class="form-control"
                                               v-model="ruleForm.chongwuLianxifangshi" readonly>
                                    </div>

                                <div class="form-group col-md-6">
                                    <label>宠物照片</label>
                                    <img id="chongwuPhotoImg" width="100" height="100">
                                </div>

                                <div>
                                    <label>宠物详情</label>
                                    <script id="chongwuContentEditor" type="text/plain"
                                            style="width:800px;height:230px;"></script>
                                    <script type = "text/javascript" >
                                    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                    //相见文档配置属于你自己的编译器
                                    var chongwuContentUe = UE.getEditor('chongwuContentEditor', {
                                        toolbars: [
                                            [
                                                'undo', //撤销
                                                'bold', //加粗
                                                'redo', //重做
                                                'underline', //下划线
                                                'horizontal', //分隔线
                                                'inserttitle', //插入标题
                                                'cleardoc', //清空文档
                                                'fontfamily', //字体
                                                'fontsize', //字号
                                                'paragraph', //段落格式
                                                'inserttable', //插入表格
                                                'justifyleft', //居左对齐
                                                'justifyright', //居右对齐
                                                'justifycenter', //居中对
                                                'justifyjustify', //两端对齐
                                                'forecolor', //字体颜色
                                                'fullscreen', //全屏
                                                'edittip ', //编辑提示
                                                'customstyle', //自定义标题
                                            ]
                                        ]
                                    });
                                    </script>
                                    <input type="hidden" name="chongwuContent" id="chongwuContent-input">
                                </div>


                                <div class="form-group col-md-6">
                                    <label>是否被领养</label>
                                    <input id="chongwuYesnoValue" name="chongwuYesnoValue" class="form-control"
                                           v-model="ruleForm.chongwuYesnoValue" readonly>
                                </div>

                                <input id="yonghuId" name="yonghuId" v-model="ruleForm.yonghuId" readonly type="hidden">
                                <div class="form-group col-md-12 mb-3">
                                    <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>

<script>
    <%@ include file="../../utils/menu.jsp"%>
            <%@ include file="../../static/setMenu.js"%>
            <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "chongwu";
    var pageType = "add-or-update";
    var updateId = "";

    var chongwuTypesOptions = [];
    var chongwuSexTypesOptions = [];
    var chongwuJiankangTypesOptions = [];
    var chongwuYesnoTypesOptions = [];

    var ruleForm = {};
    var vm = new Vue({
        el: '#addOrUpdateForm',
        data: {
            ruleForm: {},
        },
        beforeCreate: function () {
            var id = window.sessionStorage.getItem("updateId");
            if (id != null && id != "" && id != "null") {
                $.ajax({
                    type: "GET",
                    url: baseUrl + "chongwu/info/" + id,
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                    },
                    success: function (res) {
                        if (res.code == 0) {
                            vm.ruleForm = res.data;
                            ruleForm = res.data;
                            showImg();
                            setContent();
                        } else if (res.code == 401) {
                        <%@ include file="../../static/toLogin.jsp"%>
                        } else {
                            alert(res.msg)
                        }
                    },
                });
            }
        },
        methods: {}
    });


    // 填充富文本框
    function setContent() {

        if (ruleForm.chongwuContent != null && ruleForm.chongwuContent != 'null' && ruleForm.chongwuContent != '') {
            var chongwuContentUeditor = UE.getEditor('chongwuContentEditor');
                chongwuContentUeditor.ready(function () {
                    var mes = '' + ruleForm.chongwuContent;
                    chongwuContentUeditor.setContent(mes);
                    chongwuContentUeditor.setDisabled('fullscreen');
            });
        }
    }


    //图片显示
    function showImg() {
        $("#yonghuPhotoImg").attr("src", ruleForm.yonghuPhoto);
        $("#chongwuPhotoImg").attr("src", ruleForm.chongwuPhoto);
    }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addchongwu');
        window.location.href = "list.jsp";
    }

    // 下载
    function download(fileName) {
        var url = baseUrl+'file/download?fileName='+fileName;
        window.open(url);
    }

    //设置下载
    function setDownloadBtn() {

    }

    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });


    <%@ include file="../../static/myInfo.js"%>
    });
    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
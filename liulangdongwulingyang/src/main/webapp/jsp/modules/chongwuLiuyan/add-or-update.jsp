<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
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
    .error {
        color: red;
    }
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
                    <ul id="navUl" class="navbar-nav mr-auto">

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
                    <h3 class="block-title">编辑宠物留言</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">宠物留言管理</li>
                        <li class="breadcrumb-item active">编辑宠物留言</li>
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
                        <h3 class="widget-title">宠物留言信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6">
                                        <label>宠物名称</label>
                                        <input id="chongwuName" name="chongwuName" class="form-control"
                                               placeholder="宠物名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>宠物类别</label>
                                        <input id="chongwuValue" name="chongwuValue" class="form-control"
                                               placeholder="宠物类别" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>性别</label>
                                        <input id="chongwuSexValue" name="chongwuSexValue" class="form-control"
                                               placeholder="性别" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>年龄</label>
                                        <input id="chongwuAge" name="chongwuAge" class="form-control"
                                               placeholder="年龄" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>花色</label>
                                        <input id="chongwuHuase" name="chongwuHuase" class="form-control"
                                               placeholder="花色" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>健康情况</label>
                                        <input id="chongwuJiankangValue" name="chongwuJiankangValue" class="form-control"
                                               placeholder="健康情况" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>所在地</label>
                                        <input id="chongwuSuozaidi" name="chongwuSuozaidi" class="form-control"
                                               placeholder="所在地" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>领养要求</label>
                                        <input id="chongwuLingyangyaoqiu" name="chongwuLingyangyaoqiu" class="form-control"
                                               placeholder="领养要求" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>联系方式</label>
                                        <input id="chongwuLianxifangshi" name="chongwuLianxifangshi" class="form-control"
                                               placeholder="联系方式" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>宠物照片</label>
                                        <img id="chongwuPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>是否被领养</label>
                                        <input id="chongwuYesnoValue" name="chongwuYesnoValue" class="form-control"
                                               placeholder="是否被领养" readonly>
                                    </div>
                                    <%--<div class="form-group col-md-6">
                                        <label>用户</label>
                                        <input id="yonghuId" name="yonghuId" class="form-control"
                                               placeholder="用户" readonly>
                                    </div>--%>
                                    <%--<div class="form-group col-md-6">
                                        <label>用户</label>
                                        <div>
                                            <select id="yonghuSelect" name="yonghuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>--%>
                                    <div class="form-group col-md-6">
                                        <label>姓名</label>
                                        <input id="yonghuName" name="yonghuName" class="form-control"
                                               placeholder="姓名" readonly>
                                    </div>
                                    <%--<div class="form-group col-md-6">
                                        <label>性别</label>
                                        <input id="yonghuSexValue" name="yonghuSexValue" class="form-control"
                                               placeholder="性别" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>年龄</label>
                                        <input id="yonghuAge" name="yonghuAge" class="form-control"
                                               placeholder="年龄" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>用户头像</label>
                                        <img id="yonghuPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>工作</label>
                                        <input id="yonghuGongzuo" name="yonghuGongzuo" class="form-control"
                                               placeholder="工作" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>收入</label>
                                        <input id="yonghuJine" name="yonghuJine" class="form-control"
                                               placeholder="收入" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>家庭地址</label>
                                        <input id="yonghuAddress" name="yonghuAddress" class="form-control"
                                               placeholder="家庭地址" readonly>
                                    </div>--%>
                                    <div class="form-group col-md-6">
                                        <label>联系方式</label>
                                        <input id="yonghuPhone" name="yonghuPhone" class="form-control"
                                               placeholder="联系方式" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>身份证号</label>
                                        <input id="yonghuIdNumber" name="yonghuIdNumber" class="form-control"
                                               placeholder="身份证号" readonly>
                                    </div>
                                    <%--<div class="form-group col-md-6">
                                        <label>爱好</label>
                                        <input id="yonghuAihao" name="yonghuAihao" class="form-control"
                                               placeholder="爱好" readonly>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>是否养过宠物</label>
                                        <input id="yonghuYesnoValue" name="yonghuYesnoValue" class="form-control"
                                               placeholder="是否养过宠物" readonly>
                                    </div>--%>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="chongwuId" name="chongwuId" type="hidden">
                                <input id="yonghuId" name="yonghuId" type="hidden">
                                    <div class="form-group  col-md-6">
                                        <label>留言内容</label>
                                        <input id="chongwuLiuyanContentupload" name="file" type="file">
                                        <script id="chongwuLiuyanContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var chongwuLiuyanContentUe = UE.getEditor('chongwuLiuyanContentEditor', {
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
                                        <input type="hidden" name="chongwuLiuyanContent" id="chongwuLiuyanContent-input">
                                    </div>
                                    <div class="form-group  col-md-6">
                                        <label>回复内容</label>
                                        <%--<input id="replyContentupload" name="file" type="file">--%>
                                        <script id="replyContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var replyContentUe = UE.getEditor('replyContentEditor', {
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
                                        <input type="hidden" name="replyContent" id="replyContent-input">
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
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
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "chongwuLiuyan";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
        <!-- 级联表的下拉框数组 -->
    var chongwuOptions = [];
    var yonghuOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#chongwuLiuyanContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('chongwuLiuyanContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


        $('#replyContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('replyContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
           if($("#chongwuId") !=null){
               var chongwuId = $("#chongwuId").val();
               if(chongwuId == null || chongwuId =='' || chongwuId == 'null'){
                   alert("宠物不能为空");
                   return;
               }
           }
           if($("#yonghuId") !=null){
               var yonghuId = $("#yonghuId").val();
               if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
                   alert("用户不能为空");
                   return;
               }
           }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';
            }
            httpJson("chongwuLiuyan/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addchongwuLiuyan');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        <!-- 查询级联表的所有列表 -->
        function chongwuSelect() {
            //填充下拉框选项
            http("chongwu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    chongwuOptions = res.data.list;
                }
            });
        }

        function chongwuSelectOne(id) {
            http("chongwu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                chongwuShowImg();
                chongwuShowVideo();
                chongwuDataBind();
            }
        });
        }
        function yonghuSelect() {
            //填充下拉框选项
            http("yonghu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuOptions = res.data.list;
                }
            });
        }

        function yonghuSelectOne(id) {
            http("yonghu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yonghuShowImg();
                yonghuShowVideo();
                yonghuDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->

        function initializationchongwuSelect() {
            var chongwuSelect = document.getElementById('chongwuSelect');
            if(chongwuSelect != null && chongwuOptions != null  && chongwuOptions.length > 0 ) {
                for (var i = 0; i < chongwuOptions.length; i++) {
                        chongwuSelect.add(new Option(chongwuOptions[i].chongwuName, chongwuOptions[i].id));
                }

                $("#chongwuSelect").change(function(e) {
                        chongwuSelectOne(e.target.value);
                });
            }

        }

        function initializationyonghuSelect() {
            var yonghuSelect = document.getElementById('yonghuSelect');
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                        yonghuSelect.add(new Option(yonghuOptions[i].yonghuName, yonghuOptions[i].id));
                }

                $("#yonghuSelect").change(function(e) {
                        yonghuSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->
        <!--  级联表的下拉框回显  -->
            var chongwuSelect = document.getElementById("chongwuSelect");
            if(chongwuSelect != null && chongwuOptions != null  && chongwuOptions.length > 0 ) {
                for (var i = 0; i < chongwuOptions.length; i++) {
                    if (chongwuOptions[i].id == ruleForm.chongwuId) {//下拉框value对比,如果一致就赋值汉字
                        chongwuSelect.options[i+1].selected = true;
                        $("#chongwuSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yonghuSelect = document.getElementById("yonghuSelect");
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                    if (yonghuOptions[i].id == ruleForm.yonghuId) {//下拉框value对比,如果一致就赋值汉字
                        yonghuSelect.options[i+1].selected = true;
                        $("#yonghuSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.chongwuLiuyanContent != null && ruleForm.chongwuLiuyanContent != 'null' && ruleForm.chongwuLiuyanContent != '' && $("#chongwuLiuyanContentupload").length>0) {

            var chongwuLiuyanContentUeditor = UE.getEditor('chongwuLiuyanContentEditor');
            chongwuLiuyanContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.chongwuLiuyanContent != null){
                    mes = ''+ ruleForm.chongwuLiuyanContent;
                }
                chongwuLiuyanContentUeditor.setContent(mes);
            });
        }
        if (ruleForm.replyContent != null && ruleForm.replyContent != 'null' && ruleForm.replyContent != '' /*&& $("#replyContentupload").length>0*/) {

            var replyContentUeditor = UE.getEditor('replyContentEditor');
            replyContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.replyContent != null){
                    mes = ''+ ruleForm.replyContent;
                }
                replyContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#chongwuLiuyanContentupload").length>0) {
            var chongwuLiuyanContentEditor = UE.getEditor('chongwuLiuyanContentEditor');
            if (chongwuLiuyanContentEditor.hasContents()) {
                $('#chongwuLiuyanContent-input').attr('value', chongwuLiuyanContentEditor.getPlainTxt());
            }
        }
        // if($("#replyContentupload").length>0) {
            var replyContentEditor = UE.getEditor('replyContentEditor');
            if (replyContentEditor.hasContents()) {
                $('#replyContent-input').attr('value', replyContentEditor.getPlainTxt());
            }
        // }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addchongwuLiuyan');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                chongwuId: "required",
                yonghuId: "required",
                chongwuLiuyanContent: "required",
                replyContent: "required",
                insertTime: "required",
            },
            messages: {
                chongwuId: "宠物不能为空",
                yonghuId: "用户不能为空",
                chongwuLiuyanContent: "留言内容不能为空",
                replyContent: "回复内容不能为空",
                insertTime: "留言时间不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addchongwuLiuyan = window.sessionStorage.getItem("addchongwuLiuyan");
        if (addchongwuLiuyan != null && addchongwuLiuyan != "" && addchongwuLiuyan != "null") {
            window.sessionStorage.removeItem('addchongwuLiuyan');
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("chongwuLiuyan/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#insertTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        chongwuDataBind();
        yonghuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#chongwuId").val(ruleForm.chongwuId);
        $("#yonghuId").val(ruleForm.yonghuId);
        $("#chongwuLiuyanContent").val(ruleForm.chongwuLiuyanContent);
        $("#replyContent").val(ruleForm.replyContent);
        $("#insertTime-input").val(ruleForm.insertTime);

    }
    <!--  级联表的数据回显  -->
    function chongwuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#chongwuId").val(ruleForm.id);

        $("#chongwuName").val(ruleForm.chongwuName);
        $("#chongwuValue").val(ruleForm.chongwuValue);
        $("#chongwuSexValue").val(ruleForm.chongwuSexValue);
        $("#chongwuAge").val(ruleForm.chongwuAge);
        $("#chongwuHuase").val(ruleForm.chongwuHuase);
        $("#chongwuJiankangValue").val(ruleForm.chongwuJiankangValue);
        $("#chongwuSuozaidi").val(ruleForm.chongwuSuozaidi);
        $("#chongwuLingyangyaoqiu").val(ruleForm.chongwuLingyangyaoqiu);
        $("#chongwuLianxifangshi").val(ruleForm.chongwuLianxifangshi);
        $("#chongwuContent").val(ruleForm.chongwuContent);
        $("#chongwuYesnoValue").val(ruleForm.chongwuYesnoValue);
        $("#yonghuId").val(ruleForm.yonghuId);
    }

    function yonghuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yonghuId").val(ruleForm.id);

        $("#yonghuName").val(ruleForm.yonghuName);
        $("#yonghuSexValue").val(ruleForm.yonghuSexValue);
        $("#yonghuAge").val(ruleForm.yonghuAge);
        $("#yonghuGongzuo").val(ruleForm.yonghuGongzuo);
        $("#yonghuJine").val(ruleForm.yonghuJine);
        $("#yonghuAddress").val(ruleForm.yonghuAddress);
        $("#yonghuPhone").val(ruleForm.yonghuPhone);
        $("#yonghuIdNumber").val(ruleForm.yonghuIdNumber);
        $("#yonghuAihao").val(ruleForm.yonghuAihao);
        $("#yonghuYesnoValue").val(ruleForm.yonghuYesnoValue);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        chongwuShowImg();
        yonghuShowImg();
    }


    <!--  级联表的图片  -->

    function chongwuShowImg() {
        $("#chongwuPhotoImg").attr("src",ruleForm.chongwuPhoto);
    }


    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        chongwuShowVideo();
        yonghuShowVideo();
    }


    <!--  级联表的视频  -->

    function chongwuShowVideo() {
        $("#chongwuPhotoV").attr("src",ruleForm.chongwuPhoto);
    }

    function yonghuShowVideo() {
        $("#yonghuPhotoV").attr("src",ruleForm.yonghuPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            chongwuSelect();
            yonghuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            <!--  初始化级联表的下拉框  -->
            initializationchongwuSelect();
            initializationyonghuSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            var chongwuLiuyanContentUeditor = UE.getEditor('chongwuLiuyanContentEditor');
            chongwuLiuyanContentUeditor.ready(function () {
                chongwuLiuyanContentUeditor.setDisabled('fullscreen');
            });
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }else{
            var replyContentUeditor = UE.getEditor('replyContentEditor');
            replyContentUeditor.ready(function () {
                replyContentUeditor.setDisabled('fullscreen');
            });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
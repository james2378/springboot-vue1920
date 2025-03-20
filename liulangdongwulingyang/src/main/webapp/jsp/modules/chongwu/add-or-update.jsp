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
                        <li class="breadcrumb-item active">编辑宠物</li>
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
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6">
                                        <label>用户</label>
                                        <div>
                                            <select id="yonghuSelect" name="yonghuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>姓名</label>
                                        <input id="yonghuName" name="yonghuName" class="form-control"
                                               placeholder="姓名" readonly>
                                    </div>
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
                                    <div class="form-group col-md-6">
                                        <label>是否养过宠物</label>
                                        <input id="yonghuYesnoValue" name="yonghuYesnoValue" class="form-control"
                                               placeholder="是否养过宠物" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                    <div class="form-group col-md-6">
                                        <label>宠物名称</label>
                                        <input id="chongwuName" name="chongwuName" class="form-control"
                                               placeholder="宠物名称">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>宠物类别</label>
                                        <select id="chongwuTypesSelect" name="chongwuTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>性别</label>
                                        <select id="chongwuSexTypesSelect" name="chongwuSexTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>年龄</label>
                                        <input id="chongwuAge" name="chongwuAge" class="form-control"
                                               placeholder="年龄">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>花色</label>
                                        <input id="chongwuHuase" name="chongwuHuase" class="form-control"
                                               placeholder="花色">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>健康情况</label>
                                        <select id="chongwuJiankangTypesSelect" name="chongwuJiankangTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>所在地</label>
                                        <input id="chongwuSuozaidi" name="chongwuSuozaidi" class="form-control"
                                               placeholder="所在地">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>领养要求</label>
                                        <input id="chongwuLingyangyaoqiu" name="chongwuLingyangyaoqiu" class="form-control"
                                               placeholder="领养要求">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>联系方式</label>
                                        <input id="chongwuLianxifangshi" name="chongwuLianxifangshi" class="form-control"
                                               placeholder="联系方式">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>宠物照片</label>
                                        <img id="chongwuPhotoImg" src="" width="100" height="100">
                                        <input name="file" type="file" id="chongwuPhotoupload"
                                               class="form-control-file">
                                        <input name="chongwuPhoto" id="chongwuPhoto-input" type="hidden">
                                    </div>
                                    <div class="form-group  col-md-6">
                                        <label>宠物详情</label>
                                        <input id="chongwuContentupload" name="file" type="file">
                                        <script id="chongwuContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
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
                                        <select id="chongwuYesnoTypesSelect" name="chongwuYesnoTypes" class="form-control">
                                        </select>
                                    </div>
                                <input id="yonghuId" name="yonghuId" type="hidden">
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

    var tableName = "chongwu";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var chongwuTypesOptions = [];
    var chongwuSexTypesOptions = [];
    var chongwuJiankangTypesOptions = [];
    var chongwuYesnoTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var yonghuOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->
        $('#chongwuPhotoupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                var photoUrl= baseUrl + 'file/download?fileName=' + data.result.file;
                document.getElementById('chongwuPhotoImg').setAttribute('src',photoUrl);
                document.getElementById('chongwuPhoto-input').setAttribute('value',photoUrl);
            }
        });


        $('#chongwuContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('chongwuContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
           /*if($("#yonghuId") !=null){
               var yonghuId = $("#yonghuId").val();
               if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
                   alert("用户不能为空");
                   return;
               }
           }*/
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
            httpJson("chongwu/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addchongwu');
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
        function chongwuTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=chongwu_types", "GET", {}, (res) => {
                if(res.code == 0){
                    chongwuTypesOptions = res.data.list;
                }
            });
        }
        function chongwuSexTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=chongwu_sex_types", "GET", {}, (res) => {
                if(res.code == 0){
                    chongwuSexTypesOptions = res.data.list;
                }
            });
        }
        function chongwuJiankangTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=chongwu_jiankang_types", "GET", {}, (res) => {
                if(res.code == 0){
                    chongwuJiankangTypesOptions = res.data.list;
                }
            });
        }
        function chongwuYesnoTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=chongwu_yesno_types", "GET", {}, (res) => {
                if(res.code == 0){
                    chongwuYesnoTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
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
        function initializationChongwutypesSelect(){
            var chongwuTypesSelect = document.getElementById('chongwuTypesSelect');
            if(chongwuTypesSelect != null && chongwuTypesOptions != null  && chongwuTypesOptions.length > 0 ){
                for (var i = 0; i < chongwuTypesOptions.length; i++) {
                    chongwuTypesSelect.add(new Option(chongwuTypesOptions[i].indexName,chongwuTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationChongwusextypesSelect(){
            var chongwuSexTypesSelect = document.getElementById('chongwuSexTypesSelect');
            if(chongwuSexTypesSelect != null && chongwuSexTypesOptions != null  && chongwuSexTypesOptions.length > 0 ){
                for (var i = 0; i < chongwuSexTypesOptions.length; i++) {
                    chongwuSexTypesSelect.add(new Option(chongwuSexTypesOptions[i].indexName,chongwuSexTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationChongwujiankangtypesSelect(){
            var chongwuJiankangTypesSelect = document.getElementById('chongwuJiankangTypesSelect');
            if(chongwuJiankangTypesSelect != null && chongwuJiankangTypesOptions != null  && chongwuJiankangTypesOptions.length > 0 ){
                for (var i = 0; i < chongwuJiankangTypesOptions.length; i++) {
                    chongwuJiankangTypesSelect.add(new Option(chongwuJiankangTypesOptions[i].indexName,chongwuJiankangTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationChongwuyesnotypesSelect(){
            var chongwuYesnoTypesSelect = document.getElementById('chongwuYesnoTypesSelect');
            if(chongwuYesnoTypesSelect != null && chongwuYesnoTypesOptions != null  && chongwuYesnoTypesOptions.length > 0 ){
                for (var i = 0; i < chongwuYesnoTypesOptions.length; i++) {
                    chongwuYesnoTypesSelect.add(new Option(chongwuYesnoTypesOptions[i].indexName,chongwuYesnoTypesOptions[i].codeIndex));
                }
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

        var chongwuTypesSelect = document.getElementById("chongwuTypesSelect");
        if(chongwuTypesSelect != null && chongwuTypesOptions != null  && chongwuTypesOptions.length > 0 ) {
            for (var i = 0; i < chongwuTypesOptions.length; i++) {
                if (chongwuTypesOptions[i].codeIndex == ruleForm.chongwuTypes) {//下拉框value对比,如果一致就赋值汉字
                        chongwuTypesSelect.options[i].selected = true;
                }
            }
        }

        var chongwuSexTypesSelect = document.getElementById("chongwuSexTypesSelect");
        if(chongwuSexTypesSelect != null && chongwuSexTypesOptions != null  && chongwuSexTypesOptions.length > 0 ) {
            for (var i = 0; i < chongwuSexTypesOptions.length; i++) {
                if (chongwuSexTypesOptions[i].codeIndex == ruleForm.chongwuSexTypes) {//下拉框value对比,如果一致就赋值汉字
                        chongwuSexTypesSelect.options[i].selected = true;
                }
            }
        }

        var chongwuJiankangTypesSelect = document.getElementById("chongwuJiankangTypesSelect");
        if(chongwuJiankangTypesSelect != null && chongwuJiankangTypesOptions != null  && chongwuJiankangTypesOptions.length > 0 ) {
            for (var i = 0; i < chongwuJiankangTypesOptions.length; i++) {
                if (chongwuJiankangTypesOptions[i].codeIndex == ruleForm.chongwuJiankangTypes) {//下拉框value对比,如果一致就赋值汉字
                        chongwuJiankangTypesSelect.options[i].selected = true;
                }
            }
        }

        var chongwuYesnoTypesSelect = document.getElementById("chongwuYesnoTypesSelect");
        if(chongwuYesnoTypesSelect != null && chongwuYesnoTypesOptions != null  && chongwuYesnoTypesOptions.length > 0 ) {
            for (var i = 0; i < chongwuYesnoTypesOptions.length; i++) {
                if (chongwuYesnoTypesOptions[i].codeIndex == ruleForm.chongwuYesnoTypes) {//下拉框value对比,如果一致就赋值汉字
                        chongwuYesnoTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
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
        if (ruleForm.chongwuContent != null && ruleForm.chongwuContent != 'null' && ruleForm.chongwuContent != '' && $("#chongwuContentupload").length>0) {

            var chongwuContentUeditor = UE.getEditor('chongwuContentEditor');
            chongwuContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.chongwuContent != null){
                    mes = ''+ ruleForm.chongwuContent;
                }
                chongwuContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#chongwuContentupload").length>0) {
            var chongwuContentEditor = UE.getEditor('chongwuContentEditor');
            if (chongwuContentEditor.hasContents()) {
                $('#chongwuContent-input').attr('value', chongwuContentEditor.getPlainTxt());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addchongwu');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                chongwuName: "required",
                chongwuTypes: "required",
                chongwuSexTypes: "required",
                chongwuAge: "required",
                chongwuHuase: "required",
                chongwuJiankangTypes: "required",
                chongwuSuozaidi: "required",
                chongwuLingyangyaoqiu: "required",
                chongwuLianxifangshi: "required",
                chongwuPhoto: "required",
                chongwuContent: "required",
                chongwuYesnoTypes: "required",
                // yonghuId: "required",
            },
            messages: {
                chongwuName: "宠物名称不能为空",
                chongwuTypes: "宠物类别不能为空",
                chongwuSexTypes: "性别不能为空",
                chongwuAge: "年龄不能为空",
                chongwuHuase: "花色不能为空",
                chongwuJiankangTypes: "健康情况不能为空",
                chongwuSuozaidi: "所在地不能为空",
                chongwuLingyangyaoqiu: "领养要求不能为空",
                chongwuLianxifangshi: "联系方式不能为空",
                chongwuPhoto: "宠物照片不能为空",
                chongwuContent: "宠物详情不能为空",
                chongwuYesnoTypes: "是否被领养不能为空",
                // yonghuId: "用户不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addchongwu = window.sessionStorage.getItem("addchongwu");
        if (addchongwu != null && addchongwu != "" && addchongwu != "null") {
            window.sessionStorage.removeItem('addchongwu');
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
            http("chongwu/info/" + updateId, "GET", {}, (res) => {
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
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        yonghuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#chongwuName").val(ruleForm.chongwuName);
        $("#chongwuAge").val(ruleForm.chongwuAge);
        $("#chongwuHuase").val(ruleForm.chongwuHuase);
        $("#chongwuSuozaidi").val(ruleForm.chongwuSuozaidi);
        $("#chongwuLingyangyaoqiu").val(ruleForm.chongwuLingyangyaoqiu);
        $("#chongwuLianxifangshi").val(ruleForm.chongwuLianxifangshi);
        $("#chongwuContent").val(ruleForm.chongwuContent);
        $("#yonghuId").val(ruleForm.yonghuId);

    }
    <!--  级联表的数据回显  -->
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
        $("#chongwuPhotoImg").attr("src",ruleForm.chongwuPhoto);

        <!--  级联表的图片  -->
        yonghuShowImg();
    }


    <!--  级联表的图片  -->

    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        yonghuShowVideo();
    }


    <!--  级联表的视频  -->

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
            chongwuTypesSelect();
            chongwuSexTypesSelect();
            chongwuJiankangTypesSelect();
            chongwuYesnoTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            yonghuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationChongwutypesSelect();
            initializationChongwusextypesSelect();
            initializationChongwujiankangtypesSelect();
            initializationChongwuyesnotypesSelect();
            <!--  初始化级联表的下拉框  -->
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
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }else{
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
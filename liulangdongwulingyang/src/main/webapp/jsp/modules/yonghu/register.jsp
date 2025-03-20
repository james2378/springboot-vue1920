<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

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
        <!-- /Menu --><!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container" style="width: 600px">

            <div class="row" center>
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title" style="margin-left: 195px">注册</h3>
                        <form id="register">
                            <div class="form-row">
                                    <input id="updateId" name="id" type="hidden">
                                <div class="form-group col-md-12">
                                    <label>账户</label>
                                    <input id="username" name="username" class="form-control"
                                           placeholder="账户">
                                </div>
                                <div class="form-group col-md-12">
                                    <label>密码</label>
                                    <input type="password" id="password" name="password" class="form-control"
                                           placeholder="密码">
                                </div>
                                <div class="form-group col-md-12">
                                    <label>重复密码</label>
                                    <input type="password" id="password1" name="password1" class="form-control"
                                           placeholder="重复密码">
                                </div>
                                <div class="form-group col-md-12">
                                    <label>姓名</label>
                                    <input id="yonghuName" name="yonghuName" class="form-control"
                                           placeholder="姓名">
                                </div>
                                   <div class="form-group col-md-12">
                                       <label>性别</label>
                                       <select id="yonghuSexTypesSelect" name="yonghuSexTypes" class="form-control">
                                       </select>
                                   </div>
                                <div class="form-group col-md-12">
                                    <label>年龄</label>
                                    <input id="yonghuAge" name="yonghuAge" class="form-control"
                                           onchange="yonghuAgeChickValue(this)"  placeholder="年龄">
                                </div>

                                   <div class="form-group col-md-12">
                                       <label>用户头像</label>
                                       <img id="yonghuPhotoImg" src="" width="100" height="100">
                                       <input name="file" type="file" id="yonghuPhotoupload"
                                              class="form-control-file">
                                       <input name="yonghuPhoto" id="yonghuPhoto-input" type="hidden">
                                   </div>
                                <div class="form-group col-md-12">
                                    <label>工作</label>
                                    <input id="yonghuGongzuo" name="yonghuGongzuo" class="form-control"
                                           placeholder="工作">
                                </div>
                                <div class="form-group col-md-12">
                                    <label>收入</label>
                                    <input id="yonghuJine" name="yonghuJine" class="form-control"
                                           onchange="yonghuJineChickValue(this)"  placeholder="收入">
                                </div>

                                <div class="form-group col-md-12">
                                    <label>家庭地址</label>
                                    <input id="yonghuAddress" name="yonghuAddress" class="form-control"
                                           placeholder="家庭地址">
                                </div>
                                <div class="form-group col-md-12">
                                    <label>联系方式</label>
                                    <input id="yonghuPhone" name="yonghuPhone" class="form-control"
                                           onchange="yonghuPhoneChickValue(this)"  placeholder="联系方式">
                                </div>
                                <div class="form-group col-md-12">
                                    <label>身份证号</label>
                                    <input id="yonghuIdNumber" name="yonghuIdNumber" class="form-control"
                                           onchange="yonghuIdNumberChickValue(this)"  placeholder="身份证号">
                                </div>
                                <div class="form-group col-md-12">
                                    <label>爱好</label>
                                    <input id="yonghuAihao" name="yonghuAihao" class="form-control"
                                           placeholder="爱好">
                                </div>
                                   <div class="form-group col-md-12">
                                       <label>是否养过宠物</label>
                                       <select id="yonghuYesnoTypesSelect" name="yonghuYesnoTypes" class="form-control">
                                       </select>
                                   </div>
                                <div class="form-group col-md-12">
                                    <button id="submitBtn" type="button" class="btn btn-primary btn-lg">注册</button>
                                    <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                </div>
                            </div>
                        </form>

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
    <script>
        <%@ include file="../../utils/menu.jsp"%>
        <%@ include file="../../static/setMenu.js"%>
        <%@ include file="../../utils/baseUrl.jsp"%>

        var tableName = "yonghu";
        var pageType = "register";
        var updateId = "";
        var crossTableId = -1;
        var crossTableName = '';
        var ruleForm = {};
        var crossRuleForm = {};

        // 下拉框数组
        <!-- 当前表的下拉框数组 -->
        var yonghuSexTypesOptions = [];
        var yonghuYesnoTypesOptions = [];

        var ruleForm = {};


        // 文件上传
        function upload() {
        <!-- 当前表的文件上传 -->

        $('#yonghuPhotoupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                var photoUrl= baseUrl + 'file/download?fileName=' + data.result.file;
                document.getElementById('yonghuPhotoImg').setAttribute('src',photoUrl);
                document.getElementById('yonghuPhoto-input').setAttribute('value',photoUrl);
            }
        });

        }

        // 表单提交
        function submit() {

            if (validform() == true && compare() == true) {
                let data = {};
                getContent();
                if( $("#password").val() == null || $("#password").val() == "" ){
                    alert("密码不能为空");
                    return false;
                }else if( $("#password").val() != $("#password1").val() ){
                    alert("两次密码不一致");
                    return false;
                }
                let value = $('#register').serializeArray();
                $.each(value, function (index, item) {
                    data[item.name] = item.value;
                });
                let json = JSON.stringify(data);
                var urlParam;
                var successMes = '';
                httpJson("yonghu/register", "POST", data, (res) => {
                    if(res.code == 0){
                        window.sessionStorage.removeItem('id');
                        alert("注册成功")
                        if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                            window.sessionStorage.removeItem('onlyme');
                            window.location.href="../../login.jsp";
                        } else {
                            window.location.href ="../../login.jsp";
                        }
                    }
                });
            } else {
                alert("表单未填完整或有错误");
            }
        }

        <!-- 查询当前表的所有列表 -->
        function yonghuSexTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=yonghu_sex_types", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuSexTypesOptions = res.data.list;
                }
            });
        }
        function yonghuYesnoTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=yonghu_yesno_types", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuYesnoTypesOptions = res.data.list;
                }
            });
        }

        //初始化下拉框
        <!-- 初始化当前表的下拉框 -->
        function initializationYonghusextypesSelect(){
            var yonghuSexTypesSelect = document.getElementById('yonghuSexTypesSelect');
            if(yonghuSexTypesSelect != null && yonghuSexTypesOptions != null  && yonghuSexTypesOptions.length > 0 ){
                for (var i = 0; i < yonghuSexTypesOptions.length; i++) {
                        yonghuSexTypesSelect.add(new Option(yonghuSexTypesOptions[i].indexName,yonghuSexTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationYonghuyesnotypesSelect(){
            var yonghuYesnoTypesSelect = document.getElementById('yonghuYesnoTypesSelect');
            if(yonghuYesnoTypesSelect != null && yonghuYesnoTypesOptions != null  && yonghuYesnoTypesOptions.length > 0 ){
                for (var i = 0; i < yonghuYesnoTypesOptions.length; i++) {
                        yonghuYesnoTypesSelect.add(new Option(yonghuYesnoTypesOptions[i].indexName,yonghuYesnoTypesOptions[i].codeIndex));
                }
            }
        }




        // 获取富文本框内容
        function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        }

        //数字检查
        <!-- 当前表的数字检查 -->
        function yonghuAgeChickValue(e){
            var this_val = e.value || 0;
            /*if(this_val == 0){
                e.value = "";
                alert("0不允许输入");
                return false;
            }*/
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }
        function yonghuJineChickValue(e){
            var this_val = e.value || 0;
            /*if(this_val == 0){
                e.value = "";
                alert("0不允许输入");
                return false;
            }*/
            var reg=/^[0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }
        function yonghuPhoneChickValue(e){
            var this_val = e.value || 0;
            var reg=/^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("手机号不正确");
                return false;
            }
        }
        function yonghuIdNumberChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("身份证号不正确");
                return false;
            }
        }



        function exit() {
            window.sessionStorage.removeItem("id");
            window.location.href = "../../login.jsp";
        }
        // 表单校验
        function validform() {
            return $("#register").validate({
                rules: {
                        username: "required",
                        password: "required",
                        yonghuName: "required",
                        yonghuSexTypes: "required",
                        yonghuAge: "required",
                        yonghuPhoto: "required",
                        yonghuGongzuo: "required",
                        yonghuJine: "required",
                        yonghuAddress: "required",
                        yonghuPhone: "required",
                        yonghuIdNumber: "required",
                        yonghuAihao: "required",
                        yonghuYesnoTypes: "required",
                },
                messages: {
                        username: "账户不能为空",
                        password: "密码不能为空",
                        yonghuName: "姓名不能为空",
                        yonghuSexTypes: "性别不能为空",
                        yonghuAge: "年龄不能为空",
                        yonghuPhoto: "用户头像不能为空",
                        yonghuGongzuo: "工作不能为空",
                        yonghuJine: "收入不能为空",
                        yonghuAddress: "家庭地址不能为空",
                        yonghuPhone: "联系方式不能为空",
                        yonghuIdNumber: "身份证号不能为空",
                        yonghuAihao: "爱好不能为空",
                        yonghuYesnoTypes: "是否养过宠物不能为空",
                }
            }).form();
        }

        $(document).ready(function () {
            //设置右上角用户名
            // $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
            // //设置项目名
            // $('.sidebar-header h3 a').html(projectName)
            // //设置导航栏菜单
            // setMenu();
            $('#exitBtn').on('click', function (e) {
                e.preventDefault();
                exit();
            });
            //查询所有下拉框
        <!--  当前表的下拉框  -->
            yonghuSexTypesSelect();
            yonghuYesnoTypesSelect();

            // 初始化下拉框
        <!--  初始化当前表的下拉框  -->
            initializationYonghusextypesSelect();
            initializationYonghuyesnotypesSelect();


            //注册表单验证
            $(validform());

            //初始化上传按钮
            upload();
        <%@ include file="../../static/myInfo.js"%>
                    $('#submitBtn').on('click', function (e) {
                        e.preventDefault();
                        //console.log("点击了...提交按钮");
                        submit();
                    });
        });



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
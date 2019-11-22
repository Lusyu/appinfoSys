<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>修改APP基础信息 <i class="fa fa-user"></i><small>${sessionScope.session_user.devName}</small></h2>
             <div class="clearfix"></div>
      </div>
      <div class="x_content">
        <form class="form-horizontal form-label-left" action="${pageContext.request.contextPath}/infoController/updateAppInfo" method="post" enctype="multipart/form-data">
          <input type="hidden" name="id" id="id" value="${appInfo.id}">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">软件名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="softwareName" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" 
               name="softwareName" value="${appInfo.softwareName}" required="required"
               placeholder="请输入软件名称" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">APK名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="APKName" type="text" class="form-control col-md-7 col-xs-12" 
              name="APKName" value="${appInfo.APKName}" readonly="readonly">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">支持ROM <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="supportROM" class="form-control col-md-7 col-xs-12" 
              	name="supportROM" value="${appInfo.supportROM}" required="required"
              	data-validate-length-range="20" data-validate-words="1" 
              	placeholder="请输入支持的ROM" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">界面语言 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="interfaceLanguage" class="form-control col-md-7 col-xs-12" 
              data-validate-length-range="20" data-validate-words="1"  required="required"
              name="interfaceLanguage" value="${appInfo.interfaceLanguage}"
              placeholder="请输入软件支持的界面语言" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">软件大小 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="softwareSize" name="softwareSize" value="${appInfo.softwareSize}" required="required"
              data-validate-minmax="10,500"  placeholder="请输入软件大小，单位为Mb" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">下载次数 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="downloads" name="downloads" value="${appInfo.downloads}" required="required"
              data-validate-minmax="10,500"  placeholder="请输入下载次数" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">所属平台 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="hidden" value="${appInfo.dictionaryFlatformId.id}" id="fid" />
              <select name="dictionaryFlatformId.id" id="flatformId" class="form-control" required="required"></select>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="select">一级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="hidden" value="${appInfo.categoryLevel1.parentId}" id="cl1" />
              <select name="categoryLevel1.parentId" id="categoryLevel1" class="form-control"  required="required"></select>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">二级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
            	<input type="hidden" value="${appInfo.categoryLevel2.parentId}" id="cl2" />
              <select name="categoryLevel2.parentId" id="categoryLevel2" class="form-control"  required="required"></select>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="select">三级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="hidden" value="${appInfo.categoryLevel3.parentId}" id="cl3" />
              <select name="categoryLevel3.parentId" id="categoryLevel3" class="form-control"  required="required"></select>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">APP状态 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
            	<input id="statusName" type="text" class="form-control col-md-7 col-xs-12"
              	 value="${appInfo.dictionaryStatus.valueName}" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">应用简介 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea id="appInfo" name="appInfo" required="required"
              placeholder="请输入本软件的相关信息，本信息作为软件的详细信息进行软件的介绍。" class="form-control col-md-7 col-xs-12">
              ${appInfo.appInfo}</textarea>
            </div>
          </div>
           <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">LOGO图片 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
				<input type="hidden" id="logoPicPath" name="logoPicPath" value="${appInfo.logoPicPath}"/>
            	<input type="hidden" id="logoLocPath" name="logoLocPath" value="${appInfo.logoLocPath}"/>
				<div id="img">
                  <img src="${pageContext.request.contextPath}/${appInfo.logoPicPath}" style="width: 100px; height: 100px">
                  <span style="cursor: pointer" id="deleteimg">删除</span>
                </div>
                <div id="uploadfile" style="display: none">
				<input id="logo"  type="file" class="form-control col-md-7 col-xs-12" name="logo">
				<p><span style="color:red;font-weight: bold;">*注：1、大小不得超过100k.2、图片格式：jpg、png、jpeg、pneg</span></p>
				</div>
				<div id="logoFile"></div>
				${tx}
            </div>
          </div>
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
                <input type="hidden" id="dictionaryStatus" name="dictionaryStatus.id" value="${appInfo.dictionaryStatus.id}"/>
            	<c:if test="${appInfo.dictionaryStatus.id==8}">
            	 	<button id="sendAndPush" type="submit"  value="0" class="btn btn-success">保存并再次提交审核</button>
            	</c:if>
              <button id="send" type="submit" class="btn btn-success">保存</button>
              <button type="button" class="btn btn-primary" id="back">返回</button>
              <br/><br/>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<%@include file="common/footer.jsp"%>
<%--
<script src="${pageContext.request.contextPath }/statics/localjs/appinfomodify.js"></script>--%>
<script src="${pageContext.request.contextPath }/statics/jquery-1.8.3.js"></script>
<script>
    $("#sendAndPush").click(function () {
      $("#dictionaryStatus").val(6);
    });
    $("#deleteimg").click(function () {
        $("#img").css("display","none");
        $("#logo").attr("required","required");
        $("#uploadfile").css("display","block");
    });
    /*验证文件大小及格式*/
    $("#sendAndPush,#send").click(function () {
      var bol=$("#logo").attr("required");
      if (bol){
        var imgIndex=$("#logo").val().lastIndexOf(".");
        var imgFormat=$("#logo").val().substring(imgIndex);
        if(!(imgFormat==".jpg"||imgFormat==".png"||imgFormat==".jpeg"||imgFormat==".pneg")){
              alert("图片格式不正确!");
              return  false;
        }
        var size=$("#logo")[0].files[0].size;
        if (size>100000){
          alert("文件不能超过100KB");
          return false;
        }
      }
      return true;
    });
    $("#back").click(function () {
          window.history.go(-1);
    });
  $(function () {
    var classificationOne=[];//一级分类
    var classificationTwo=[];//二级分类
    var classificationThree=[];//三级分类
    $.post(
            "${pageContext.request.contextPath}/category/categorys",
            {},
            function (data) {
              var vals=eval(data);
              $.each(vals,function () {
                if(this.parentId<10){//一级分类
                  classificationOne.push(this);
                  if($("#cl1").val()==this.parentId){
                    $("#categoryLevel1").append("<option value='"+this.parentId+"' selected>"+this.categoryName+"</option>");
                  }else if(this.parentId!=1){
                    $("#categoryLevel1").append("<option value='"+this.parentId+"'>"+this.categoryName+"</option>");
                  }
                }else if(this.parentId<100) {//二级分类
                  classificationTwo.push(this);
                }else  if(this.parentId<1000){//三级分类
                  classificationThree.push(this);
                }
              });
            }
    )

    //当一级分类改变下拉框 并且index为-1的时候删除二级和三级的下拉框 然后添加二三级提示
    $("#queryCategoryLevel1").change(function () {
      select1("#categoryLevel2","#categoryLevel2",$(this).val());
    });
    select1("#categoryLevel2","#categoryLevel2",-1);
    /*----------当一级分类没有做选择的时候  二级和三级分别是默认状态-------------*/
    function select1(categorylevel2list,categoryLevel3List,index){
      selectRemove(categorylevel2list);
      selectRemove(categoryLevel3List);
      selectAdd(categorylevel2list,"请先选择一级");
      selectAdd(categoryLevel3List,"请先选择二级");
      if (index==1||index==2||index==3){//二级下拉框 改变成不是默认状态
        $("#categoryLevel2").children("option").remove();
        selectAdd(categorylevel2list,"--请选择--");
        if (index==2||index==3){//分类 2 和 分类3
          $.each(classificationTwo,function () {
            if (index==parseInt(this.parentId.toString().substring(0,1))){
              selectAddObj("#categoryLevel2",this);
            }
          })
        }else{//全部二级分类
          $.each(classificationTwo,function () {
            selectAddObj("#categoryLevel2",this);
          });
        }
      }
    }
    //操作二级下拉框
    $("#categoryLevel2").change(function () {
      select2("#categoryLevel3",$(this).val());
    });
    //操作二级下拉框
    function  select2(queryCategoryLevel3,index) {
      selectRemove(queryCategoryLevel3);//删除三级分类下拉框值
      if(index==-1){//如果二级分类是-1 删除三级分类
        selectAdd(queryCategoryLevel3,"请先选择二级");//添加默认的下拉框值
      }else{//如果不是默认 循环判断二级分类对应的三级分类
        selectAdd(queryCategoryLevel3,"--请选择--");//添加默认的选择下拉框值
        $.each(classificationThree,function () {// 循环判断二级分类对应的三级分类
          if (index==parseInt(this.parentId.toString().substring(0,2))){
            selectAddObj("#categoryLevel3",this);
          }
        });
      }
    }
    function selectAddObj(select,obj) {//添加下拉框
      $(select).append("<option value='"+obj.parentId+"'>"+obj.categoryName+"</option>")
    }
    function selectRemove(select) {//删除下拉框的信息
      $(select).children("option").remove();
    }
    function selectAdd(select,str) {//添加默认的 选择字符
      $(select).append("<option value='"+-1+"'>"+str+"</option>");
    }
    /*选择二级下拉框*/
    selectTwo();
    function selectTwo() {
      var categoryLevel1=$("#cl1").val();
      var categoryLevel2=$("#cl2").val();
      var categoryLevel3=$("#cl3").val();
      if (parseInt(categoryLevel1)!=-1&&parseInt(categoryLevel1)!=null){
        selectRemove("#categoryLevel2");
        selectAdd("#categoryLevel2","--请选择--");
        var interval=setInterval(function () {
          if (classificationTwo.length!=0){//判断异步加载的二级下拉框的json数组是否有值
            clearInterval(interval);//有值就清除定时器
            $.each(classificationTwo,function () {//遍历循环二级下拉框的json
              if (categoryLevel1.toString()==this.parentId.toString().substring(0,1)){//如果一级下拉框值等于二级下拉框的值 就添加二级下拉框
                if (parseInt(categoryLevel2)==this.parentId){//看是否上次点击查询是否有选择
                  $("#categoryLevel2").append("<option value='"+this.parentId+"' selected>"+this.categoryName+"</option>")
                }else {
                  selectAddObj("#categoryLevel2",this);//把每个二级下拉框中的值添加到二级下拉框
                }
              }else if(categoryLevel1==1){
                if (parseInt(categoryLevel2)==this.parentId){//看是否上次点击查询是否有选择
                  $("#categoryLevel2").append("<option value='"+this.parentId+"' selected>"+this.categoryName+"</option>")
                }else {
                  selectAddObj("#categoryLevel2",this);
                }

              }
            });
          }
        },20)
      }
      /*二级下拉框*/
      if (parseInt(categoryLevel2)!=-1&&parseInt(categoryLevel2)!=null){
        selectRemove("#categoryLevel3");
        selectAdd("#categoryLevel3","--请选择--");
        var interval2=setInterval(function () {
          if (classificationThree.length!=0){
            clearInterval(interval2);
            $.each(classificationThree,function () {
              if (categoryLevel2.toString()==this.parentId.toString().substring(0,2)){
                if (parseInt(categoryLevel3)==this.parentId){
                  $("#categoryLevel3").append("<option value='"+this.parentId+"' selected>"+this.categoryName+"</option>")
                }else {
                  selectAddObj("#categoryLevel3",this);
                }
              }
            });
          }
        },20)
      }
    }
  });





  /*-----------------------加载平台-----------------------*/
  $(function () {
    $.post(
            "${pageContext.request.contextPath}/dictionary/selectTypeName",
            {"typeName":"所属平台"},
            function (data) {
              $.each(data,function () {
                if ($("#fid").val()==this.id){
                  $("#flatformId").append("<option value='"+this.id+"'selected >"+this.valueName+"</option>");
                } else {
                  $("#flatformId").append("<option value='"+this.id+"'>"+this.valueName+"</option>");
                }
              });
            }
    );
   });
</script>

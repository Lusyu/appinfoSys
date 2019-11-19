<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>新增APP基础信息 <i class="fa fa-user"></i><small>${devUserSession.devName}</small></h2>
             <div class="clearfix"></div>
      </div>
      <div class="x_content">
	  <!-- <div class="item form-group">
               <label class="control-label col-md-3 col-sm-3 col-xs-12" ></label>
               <div class="col-md-6 col-sm-6 col-xs-12">
                 <form action="uploadlogo" class="dropzone" style="height:100px;">
                 </form>
            <div class="clearfix"></div>
         </div>
       </div> -->
           <div class="clearfix"></div>
        <form class="form-horizontal form-label-left" action="${pageContext.request.contextPath}/infoController/addInfo" method="post" enctype="multipart/form-data">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">软件名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="softwareName" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" name="softwareName"  required="required"
               placeholder="请输入软件名称" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">APK名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="APKName" class="form-control col-md-7 col-xs-12" 
              	data-validate-length-range="20" data-validate-words="1" name="APKName"   required="required"
              	placeholder="请输入APK名称" type="text">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">支持ROM <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="supportROM" class="form-control col-md-7 col-xs-12" name="supportROM"
              	data-validate-length-range="20" data-validate-words="1"   required="required"
              	placeholder="请输入支持的ROM" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">界面语言 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="interfaceLanguage" class="form-control col-md-7 col-xs-12" 
              data-validate-length-range="20" data-validate-words="1" name="interfaceLanguage"   required="required"
              placeholder="请输入软件支持的界面语言" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">软件大小 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="softwareSize" name="softwareSize"   required="required" onkeyup="value=value.replace(/[^\d]/g,'')"
              data-validate-minmax="10,500"  placeholder="请输入软件大小，单位为Mb" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">下载次数 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="downloads" name="downloads"   required="required"
              data-validate-minmax="10,500"  placeholder="请输入下载次数" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">所属平台 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="dictionaryFlatformId.id" id="flatformId" class="form-control"   required="required">
                      <option value="-1">--请选择--</option>
              </select>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="select">一级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="categoryLevel1.parentId" id="categoryLevel1" class="form-control"   required="required">
                <option value="-1">--请选择--</option>
              </select>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">二级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="categoryLevel2.parentId" id="categoryLevel2" class="form-control"  required="required"></select>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="select">三级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="categoryLevel3.parentId" id="categoryLevel3" class="form-control"  required="required"></select>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">APP状态 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
            	<input type="hidden" name="dictionaryStatus.id" id="status" value="6">待审核
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">应用简介 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea id="appInfo" name="appInfo"     required="required"
              placeholder="请输入本软件的相关信息，本信息作为软件的详细信息进行软件的介绍。" class="form-control col-md-7 col-xs-12"></textarea>
            </div>
          </div>
           <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">LOGO图片 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="file" class="form-control col-md-7 col-xs-12" name="logo"  required="required" id="a_logoPicPath"/>
            ${ts}
            </div>
          </div>
          <div class="ln_solid"></div>
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
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
<script src="${pageContext.request.contextPath }/statics/localjs/appinfoadd.js"></script>--%>
<script src="${pageContext.request.contextPath }/statics/jquery-1.8.3.js"></script>
<script>

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
                if(this.parentId<10&&this.parentId!=1){//一级分类
                  classificationOne.push(this);
                  $("#categoryLevel1").append("<option value='"+this.parentId+"'>"+this.categoryName+"</option>");
                }else if(this.parentId<100) {//二级分类
                  classificationTwo.push(this);
                }else  if(this.parentId<1000){//三级分类
                  classificationThree.push(this);
                }
              });
            }
    )

    //当一级分类改变下拉框 并且index为-1的时候删除二级和三级的下拉框 然后添加二三级提示
    $("#categoryLevel1").change(function () {
      select1("#categoryLevel2","#categoryLevel3",$(this).val());
    });
    select1("#categoryLevel2","#categoryLevel3",-1);
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
        }
      }
    }
    //操作二级下拉框
    $("#categoryLevel2").change(function () {
      select2("#categoryLevel3",$(this).val());
    });
    //操作二级下拉框
    function  select2(categoryLevel3,index) {
      selectRemove(categoryLevel3);//删除三级分类下拉框值
      if(index==-1){//如果二级分类是-1 删除三级分类
        selectAdd(categoryLevel3,"请先选择二级");//添加默认的下拉框值
      }else{//如果不是默认 循环判断二级分类对应的三级分类
        selectAdd(categoryLevel3,"--请选择--");//添加默认的选择下拉框值
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
  });














  /*-----------------------------加载所属平台--------------------------------*/
  $(function () {
    $.post(
            "${pageContext.request.contextPath}/dictionary/selectTypeName",
            {"typeName":"所属平台"},
            function (data) {
              $.each(data,function () {
                if ($("#flatformId").val()==this.id){
                  $("#flatformId").append("<option value='"+this.id+"'selected >"+this.valueName+"</option>");
                } else {
                  $("#flatformId").append("<option value='"+this.id+"'>"+this.valueName+"</option>");
                }
              });
            }
    );
  });
</script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="clearfix"></div>
<div class="row">
	<div class="col-md-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>
					APP 信息管理维护 <i class="fa fa-user"></i><small>${devUserSession.devName}
						- 您可以通过搜索或者其他的筛选项对APP的信息进行修改、删除等管理操作。^_^</small>
					</h2>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form id="form" method="post" action="${pageContext.request.contextPath}/infoController/selectInfo">
					<input type="hidden" name="currentPage" id="currentPage" value="1" />
			    <ul>
					<li>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">软件名称</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
								<input name="softwareName" type="text" class="form-control col-md-7 col-xs-12" value="${requestScope.info.softwareName}">
							</div>
						</div>
					</li>
					
					<li>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">APP状态</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="hidden" id="statusId" value="${requestScope.info.statusId}"/>
								<select name="statusId" class="form-control" id="queryStatus">
									  <option value="-1">--请选择--</option>
        						</select>
							</div>
						</div>
					</li>
					<li>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">所属平台</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="hidden" id="flatformId" value="${requestScope.info.flatformId}"/>
								<select name="flatformId" class="form-control" id="queryFlatformId">
									   <option value="-1">--请选择--</option>
        						</select>
							</div>
						</div>
					</li>
					<li>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">一级分类</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="hidden" id="categoryLevel1" value="${requestScope.info.categoryLevel1}"/>
								<select id="queryCategoryLevel1" name="categoryLevel1" class="form-control">
									   <option value="-1">--请选择--</option>
        						</select>
							</div>
						</div>
					</li>
					<li>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">二级分类</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
							<input type="hidden" name="Level" id="categorylevel2list"/>
                                <input type="hidden" id="categoryLevel2" value="${requestScope.info.categoryLevel2}"/>
        						<select name="categoryLevel2" id="queryCategoryLevel2" class="form-control">
									   <%--<option value="-1">--请选择--</option>--%>
        						</select>
							</div>
						</div>
					</li>
					<li>
						<div class="form-group">
							<label class="control-label col-md-3 col-sm-3 col-xs-12">三级分类</label>
							<div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="hidden" id="categoryLevel3" value="${requestScope.info.categoryLevel3}"/>
        						<select name="categoryLevel3" id="queryCategoryLevel3" class="form-control">
									 <%-- <option value="">--请选择--</option>--%>
        						</select>
							</div>
						</div>
					</li>
					<li><button type="submit" class="btn btn-primary"> 查 &nbsp;&nbsp;&nbsp;&nbsp;询 </button></li>
				</ul>
			</form>
		</div>
	</div>
</div>
<div class="col-md-12 col-sm-12 col-xs-12">
	<div class="x_panel">
		<div class="x_content">
			<p class="text-muted font-13 m-b-30"></p>
			<div id="datatable-responsive_wrapper"
				class="dataTables_wrapper form-inline dt-bootstrap no-footer">
				<div class="row">
					<div class="col-sm-12">
					<a href="${pageContext.request.contextPath}/index/appinfoadd" class="btn btn-success btn-sm">新增APP基础信息</a>
						<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline collapsed"
							cellspacing="0" width="100%" role="grid" aria-describedby="datatable-responsive_info" style="width: 100%;">
							<thead>
								<tr role="row">
									<th class="sorting_asc" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										aria-label="First name: activate to sort column descending"
										aria-sort="ascending">软件名称</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										aria-label="Last name: activate to sort column ascending">
										APK名称</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										aria-label="Last name: activate to sort column ascending">
										软件大小(单位:M)</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										aria-label="Last name: activate to sort column ascending">
										所属平台</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										aria-label="Last name: activate to sort column ascending">
										所属分类(一级分类、二级分类、三级分类)</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										aria-label="Last name: activate to sort column ascending">
										状态</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										aria-label="Last name: activate to sort column ascending">
										下载次数</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										aria-label="Last name: activate to sort column ascending">
										最新版本号</th>
									<th class="sorting" tabindex="0"
										aria-controls="datatable-responsive" rowspan="1" colspan="1"
										style="width: 124px;"
										aria-label="Last name: activate to sort column ascending">
										操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="appInfo" items="${requestScope.pageInfo.list}" varStatus="status">
									<tr role="row" class="odd">
										<td tabindex="0" class="sorting_1">${appInfo.softwareName}</td>
										<td>${appInfo.APKName }</td>
										<td>${appInfo.softwareSize }</td>
										<td>${appInfo.dictionaryFlatformId.valueName}</td>
										<td>${appInfo.categoryLevel1.categoryName}-> ${appInfo.categoryLevel2.categoryName} -> ${appInfo.categoryLevel3.categoryName}</td>
										<td>${appInfo.dictionaryStatus.valueName}</td>
										<td>${appInfo.downloads}</td>
										<td>${appInfo.version.versionNo}</td>
                                        <td>
                                    <div class="btn-group">
                  <button type="button" class="btn btn-danger">点击操作</button>
                  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                  </button>
                  <ul class="dropdown-menu" role="menu">
                    <li>
                        <c:choose>
                                        <c:when test="${appInfo.dictionaryStatus.valueId == 2 || appInfo.dictionaryStatus.valueId == 5}">
                                            <a class="saleSwichOpen" saleSwitch="open" appinfoid=${appInfo.id }  appsoftwarename=${appInfo.softwareName } data-toggle="tooltip" data-placement="top" title="" data-original-title="恭喜您，您的审核已经通过，您可以点击上架发布您的APP">上架</a>
                                        </c:when>
                                        <c:when test="${appInfo.dictionaryStatus.valueId == 4}">
                                            <a class="saleSwichClose" saleSwitch="close" appinfoid=${appInfo.id }  appsoftwarename=${appInfo.softwareName } data-toggle="tooltip" data-placement="top" title="" data-original-title="您可以点击下架来停止发布您的APP，市场将不提供APP的下载">下架</a>
                                        </c:when>
                                    </c:choose>
                    </li>
                    <li><a class="addVersion" appinfoid="${appInfo.id }" data-toggle="tooltip" data-placement="top" title="" data-original-title="新增APP版本信息">新增版本</a>
                    </li>
                          <li><a class="modifyVersion"
                                                    appinfoid="${appInfo.id}" versionid="${appInfo.version.id}" status="${appInfo.dictionaryStatus.id}"
                                                    statusname="${appInfo.dictionaryStatus.valueName}-"
                                                    data-toggle="tooltip" data-placement="top" title="" data-original-title="修改APP最新版本信息">修改版本</a>
                                </li>
                    <li><a  class="modifyAppInfo"
                                          appinfoid="${appInfo.id }" status="${appInfo.dictionaryStatus.id}" statusname="${appInfo.dictionaryStatus.valueName}"
                                          data-toggle="tooltip" data-placement="top" title="" data-original-title="修改APP基础信息">修改</a></li>
                      <li><a  class="viewApp" appinfoid=${appInfo.id }  data-toggle="tooltip" data-placement="top" title="" data-original-title="查看APP基础信息以及全部版本信息">查看</a></li>
                      <li><a  class="deleteApp" appinfoid=${appInfo.id }  appsoftwarename=${appInfo.softwareName }  data-toggle="tooltip" data-placement="top" title="" data-original-title="删除APP基础信息以及全部版本信息">删除</a></li>
                    </ul>
                </div>
                                    </td>
                                </tr>
                            </c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-5">
						<div class="dataTables_info" id="datatable-responsive_info"
							role="status" aria-live="polite">共${requestScope.pageInfo.total }条记录
							${requestScope.pageInfo.pageNum }/${requestScope.pageInfo.pages}页</div>
					</div>
					<div class="col-sm-7" style="position: relative;top: -30px;">
						<div class="dataTables_paginate paging_simple_numbers"
							id="datatable-responsive_paginate">
							<ul class="pagination">
								<%--<c:if test="${requestScope.pageInfo.pageNum > 1}">--%>
									<li class="paginate_button previous"><a
										href="javascript:page_nav(1)"
										aria-controls="datatable-responsive" data-dt-idx="0"
										tabindex="0">首页</a>
									</li>
									<li class="paginate_button "><a
										href="javascript:page_nav(${requestScope.pageInfo.pageNum-1>0?requestScope.pageInfo.pageNum-1:1});"
										aria-controls="datatable-responsive" data-dt-idx="1"
										tabindex="0">上一页</a>
									</li>
								<%--</c:if>--%>
								<%--<c:if test="${pages.currentPageNo < pages.totalPageCount }">--%>
									<li class="paginate_button "><a
										href="javascript:page_nav(${requestScope.pageInfo.pageNum+1<requestScope.pageInfo.pages?requestScope.pageInfo.pageNum+1:requestScope.pageInfo.pages});"
										aria-controls="datatable-responsive" data-dt-idx="1"
										tabindex="0">下一页</a>
									</li>
									<li class="paginate_button next"><a
										href="javascript:page_nav(${requestScope.pageInfo.pages});"
										aria-controls="datatable-responsive" data-dt-idx="7"
										tabindex="0">最后一页</a>
									</li>
								<%--</c:if>--%>
							</ul>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
</div>
<%@include file="common/footer.jsp"%>
<%--<script src="${pageContext.request.contextPath }/statics/localjs/rollpage.js"></script>
<script src="${pageContext.request.contextPath }/statics/localjs/appinfolist.js"></script>
<%--<script src="${pageContext.request.contextPath }/statics/jquery-1.8.3.js"></script>--%>
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
						if(this.parentId<10){//一级分类
							classificationOne.push(this);
							if($("#categoryLevel1").val()==this.parentId&&$("#categoryLevel1").val()!=-1){
                                $("#queryCategoryLevel1").append("<option value='"+this.parentId+"' selected>"+this.categoryName+"</option>");
                            }else {
                                $("#queryCategoryLevel1").append("<option value='"+this.parentId+"'>"+this.categoryName+"</option>");
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
            select1("#queryCategoryLevel2","#queryCategoryLevel3",$(this).val());
        });
		select1("#queryCategoryLevel2","#queryCategoryLevel3",-1);
/*----------当一级分类没有做选择的时候  二级和三级分别是默认状态-------------*/
		function select1(categorylevel2list,categoryLevel3List,index){
            selectRemove(categorylevel2list);
            selectRemove(categoryLevel3List);
            selectAdd(categorylevel2list,"请先选择一级");
            selectAdd(categoryLevel3List,"请先选择二级");
			if (index==1||index==2||index==3){//二级下拉框 改变成不是默认状态
				$("#queryCategoryLevel2").children("option").remove();
                selectAdd(categorylevel2list,"--请选择--");
					if (index==2||index==3){//分类 2 和 分类3
						$.each(classificationTwo,function () {
							if (index==parseInt(this.parentId.toString().substring(0,1))){
								selectAddObj("#queryCategoryLevel2",this);
							}
						})
				}else{//全部二级分类
					$.each(classificationTwo,function () {
							selectAddObj("#queryCategoryLevel2",this);
					});
				}
			}
		}
        //操作二级下拉框
		$("#queryCategoryLevel2").change(function () {
			select2("#queryCategoryLevel3",$(this).val());
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
						selectAddObj("#queryCategoryLevel3",this);
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
            var categoryLevel1=$("#categoryLevel1").val();
            var categoryLevel2=$("#categoryLevel2").val();
            var categoryLevel3=$("#categoryLevel3").val();
            if (parseInt(categoryLevel1)!=-1&&parseInt(categoryLevel1)!=null){
                selectRemove("#queryCategoryLevel2");
                selectAdd("#queryCategoryLevel2","--请选择--");
                var interval=setInterval(function () {
                    if (classificationTwo.length!=0){//判断异步加载的二级下拉框的json数组是否有值
                        clearInterval(interval);//有值就清除定时器
                        $.each(classificationTwo,function () {//遍历循环二级下拉框的json
                            if (categoryLevel1.toString()==this.parentId.toString().substring(0,1)){//如果一级下拉框值等于二级下拉框的值 就添加二级下拉框
                                if (parseInt(categoryLevel2)==this.parentId){//看是否上次点击查询是否有选择
                                    $("#queryCategoryLevel2").append("<option value='"+this.parentId+"' selected>"+this.categoryName+"</option>")
                                }else {
                                    selectAddObj("#queryCategoryLevel2",this);//把每个二级下拉框中的值添加到二级下拉框
                                }
                            }else if(categoryLevel1==1){
                                if (parseInt(categoryLevel2)==this.parentId){//看是否上次点击查询是否有选择
                                    $("#queryCategoryLevel2").append("<option value='"+this.parentId+"' selected>"+this.categoryName+"</option>")
                                }else {
                                    selectAddObj("#queryCategoryLevel2",this);
                                }

                            }
                        });
                    }
                },20)
            }
            /*二级下拉框*/
            if (parseInt(categoryLevel2)!=-1&&parseInt(categoryLevel2)!=null){
                selectRemove("#queryCategoryLevel3");
                selectAdd("#queryCategoryLevel3","--请选择--");
                var interval2=setInterval(function () {
                    if (classificationThree.length!=0){
                        clearInterval(interval2);
                        $.each(classificationThree,function () {
                            if (categoryLevel2.toString()==this.parentId.toString().substring(0,2)){
                                if (parseInt(categoryLevel3)==this.parentId){
                                    $("#queryCategoryLevel3").append("<option value='"+this.parentId+"' selected>"+this.categoryName+"</option>")
                                }else {
                                    selectAddObj("#queryCategoryLevel3",this);
                                }
                            }
                        });
                    }
                },20)
            }

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
                        $("#queryFlatformId").append("<option value='"+this.id+"'selected >"+this.valueName+"</option>");
                    } else {
                        $("#queryFlatformId").append("<option value='"+this.id+"'>"+this.valueName+"</option>");
                    }

                });
            }
        );
        /*-----------------------------加载app状态--------------------------------*/
        $.post(
            "${pageContext.request.contextPath}/dictionary/selectTypeName",
            {"typeName":"APP状态"},
            function (data) {
                ;
                $.each(data,function () {
                    if ($("#statusId").val()==this.id){
                        $("#queryStatus").append("<option value='"+this.id+"' selected>"+this.valueName+"</option>");
                    }else {
                        $("#queryStatus").append("<option value='"+this.id+"'>"+this.valueName+"</option>");
                    }

                });
            }
        );
    })
	function page_nav(page) {
    	$("#currentPage").val(page);
		$("#form").submit();
	}

	/*------------------------删除操作------------------------*/
	$(function () {
		var tr=null;
		$(".deleteApp").click(function () {
			var id=$(this).attr("appinfoid");
			var name=$(this).parent().parent().parent().parent().parent().children("td").eq(0).text();
			tr=$(this).parent().parent().parent().parent().parent();
			var bol=confirm("确定要删除:"+name+"吗?");
			if (!bol){
				return;
			}
			$.post(
					"${pageContext.request.contextPath}/infoController/deleteAppInfo",
					{"id":id},
					function (data) {
						if (data==true){
							tr.remove();
							alert("删除成功: "+name);
						}else{
							alert("删除失败!");
						}

					}
			);
		});
	});

</script>

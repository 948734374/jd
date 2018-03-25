<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>产品管理</title>
    <link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
    <script>
    var url;
    function newUser(){
    	$('#dlg').dialog('open').dialog('setTitle','New Product');
    	$('#fm').form('clear');
    	url = 'addProduct';
    }
    function saveOrUpdateUser(){
    	$('#fm').form('submit',{
    		url: url,
    		onSubmit: function(){
    			return $(this).form('validate');
    		},
    		success: function(result){
    			if (result == 0){
					alert("inert error");
    			} else {
    				$('#dlg').dialog('close');		// close the dialog
    				$('#dg').datagrid('reload');	// reload the user data
    			}
    		}
    	});
    }
    function editUser(){
    	var row = $('#dg').datagrid('getSelected');
    	if (row){
    		$('#dlg').dialog('open').dialog('setTitle','Edit User');
    		$('#fm').form('load',row);
    		url = 'updateProduct?proId='+row.proId;
    	}
    }
    function destroyUser(){
    	var row = $('#dg').datagrid('getSelected');
    	if (row){
    		$.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
    			if (r){
    				$.post('delProduct',{id:row.proId},function(result){
    					if (result != 0){
    						$('#dg').datagrid('reload');	// reload the user data
    					} else {
    						$.messager.show({	// show error message
    							title: 'Error',
    							msg: result.errorMsg
    						});
    					}
    				},'json');
    			}
    		});
    	}
    }
    </script>
</head>
<body>
<table>
<c:forEach items="${list}" var="pro">
${pro.COMID} ${pro.IMG}
</c:forEach>
</table>
<!-- 展示商品 -->
<table id="dg" title="My Users" class="easyui-datagrid" style="width:550px;height:250px"
       url="getProductList"
       toolbar="#toolbar"
       rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr>
        <th field="COMID" width="50">id</th>
        <th field="IMG" width="50" data-options="formatter:function(v){return '<img src='+v+' width=50/>'}">image</th>
        <th field="COMNAME" width="50">Name</th>
        <th field="PRICE" width="50">price</th>
    </tr>
    </thead>
</table>
<div id="toolbar">
    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">New User</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit User</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">Remove User</a>
</div>
<!-- 添加商品 -->
<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
     closed="true" buttons="#dlg-buttons">
    <div class="ftitle">商品信息</div>
    <form id="fm" method="post" enctype="multipart/form-data">
        <div class="fitem">
            <label>商品名称:</label>
            <input name="proName" class="easyui-validatebox">
        </div>
        <div class="fitem">
            <label>商品价格:</label>
            <input name="proPrice" class="easyui-validatebox">
        </div>
        <div class="fitem">
            <label>上传图片:</label>
            <input name="proImg" class="easyui-validatebox" type="text">
            <input name="file" class="easyui-validatebox" type="file">
        </div>
    </form>
</div>
<div id="dlg-buttons">
    <a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveOrUpdateUser()">Save</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
</div>
</body>
</html>
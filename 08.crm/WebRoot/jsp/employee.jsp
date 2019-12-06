<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>客户管理</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- 导入easyui的资源文件 -->
<script type="text/javascript" src="../easyui/jquery.min.js"></script>
<script type="text/javascript" src="../easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="../easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="../easyui/themes/icon.css">
<link id="themeLink" rel="stylesheet" type="text/css"
	href="../easyui/themes/default/easyui.css">
<script type="text/javascript">
	$(function() {
		init();
	})
	function init() {
		$('#dg').datagrid({
			url : '../emp/selectAll.action',
			method : 'post',
			toolbar : '#tb',
			singleSelect : true,
			rownumbers : true,
			pagination : true,
			columns : [ [ {
				field : 'user_id',
				title : 'id',
				width : 80
			}, {
				field : 'real_name',
				title : '姓名',
				width : 100
			}, {
				field : 'mtel',
				title : '手机',
				width : 120
			}, {
				field : 'email',
				title : '邮箱',
				width : 80
			}, {
				field : 'sale',
				title : '工资',
				width : 120
			}, {
				field : 'employdate',
				title : '入职日期',
				width : 120
			}, {
				field : 'user_status',
				title : '状态',
				width : 120
			}, {
				field : 'job',
				title : '职务',
				width : 120
			}, {
				field : 'caozuo',
				formatter : caozuo,
				width : '120px'
			} ] ],
			queryParams : {
				real_name : $("#real_name").val(),
				user_status : $("#user_status").val(),
				sale : $("#sale").val()
			}
		});
	}

	function caozuo(value, row, index) {
		return "<a href='javascript:void(0)' onclick='deleteUser(" + index
				+ ")'>删除</a> <a href='javascript:void(0)' onclick='updateUser("
				+ index + ")'>修改</a>"
	}
	function addUser() {
		$('#add_window').window('open');
	}

	function clearaddform() {
		$("#add_window").window("close");
	}
	function updateUser(index) {
		var data = $("#dg").datagrid("getData");//获取当数据
		var shuju = data.rows[index];//获取当前行数据

		if (shuju) {
			$('#update_window').window('open');
			$('#updatefrom').form("load", shuju);

		}
	}

	function clearupdateform() {
		$("#update_window").window("close");
	}
	function submitaddfrom() {
		var real_name = $("#addreal_name").val();
		var sex = $("#addsex").val();
		var mtel = $("#addmtel").val();
		var email = $("#addemail").val();
		var sale = $("#addsale").val();
		var employdate = $("#addemploydate").val();
		var user_status = $("#adduser_status").val();
		var job = $("#addjob").val();
		$.post("../emp/addEmp.action", {
			real_name : real_name,
			sex : sex,
			mtel : mtel,
			email : email,
			sale : sale,
			employdate : employdate,
			user_status : user_status,
			job : job
		}, function(res) {
			if (res) {
				$('#dg').datagrid('reload');
				$("#add_window").window("close");
				alert("添加成功");
			} else {
				$("#add_window").window("close");
				alert("添加失败");
			}
		}, "json");
	}

	function submitupdatefrom() {
		var user_id = $("#updateid").val();
		var real_name = $("#updatereal_name").val();
		var sex = $("#updatesex").val();
		var mtel = $("#updatemtel").val();
		var email = $("#updateemail").val();
		var sale = $("#updatesale").val();
		var employdate = $("#updateemploydate").val();
		var user_status = $("#updateuser_status").val();
		var job = $("#updatejob").val();
		$.post("../emp/updateEmp.action",

		{
			user_id : user_id,
			real_name : real_name,
			sex : sex,
			mtel : mtel,
			email : email,
			sale : sale,
			employdate : employdate,
			user_status : user_status,
			job : job
		}, function(res) {
			alert(res);
			if (res > 0) {
				$('#dg').datagrid('reload');
				$("#update_window").window("close");

				alert("修改成功");
			} else {
				$("#update_window").window("close");
				alert("修改失败");
			}
		}, "json");

	}

	function deleteUser(index) {
		var data = $("#dg").datagrid("getData");//获取当数据
		var shuju = data.rows[index];//获取当前行数据
		var user_id = shuju.user_id;
		$.messager.confirm('确认', '您确认想要删除记录吗？', function(r) {
			if (r) {
				$.post("../emp/deleteEmp.action", {
					user_id : user_id
				}, function(res) {

					if (res) {
						$('#dg').datagrid('reload');
						$.messager.alert('警告', '已删除？');
					} else {
						$.messager.alert('警告', '删除失败');
					}
				}, "json")
			}
		});

	}
</script>
</head>
<body>
	<div>
		<table id="dg"></table>
		<div id="tb" style="padding: 5px; height: auto">
			<div style="margin-bottom: 5px;" style="width: 100%; height: 1000px;">
				<a href="javascript:void(0)" class="easyui-linkbutton"
					iconCls="icon-add" plain="true" onclick="addUser()">添加</a> 名字：<input
					class="easyui-textbox" id="real_name"  style="width: 80px">&nbsp;状态：<input
					class="easyui-textbox" id="user_status" style="width: 80px">&nbsp;sale：<input
					class="easyui-textbox" id="sale" style="width: 80px"> <a
					href="javascript:void(0)" class="easyui-linkbutton"
					iconCls="icon-search" onclick="init()">查找</a>
			</div>
		</div>
	</div>
	<div id="add_window" class="easyui-window" title="添加"
		style="width: 400px; height: 400px"
		data-options="iconCls:'icon-save',modal:true,closed:true">
		<form id="addfrom">
			<table cellpadding="5">
				<tr>
					<td>姓名:</td>
					<td><input class="easyui-textbox" id="addreal_name"
						style="width: 80px"></td>
				</tr>
				<tr>
					<td>性别:</td>
					<td><input class="easyui-textbox" id="addsex"
						style="width: 80px"></td>
				</tr>
				<tr>
					<td>电话:</td>
					<td><input class="easyui-textbox" id="addmtel"
						style="width: 80px"></td>
				</tr>
				<tr>
					<td>邮箱:</td>
					<td><input class="easyui-textbox" id="addemail"
						style="width: 80px"></td>
				</tr>
				<tr>
					<td>工资:</td>
					<td><input class="easyui-textbox" id="addsale"
						style="width: 80px"></td>
				</tr>
				<tr>
					<td>入职日期:</td>
					<td><input class="easyui-textbox" id="addemploydate"
						style="width: 80px"></td>
				</tr>
				<tr>
					<td>状态:</td>
					<td><input class="easyui-textbox" id="adduser_status"
						style="width: 80px"></td>
				</tr>
				<tr>
					<td>职务:</td>
					<td><input class="easyui-textbox" id="addjob"
						style="width: 80px"></td>
				</tr>
				<tr>
					<td></td>
					<td><a href="javascript:void(0)" class="easyui-linkbutton"
						onclick="submitaddfrom()">提交</a> <a href="javascript:void(0)"
						class="easyui-linkbutton" onclick="clearaddform()">取消</a></td>
				</tr>
			</table>
		</form>
	</div>

	<div id="update_window" class="easyui-window" title="修改"
		style="width: 400px; height: 400px"
		data-options="iconCls:'icon-save',modal:true,closed:true">
		<form id="updatefrom">
			<table cellpadding="5">
			<tr>
    				<td>id:</td>
    				<td><input class="easyui-textbox" name="user_id" id="updateid" style="width:80px" data-options="disabled:true"></td>
    			</tr>
				<tr>
					<td>姓名:</td>
					<td><input class="easyui-textbox" id="updatereal_name"
						name="real_name" style="width: 80px"></td>
				</tr>
				<tr>
					<td>性别:</td>
					<td><input class="easyui-textbox" id="updatesex" name="sex"
						style="width: 80px"></td>
				</tr>
				<tr>
					<td>电话:</td>
					<td><input class="easyui-textbox" id="updatemtel" name="mtel"
						style="width: 80px"></td>
				</tr>
				<tr>
					<td>邮箱:</td>
					<td><input class="easyui-textbox" id="updateemail"
						name="email" style="width: 80px"></td>
				</tr>
				<tr>
					<td>工资:</td>
					<td><input class="easyui-textbox" id="updatesale" name="sale"
						style="width: 80px"></td>
				</tr>
				<tr>
					<td>入职日期:</td>
					<td><input class="easyui-textbox" id="updateemploydate"
						name="employdate" style="width: 80px"></td>
				</tr>
				<tr>
					<td>状态:</td>
					<td><input class="easyui-textbox" id="updateuser_status"
						name="user_status" style="width: 80px"></td>
				</tr>
				<tr>
					<td>职务:</td>
					<td><input class="easyui-textbox" id="updatejob" name="job"
						style="width: 80px"></td>
				</tr>
				<tr>
					<td></td>
					<td><a href="javascript:void(0)" class="easyui-linkbutton"
						onclick="submitupdatefrom()">提交</a> <a href="javascript:void(0)"
						class="easyui-linkbutton" onclick="clearupdateform()">取消</a></td>
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>
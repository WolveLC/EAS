<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="../static/css/bootstrap.min.css">
    <script type="text/javascript" src="../static/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../static/js/jqPaginator.js"></script>
</head>
<body>
<%-- 修改信息模态框	--%>
<div id="qwe" class="modal fade" id="stu_modify_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">修改信息</h4>
            </div>

            <div class="modal-body">
                 <%--回显学生信息的表单--%>
                <form class="form-horizontal">
                    <input type="hidden" id="userId">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="userNumber" disabled>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="userName">
                        </div>
                    </div>

                    <%--  <div class="form-group">
                          <label class="col-sm-2 control-label">生日</label>
                          <div class="col-sm-10">
                              <input type="text" class="form-control" id="studentBirthday">
                          </div>--%>
                    <%-- </div>
                     <div class="form-group">
                         <label class="col-sm-2 control-label">住址</label>
                         <div class="col-sm-10">
                             <input type="text" class="form-control" id="studentAddress">
                         </div>
                     </div>--%>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="userPassword" >
                        </div>
                    </div>
                    <%--  <div class="form-group">
                          <label class="col-sm-2 control-label">年级</label>
                          <div class="col-sm-10">
                              <input type="text" class="form-control" id="studentGrade">
                          </div>
                      </div>--%>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="userSex">
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="save()">保存</button>
            </div>
        </div>
    </div>
</div>




<%-- 添加信息模态框	--%>
<div id="insertadd" class="modal fade" id="stu_modify_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel1">添加信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="userNumber1">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="userName1">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="userPassword1" >
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">角色编号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="roleId">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="userSex1">
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="insert()">保存</button>
            </div>
        </div>
    </div>
</div>



<%-- 用户信息显示模态框	--%>
<div id="showmessage" class="modal fade" id="stu_modify_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel2">用户信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label">学号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="userNumber2" disabled="disabled">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="userName2" disabled="disabled">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="userPassword2" disabled="disabled">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">角色编号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="roleId2" disabled="disabled">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="userSex2"disabled="disabled">
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>




<table class="table table-bordered table-hover">
    学号：<input type="text" name="userNum" id="number"><input type="button" onclick="selectUser('+userNum+')" value="查询">
    <tr>
        <th>用户序号</th>
        <th>用户ID</th>
        <th>用户编号</th>
        <th>用户姓名</th>
        <th>用户密码</th>
        <th>角色ID</th>
        <th>用户性别</th>
        <th>操作<input type="button" value="添加用户" onclick="adduser()"></th>
    </tr>
    <tbody id="tab"></tbody>
    <tr>
        <td colspan="8">
            <ul class="pagination" id="pagination1"></ul>
        </td>
    </tr>
</table>

<script>
    var total = 0;//总条数
    var totalPages = 0;//总页数
    var visiblePages = 5;//显示的页码数
    var currentPage = 0;//当前页码
    $(document).ready(function(){
        /* 第一次访问，初始化全局变量 */
        showPage(-1);

        $('#pagination1').jqPaginator({
            totalPages: totalPages,
            visiblePages: visiblePages,
            currentPage: currentPage,
            totalCounts: total,
            first: '<li class="first"><a href="javascript:void(0);">第一页</a></li>',
            prev: '<li class="prev"><a href="javascript:void(0);">前一页</a></li>',
            next: '<li class="next"><a href="javascript:void(0);">下一页</a></li>',
            last: '<li class="last"><a href="javascript:void(0);">最后一页</a></li>',
            page: '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',
            onPageChange: function (num) {
                /* num代表改变过后的页码 */
                showPage(num);
            }
        });
    });


    function showPage(n){
        $.ajax({
            url:"../api/queryUser",
            type:"GET",
            async:false,
            data:{"pageNum":n,"pageSize":5},
            dataType:"json",
            success:function (data) {
                console.log(data);
                if(n==-1){/*理解为第一次访问 ，初始化全局变量 */
                    total = data.total;
                    totalPages = data.pages;
                    currentPage = data.pageNum;
                }
                $("#tab").html("");
                if(data.list.length>0){
                    //使用jquery形式遍历
                    $.each(data.list,function(n,val){
                        var str = "";
                        var uid=val.userId;
                        str+="<tr>"+
                            "<td>"+n+"</td>"+
                            "<td>"+val.userId+"</td>"+
                            "<td>"+val.userNum+"</td>"+
                            "<td>"+val.userName+"</td>"+
                            "<td>"+val.userPwd+"</td>"+
                            "<td>"+val.roleId+"</td>"+
                            "<td>"+val.userSex+"</td>"+
                            "<td><input type='button' onclick='deleteUser("+uid+")' value='删除'><input id='shanchu' type='button' onclick='updateUser("+uid+")' value='修改'></td>"+
                            "</tr>";
                        $("#tab").append(str);
                    });
                }else{
                    $("#tab").append("<tr><td colspan=8 align=\"center\">暂时没有数据哦，快去添加一条吧</td></tr>");
                }
            }
        });
    }


//删除功能
function deleteUser(uid) {
    $.ajax({
        url:"../api/deleteUser/"+uid,
        type:"delete",
        dataType:"text",
        success:function(data){
            console.log(data);
         window.location.href="showUser.jsp";
        },
        error:function () {
            console.log("hh");
        }
    })

}

//跳转修改界面
function updateUser(uid) {
    console.log(1)
    //修改学生信息
        var url = "../api/userOne/"+uid;
        //查询学生信息,赋值
        $.ajax({
            url: url,
            type: "GET",
            dataType: "json",
            success: function (data) {
                $("#userId").val(data.userId);
                $("#userNumber").val(data.userNum);
                $("#userName").val(data.userName);
                $("#userPassword").val(data.userPwd);
                $("#userSex").val(data.userSex);
            }
        });
    // })
    $("#qwe").modal({
        backdrop:false
    })

}


//修改功能
function save() {
    //获取文本框里面的值
    var userId=$("#userId").val();
    var userNum=$("#userNumber").val();
    var userName=$("#userName").val();
    var userPwd=$("#userPassword").val();
    var userSex=$("#userSex").val();
    console.log(userName);
    console.log(userPwd);
    console.log(userSex);
    var user={"userId":userId,"userNum":userNum,"userName":userName,"userPwd":userPwd,"roleId":null,"userSex":userSex};
    console.log(user);
    $.ajax({
        url:"../api/update",
        type:"put",
        dataType:"json",
        data:JSON.stringify(user),
        contentType:"application/json",
        success:function (data) {
            console.log(data);
            if (data==1){
                window.location.reload();
            }
        },
        error:function () {
          console.log("服务器出错");
        }

    })
}



//跳转添加界面
function adduser() {
    $("#insertadd").modal({
        backdrop:false
    })

}

//添加用户
function insert() {
    console.log(1)
    var userNum=$("#userNumber1").val();
    var userName=$("#userName1").val();
    var userPwd=$("#userPassword1").val();
    var roleId=$("#roleId").val();
    var userSex=$("#userSex1").val();
    console.log(userName);
    console.log(userPwd);
    console.log(userSex);
    console.log(roleId);
    var user={"userNum":userNum,"userName":userName,"userPwd":userPwd,"roleId":roleId,"userSex":userSex};
    $.ajax({
        url:"../api/addUser",
        type:"POST",
        datatype:"json",
        data:JSON.stringify(user),
        contentType:"application/json",
        success:function (data) {
            console.log(data)
            if (data==1){
                console.log("添加成功");
                window.location.reload()
            }
        },
        error:function () {
            console.log("服务器出错");
        }

    })
}
//查询功能
function selectUser(userNum) {
        var userNum=$("#number").val();
        console.log(userNum);
    $.ajax({
        url:"../api/selectOne/"+userNum,
        type:"GET",
        dataType:"json",
        data:JSON.stringify(userNum),
        contentType:"application/json",
        success:function (data) {
            console.log(data);
            console.log(2)
            $("#userNumber2").val(data.userNum);
            $("#userName2").val(data.userName);
            $("#userPassword2").val(data.userPwd);
            $("#roleId2").val(data.roleId);
            $("#userSex2").val(data.userSex);

        },
        error:function () {

        }
    })
    $("#showmessage").modal({
        backdrop:false
    })
}






</script>
</body>
</html>

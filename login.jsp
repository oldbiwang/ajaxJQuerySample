<%@page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<html>
<head>
<script type="text/javascript" src="jquery-3.1.1.js"></script>
<script type="text/javascript">
    $(function() {
        $("#username").blur(function() {
            var uname = $("#username").val();
            $.ajax({
                //要请求的服务器url
                url : "jqueryServlet",
                //表示请求参数的对象,参数:val=uname
                data : {
                    val : uname
                },
                //是否为异步请求
                async : true,
                //是否缓存结果
                cache : false,
                //请求方式
                type : "POST",
                //服务器返回的是什么类型
                dataType : "json",
                //函数会在服务器执行成功时被调用,参数result就是服务器返回的值
                success : function(result) {
                    /* if (result) {
                        $("#nameLabel").text("输入正确");
                    } else {
                        $("#nameLabel").text("用户名不存在");
                    } */
                $("#nameLabel").text(uname + result.info);
                }
            });
        });
        
        
    });
</script>
<style type="text/css">
</style>
</head>

<body>
    用户名 <input type="text" name="name" id="username" />
    <label id="nameLabel"></label><br>
　　密 码:<input type="password" name="pwd" /><br>
</body>
</html>
 
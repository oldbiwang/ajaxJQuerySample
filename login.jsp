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
                //Ҫ����ķ�����url
                url : "jqueryServlet",
                //��ʾ��������Ķ���,����:val=uname
                data : {
                    val : uname
                },
                //�Ƿ�Ϊ�첽����
                async : true,
                //�Ƿ񻺴���
                cache : false,
                //����ʽ
                type : "POST",
                //���������ص���ʲô����
                dataType : "json",
                //�������ڷ�����ִ�гɹ�ʱ������,����result���Ƿ��������ص�ֵ
                success : function(result) {
                    /* if (result) {
                        $("#nameLabel").text("������ȷ");
                    } else {
                        $("#nameLabel").text("�û���������");
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
    �û��� <input type="text" name="name" id="username" />
    <label id="nameLabel"></label><br>
������ ��:<input type="password" name="pwd" /><br>
</body>
</html>
 
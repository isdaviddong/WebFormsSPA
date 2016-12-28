<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebFormsSPA._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <script src="Scripts/jquery-1.9.1.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/isRockFx.js"></script>
    <script>
        $(function () {
            $('#ButtonCal').click(
                function () {
                    //取得用戶輸入的參數
                    var para = { 'height': $('#txbHeight').val(), 'weight': $('#txbWeight').val() };
                    //呼叫API
                    CallPageMethod('BMI', para,
                        function (result) {
                            alert(result.Data);
                        }
                        );
                }
                );
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
   <div class="row" style="margin:10px">
        <div class="col-md-12">
            <div class="form-group">
                身高:
                <input id="txbHeight" class="form-control" placeholder="請輸入身高" />
                體重:
                <input id="txbWeight" class="form-control" placeholder="請輸入體重" />
                <br />
                <button type="button" class="btn btn-primary" id="ButtonCal">計算</button>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

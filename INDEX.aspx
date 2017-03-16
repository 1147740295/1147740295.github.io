<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INDEX.aspx.cs" Inherits="DDDemo.INDEX" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="js/index.js"></script>
    <script>
        DingTalkPC.config({
            agentId: '81580927',
            corpId: 'dingca516652c6ac243b35c2f4657eb6378f',
            timeStamp: '1461565921',
            nonceStr: 'CUMT1987wlrrlw',
            signature: '9e575d95ecdc595lacle44b2c8eaf42a70a3dc74',
            jsApiList: [
        'device.notification.alert',
        'device.notification.prompt',
            ]
        });
        DingTalkPC.ready(function (res) {
            logger.i('ready');
            DingTalkPC.device.notification.alert({
                message: "亲爱的",
                title: "提示",
                buttonName: "收到",
                onSuccess: function () {
                    logger.i('hello');;
                },
                onFail: function (err) { logger.i(err);}
            })
        });

        DingTalkPC.error(function (error) {
            alert(error.errorCode);
            alert(error.errorMessage);
            logger.i('ready');
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

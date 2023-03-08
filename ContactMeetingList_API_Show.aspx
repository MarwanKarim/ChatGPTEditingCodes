<%@ Page Language="C#" AutoEventWireup="true" Inherits="ContactMeetingList_API_Show" Codebehind="ContactMeetingList_API_Show.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Zoom WebSDK</title>
    <meta charset="utf-8" />
    <link type="text/css" rel="stylesheet" href="https://source.zoom.us/1.7.2/css/bootstrap.css"/>
    <link type="text/css" rel="stylesheet" href="https://source.zoom.us/1.7.2/css/react-select.css"/>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
</head>
<body>
    <form id="form1" runat="server">
    <style>
    body {
        padding-top: 50px;
    }
</style>
        <asp:Label ID="lbl_id" runat="server" Text="Label"></asp:Label>
<nav id="nav-tool" class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">MyMeetingApp</a>
        </div>
        <div id="navbar">
            <div class="navbar-form navbar-right" id="meeting_form">
                <div class="form-group">
                    WebSDK1.7.2#CDN
                    <input type="text" name="display_name" id="display_name" value="SarkautMahmood" placeholder="Name" class="form-control" required>
                </div>
                <div class="form-group">
                    <input type="text" name="meeting_number" id="meeting_number" value="<%= Request.QueryString["id"].ToString()%>" placeholder="Meeting Number" class="form-control" required>
                </div>                                                                   
                <button type="submit" class="btn btn-primary" id="join_meeting">Join</button>
            </div>
        </div><!--/.navbar-collapse -->
    </div>
</nav>

   	
<script src="https://source.zoom.us/1.7.2/lib/vendor/react.min.js"></script>
<script src="https://source.zoom.us/1.7.2/lib/vendor/react-dom.min.js"></script>
<script src="https://source.zoom.us/1.7.2/lib/vendor/redux.min.js"></script>
<script src="https://source.zoom.us/1.7.2/lib/vendor/redux-thunk.min.js"></script>
<script src="https://source.zoom.us/1.7.2/lib/vendor/jquery.min.js"></script>
<script src="https://source.zoom.us/1.7.2/lib/vendor/lodash.min.js"></script>

<script src="https://source.zoom.us/zoom-meeting-1.7.2.min.js"></script>
<%--<script src="js/index.js"></script>--%>


        <script>


(function(){

	console.log('checkSystemRequirements');
	console.log(JSON.stringify(ZoomMtg.checkSystemRequirements()));

    // it's option if you want to change the WebSDK dependency link resources. setZoomJSLib must be run at first
    // if (!china) ZoomMtg.setZoomJSLib('https://source.zoom.us/1.7.2/lib', '/av'); // CDN version default
    // else ZoomMtg.setZoomJSLib('https://jssdk.zoomus.cn/1.7.2/lib', '/av'); // china cdn option 
    // ZoomMtg.setZoomJSLib('http://localhost:9999/node_modules/@zoomus/websdk/dist/lib', '/av'); // Local version default, Angular Project change to use cdn version
    ZoomMtg.preLoadWasm();

    ZoomMtg.prepareJssdk();
    
    var API_KEY = 'deIl9BcORbmIm_TjQvKAyw';

    /**
     * NEVER PUT YOUR ACTUAL API SECRET IN CLIENT SIDE CODE, THIS IS JUST FOR QUICK PROTOTYPING
     * The below generateSignature should be done server side as not to expose your api secret in public
     * You can find an eaxmple in here: https://marketplace.zoom.us/docs/sdk/native-sdks/Web-Client-SDK/tutorial/generate-signature
     */
    var API_SECRET = 'k0xr3BJ6udjLUtDVweXbxdl4ftCiBj8tumBt';


    document.getElementById('join_meeting').addEventListener('click', function(e){
        e.preventDefault();

        if(!this.form.checkValidity()){
            alert("Enter Name and Meeting Number");
            return false;
        }

        var meetConfig = {
            apiKey: API_KEY,
            apiSecret: API_SECRET,
            meetingNumber:   parseInt(document.getElementById('meeting_number').value),
            userName: document.getElementById('display_name').value,
            passWord: "TXhzaTViVWFUQkdWb1E2QWtBbXh6Zz09",
            leaveUrl: "http://80.209.235.99:88/ContactMeetingList_API_Show.aspx?id=<%= Request.QueryString["id"].ToString()%>",
            role: 0
        };

/**/
        var signature = ZoomMtg.generateSignature({
            meetingNumber: meetConfig.meetingNumber,
            apiKey: meetConfig.apiKey,
            apiSecret: meetConfig.apiSecret,
            role: meetConfig.role,
            success: function(res){
                console.log(res.result);
            }
        });
//
        ZoomMtg.init({
         leaveUrl: "http://80.209.235.99:88/ContactMeetingList_API_Show.aspx?id=<%= Request.QueryString["id"].ToString()%>",
            isSupportAV: true,
            success: function () {
                ZoomMtg.join(
                    {
                        meetingNumber: meetConfig.meetingNumber,
                        userName: meetConfig.userName,
                        signature: signature,
                        apiKey: meetConfig.apiKey,
                        userEmail: 'sarkautmahmood@gmail.com',
                        passWord: meetConfig.passWord,
                        success: function(res){
                            $('#nav-tool').hide();
                            console.log('join meeting success');
                        },
                        error: function(res) {
                            console.log(res);
                        }
                    }
                );
            },
            error: function(res) {
                console.log(res);
            }
        });

    });

})();

        </script>
    </form>
</body>
</html>

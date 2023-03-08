<%@ Page Language="C#" AutoEventWireup="true" Inherits="Date11" Codebehind="Date11.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">



   <script type="text/javascript">
       function setTime() {
           today = new Date();
           var str = today.getFullYear() + "-" + (today.getMonth() + 1) + "-" + today.getDate() + "  " + today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
           document.getElementById("TextBox1").value = str;
           document.getElementById("HiddenField1").value = str;
       }
    </script>  
        
     <asp:HiddenField ID="HiddenField1" runat="server" />
        <span id="clienttime"></span>
        <asp:TextBox ID="TextBox1" runat="server" Width="700px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button1_Click" OnClientClick="setTime();" />
  
        
    </form>
</body>
</html>

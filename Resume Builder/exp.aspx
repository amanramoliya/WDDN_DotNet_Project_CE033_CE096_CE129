<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exp.aspx.cs" Inherits="Resume_Builder.exp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .innner {
    background-color: #efefef;
    padding: 20px;
    color: #000;
    font-weight: bold;
    height: 100%;
    text-align:center;
    width: fit-content;
    margin: 50px auto;
    
    
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="innner">

            <br />
            <br />
            <br />
            Do You have Work Experience?<br />
            <br />
            <br />
            <asp:ImageButton ID="yesbutton" runat="server" ImageUrl="~/images/yes.PNG" Width="169px" OnClick="yesbutton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="nobutton" runat="server" Height="163px" ImageUrl="~/images/no.PNG" Width="169px" OnClick="nobutton_Click" />

        </div>
    </form>
</body>
</html>

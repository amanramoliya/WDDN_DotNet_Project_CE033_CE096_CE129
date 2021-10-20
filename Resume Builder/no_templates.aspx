<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="no_templates.aspx.cs" Inherits="Resume_Builder.templates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .Image{
            padding:20px;
        }
        .Image:hover{
            transition:0.8s;
            transform: scale(1.2);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:gainsboro; color:black; font-weight:bold; font-size:20px; padding-left:20px; text-align:center; margin-top:50px; padding-top:20px;">
            <asp:Label ID="heading" runat="server" Text="Choose Your Resume Template"></asp:Label>
                        <div style="padding:50px">

            <asp:ImageButton ID="template1" runat="server" Height="398px" CssClass="Image" ImageUrl="~/templates/no/template1.PNG" OnClick="template1_Click" Width="311px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="template2" runat="server" Height="398px" CssClass="Image" ImageUrl="~/templates/no/template2.PNG" OnClick="template2_Click" Width="311px" />
            </div>
        </div>
    </form>
</body>
</html>

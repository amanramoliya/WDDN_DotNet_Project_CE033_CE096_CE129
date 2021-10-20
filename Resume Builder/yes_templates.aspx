<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yes_templates.aspx.cs" Inherits="Resume_Builder.yes_templates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .Image{
            padding:40px;
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
            <asp:Label ID="Label1" runat="server" Text="Choose your Resume Template"></asp:Label>
            
            <div style="padding:50px">
            <asp:ImageButton ID="template1" runat="server" Height="398px" CssClass="Image" ImageUrl="~/templates/yes/template1.PNG" OnClick="template1_Click" Width="311px" />
            <asp:ImageButton ID="template2" runat="server" Height="398px" CssClass="Image" ImageUrl="~/templates/yes/template2.PNG" OnClick="template2_Click" Width="311px" />

            <asp:ImageButton ID="ImageButton1" runat="server" Height="398px" CssClass="Image" ImageUrl="~/templates/yes/template2.PNG" OnClick="template2_Click" Width="311px" />

            <asp:ImageButton ID="ImageButton2" runat="server" Height="398px" CssClass="Image"  ImageUrl="~/templates/yes/template2.PNG" OnClick="template2_Click" Width="311px" />

            <asp:ImageButton ID="ImageButton3" runat="server" Height="398px" CssClass="Image"  ImageUrl="~/templates/yes/template2.PNG" OnClick="template2_Click" Width="311px" />
                </div>
        </div>
    </form>
</body>
</html>

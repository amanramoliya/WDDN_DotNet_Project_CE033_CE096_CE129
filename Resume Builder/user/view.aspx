<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="Resume_Builder.user.view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 132px;
        }
        .auto-style3 {
            width: 132px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <style>
        .login_Outer {
    background-color:ghostwhite;
    color: #fff;
    height:auto;
    width: 100%;
    margin: 0px auto;
    padding-top:50px;
    padding-bottom:50px;
    
}
.Login_Inner {
    background-color: #efefef;

    color: #000;
    font-weight: bold;
    height: 100%;
    width: fit-content;
    margin: 0px auto;
    padding:50px;
  display:flex;
  flex-direction:column;
}
    </style>
</head>
<body>

    <form id="form1" runat="server">
       
<div class="login_Outer">
          <div style="color:black; font-weight:bold; text-align:center; font-size:20px; padding-bottom:20px;">
            <asp:Label ID="heading" runat="server"  Text="Your Personal Information"></asp:Label>
              </div>
    <div class="Login_Inner">
        <div>
            <asp:Label ID="_username" runat="server" CssClass="form-inline" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" CssClass="form-inline" Text=""></asp:Label>
            </div>
                <br />

            <br />
        <div>
          
            <asp:Label ID="_email" runat="server" CssClass="form-inline" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" CssClass="form-inline" Text=""></asp:Label>
                
               
            </div>
        <br />
            <br />
        <div>
            <asp:Label ID="_mobileno" runat="server" CssClass="form-inline" Text="Mobile No."></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" CssClass="form-inline" Text=""></asp:Label>
                
            </div>
        <div>
            <br />
            <br />
                    <asp:Button ID="update_button" runat="server" CssClass="btn btn-default " Text="Edit" OnClick="update_button_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="delete_account" OnClick="delete_account_Click" CssClass="btn btn-default " runat="server" Text="Delete" />
              </div>
        </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" MasterPageFile="~/page1.Master" Inherits="Resume_Builder.user.login" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
  

   

<div class="login_Outer">
  
    <div class="Login_Inner">
              <asp:Label ID="_username" class="Username" runat="server" CssClass="Username" Text="Username:"></asp:Label>
            <asp:RequiredFieldValidator ID="usernamereq" runat="server" ControlToValidate="username" ErrorMessage="*" ForeColor="#FF0066" ToolTip="Username is required"></asp:RequiredFieldValidator>
            <asp:TextBox ID="username" runat="server" CssClass="form-control form-group-lg" Width="350px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="username_validate" runat="server" ControlToValidate="username" ErrorMessage="Enter a valid Username" ForeColor="#FF0066" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20})"></asp:RegularExpressionValidator>
          
            <asp:Label ID="_password" runat="server"  CssClass="form-inline" Text="Password:"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" ErrorMessage="*" ForeColor="#FF0066" ToolTip="Password is required"></asp:RequiredFieldValidator>
            <asp:TextBox ID="password" runat="server" TextMode="Password"  CssClass="form-control form-group-lg" Width="350px" ></asp:TextBox>
            <asp:RegularExpressionValidator ID="password_validate" runat="server" ControlToValidate="password" ErrorMessage="Enter a valid password" ForeColor="#FF0066" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{6,20})"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="login_button" runat="server" Text="Login" CssClass="btn btn-default" OnClick="login_button_Click" />
<asp:HyperLink ID="forgotpassword" runat="server" NavigateUrl="~/user/forgot.aspx" CssClass="Links">Forgot Password?</asp:HyperLink>
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/user/signup.aspx" CssClass="Links">Don&#39;t have account? sign-up </asp:HyperLink>
          
   </div>
</div>
</asp:Content>
   



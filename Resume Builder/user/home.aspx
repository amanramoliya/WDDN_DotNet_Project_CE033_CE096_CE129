<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" MasterPageFile="~/page1.Master" Inherits="Resume_Builder.user.home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
 
<div class="login_Outer">
  
    <div class="Login_Inner">
     <asp:Button ID="makecv_button" runat="server" CssClass="btn btn-default " PostBackUrl="~/exp.aspx" Text="Make Resume" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="view_button" runat="server" CssClass="btn btn-default " OnClick="view_button_Click" Text='<%# Session["Username"].ToString() %>'/>
           </div>
         </div>
</asp:Content>


                    

       

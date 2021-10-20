<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="Resume_Builder.user.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
     <style>
        .Outer {
    background-color: ghostwhite;
    color: #fff;
    height: min-content;
    width: 100%;
    margin: 50px auto;
}

.innner {
    background-color: #efefef;
    padding: 20px;
    color: #000;
    font-weight: bold;
    height: 100%;
    width: fit-content;
    margin: 0px auto;
    display: grid;
    justify-content: center;
    grid-auto-columns: min-content;
}
         </style>
</head>
<body>
      <form id="form1" runat="server">
        
        <div>
        </div>
      <div class="Outer">
            <div class="innner">

            <asp:Label ID="_username" runat="server" CssClass="form-inline" Text="Username"></asp:Label>
                    <asp:RequiredFieldValidator ID="username_req" runat="server" ControlToValidate="username" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ToolTip="Username is required"></asp:RequiredFieldValidator>
           
                    <asp:TextBox ID="username" runat="server" CssClass="form-control form-group-lg" Width="350px"></asp:TextBox>
              
                    <asp:RegularExpressionValidator ID="username_validate" runat="server" ControlToValidate="username" ErrorMessage="Enter a valid Username" ForeColor="#FF0066" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20})"></asp:RegularExpressionValidator>
                
            <asp:Label ID="_email" runat="server" CssClass="form-inline" Text="Email"></asp:Label>
                    <asp:RequiredFieldValidator ID="email_req" runat="server" ControlToValidate="email" ErrorMessage="*" ForeColor="Red" ToolTip="Email is required"></asp:RequiredFieldValidator>
             
                    <asp:TextBox ID="email" runat="server" CssClass="form-control form-group-lg" TextMode="Email" Width="350px"></asp:TextBox>
              
                    <asp:RegularExpressionValidator ID="email_validate" runat="server" ControlToValidate="email" ErrorMessage="Enter a valid Email" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              
        
            <asp:Label ID="Label1" runat="server" CssClass="form-inline" Text="Mobile No."></asp:Label>
                    <asp:RequiredFieldValidator ID="mobile_req" runat="server" ControlToValidate="mobileno" ErrorMessage="*" ForeColor="Red" ToolTip="Mobile number is required"></asp:RequiredFieldValidator>
           
                    <asp:TextBox ID="mobileno" runat="server" CssClass="form-control form-group-lg" TextMode="Phone" Width="350px"></asp:TextBox>
                   
                    <asp:RegularExpressionValidator ID="mobileno_validate" runat="server" ControlToValidate="mobileno" ErrorMessage="Enter a valid mobile number" ForeColor="#FF0066" ToolTip="mobile number must contain 10 digits" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                    <asp:Button ID="update_button" CssClass="btn btn-default " runat="server" OnClick="update_button_Click" Text="update" />

                </div>
        </div>
    </form>
</body>
</html>

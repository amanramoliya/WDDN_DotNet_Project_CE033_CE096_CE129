<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="Resume_Builder.user.forgot" %>

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


.innner{
    background-color: #efefef;
    padding: 20px;
    font-weight: bold;
    height: 100%;
    width: fit-content;
    margin: 10% auto;
    display: grid;
    justify-content: center;
    grid-auto-columns: min-content;
}
        @media (max-width: 960px) {
            .innner {
                margin: 40% auto;
            }
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
      
            <div class="innner">

            <asp:Label ID="_email" runat="server"  CssClass="form-inline" Text="Email"></asp:Label>
                        <asp:RequiredFieldValidator ID="email_req" runat="server" ControlToValidate="email" ErrorMessage="*" ForeColor="Red" ToolTip="Email is required"></asp:RequiredFieldValidator>
                   
                        <asp:TextBox ID="email" runat="server" CssClass="form-control form-group-lg" Width="350px" ></asp:TextBox>
                      
                    <asp:RegularExpressionValidator ID="email_validate" runat="server" ControlToValidate="email" ErrorMessage="Enter a valid Email" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                
                        <asp:Button ID="sendmail" runat="server" CssClass="btn btn-default " Text="Send mail" OnClick="sendmail_Click" />
</div>
      
    </form>
</body>
</html>

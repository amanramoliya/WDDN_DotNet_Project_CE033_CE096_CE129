<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="Resume_Builder.user.delete" %>

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
        .innner {
    background-color: #efefef;
    padding: 20px;
    color: #000;
    font-weight: bold;
    height: 100%;
    width: fit-content;
    margin: 100px auto;
    display: grid;
    justify-content: center;
    grid-auto-columns: min-content;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="innner">

        
            <asp:Label ID="_username" runat="server"  CssClass="form-inline" Text="Username"></asp:Label>
                    <asp:RequiredFieldValidator ID="username_req" runat="server" ControlToValidate="username" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
                    <asp:TextBox ID="username" runat="server" CssClass="form-control form-group-lg" Width="250px"></asp:TextBox>
            
                    <asp:RegularExpressionValidator ID="username_validate" runat="server" ControlToValidate="username" ErrorMessage="Enter a valid Username" ForeColor="#FF0066" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20})"></asp:RegularExpressionValidator>
            

            <asp:Label ID="_password" runat="server"  CssClass="form-inline" Text="Password"></asp:Label>
                    <asp:RequiredFieldValidator ID="password_req" runat="server" ControlToValidate="password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

     
        <p>
                    <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control form-group-lg" Width="250px"></asp:TextBox>
                    </p>
        <p>
                    <asp:RegularExpressionValidator ID="password_validate" runat="server" ControlToValidate="password" ErrorMessage="Enter a valid password" ForeColor="#FF0066" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{6,20})"></asp:RegularExpressionValidator>
                </p>
        <p>
                    <asp:Button ID="delete_acc" runat="server" CssClass="btn btn-default" OnClick="delete_acc_Click" Text="Delete " />
                </p>
            </div>
    </form>
</body>
</html>

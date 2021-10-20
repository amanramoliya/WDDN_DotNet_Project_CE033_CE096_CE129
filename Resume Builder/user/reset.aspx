<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reset.aspx.cs" Inherits="Resume_Builder.user.reset" %>

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

            <asp:Label ID="_newpassword" runat="server"  CssClass="form-inline" Text="New Password"></asp:Label>
                    <asp:RequiredFieldValidator ID="password_req" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="newpassword" ToolTip="Password is required"></asp:RequiredFieldValidator>
                    
                    <asp:TextBox ID="newpassword" runat="server" CssClass="form-control form-group-lg" TextMode="Password" Width="250px"></asp:TextBox>
                    <br />

            
            <asp:Label ID="_confirmpassword" runat="server"  CssClass="form-inline" Text="Confirm Password"></asp:Label>
                    <asp:RequiredFieldValidator ID="confirmpassword_req" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="confirmpassword" ToolTip="Confirm Password is required"></asp:RequiredFieldValidator>
              
                    <asp:TextBox ID="confirmpassword" runat="server" CssClass="form-control form-group-lg" TextMode="Password" Width="250px"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="confirmpassword_validate" runat="server" ControlToCompare="newpassword" ControlToValidate="confirmpassword" ErrorMessage="Confirm password must match password" ForeColor="#FF0066" ToolTip="Password &amp; Confirm password must be same"></asp:CompareValidator>
                
                    <asp:Button ID="resetbutton" runat="server" CssClass="btn btn-default " Text="Reset" OnClick="resetbutton_Click" />
        </div>
    </form>
</body>
</html>
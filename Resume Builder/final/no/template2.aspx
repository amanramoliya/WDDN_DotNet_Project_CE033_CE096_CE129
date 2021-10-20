<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="template2.aspx.cs" EnableEventValidation ="false" Inherits="Resume_Builder.final.no.template2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 114px;
        }
        .auto-style4 {
            width: 114px;
        }
button,html input[type=button],input[type=reset],input[type=submit]{-webkit-appearance:button;cursor:pointer}.btn-default{text-shadow:0 1px 0 #fff;background-image:-webkit-linear-gradient(top,#fff 0,#e0e0e0 100%);background-image:-o-linear-gradient(top,#fff 0,#e0e0e0 100%);background-image:-webkit-gradient(linear,left top,left bottom,from(#fff),to(#e0e0e0));background-image:linear-gradient(to bottom,#fff 0,#e0e0e0 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#ffe0e0e0', GradientType=0);filter:progid:DXImageTransform.Microsoft.gradient(enabled=false);background-repeat:repeat-x;border-color:#dbdbdb;border-color:#ccc}.btn-danger,.btn-default,.btn-info,.btn-primary,.btn-success,.btn-warning{text-shadow:0 -1px 0 rgba(0,0,0,.2);-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,.15),0 1px 1px rgba(0,0,0,.075);box-shadow:inset 0 1px 0 rgba(255,255,255,.15),0 1px 1px rgba(0,0,0,.075)}.btn-default{color:#333;background-color:#fff;border-color:#ccc}.btn{display:inline-block;padding:6px 12px;margin-bottom:0;font-size:14px;font-weight:400;line-height:1.42857143;text-align:center;white-space:nowrap;vertical-align:middle;-ms-touch-action:manipulation;touch-action:manipulation;cursor:pointer;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;background-image:none;border:1px solid transparent;border-radius:4px}button,input,select,textarea{font-family:inherit;font-size:inherit;line-height:inherit}input{line-height:normal}button,input,optgroup,select,textarea{margin:0;font:inherit;color:inherit}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*,:after,:before{color:#000!important;text-shadow:none!important;background:0 0!important;-webkit-box-shadow:none!important;box-shadow:none!important}</style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel runat="server" ID="panelPDF">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image1" runat="server" Width="153px" />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="name" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="email" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="mobileno" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="_carrerobjective" runat="server" Text="Carrer Objective"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="carrerobjective" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="_skills" runat="server" Text="Skills"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Skills" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="_projects" runat="server" Text="Projects"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="ps" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style2">
                        <asp:SqlDataSource ID="educationdt" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT school AS [School/College], university AS [Board/University], qualification AS Qualification, branch AS [Branch/Stream], passingyear AS [Passing Year] FROM resumedatas WHERE ([username] = @username)">
                            <SelectParameters>
                                <asp:SessionParameter Name="username" SessionField="Username" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="_education" runat="server" Text="Education"></asp:Label>
                    </td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="educationdt">
                            <Columns>
                                <asp:BoundField DataField="School/College" HeaderText="School/College" SortExpression="School/College" />
                                <asp:BoundField DataField="Board/University" HeaderText="Board/University" SortExpression="Board/University" />
                                <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
                                <asp:BoundField DataField="Branch/Stream" HeaderText="Branch/Stream" SortExpression="Branch/Stream" />
                                <asp:BoundField DataField="Passing Year" HeaderText="Passing Year" SortExpression="Passing Year" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="_personal" runat="server" Text="Personal Information"></asp:Label>
                    </td>
                    <td>
            <asp:Label ID="_birthdate" runat="server" Text="Birth Date:"></asp:Label>
&nbsp;
            <asp:Label ID="Birthdate" runat="server"></asp:Label>
                        <br />
            <asp:Label ID="_country" runat="server" Text="Country:"></asp:Label>
&nbsp;
            <asp:Label ID="Country" runat="server"></asp:Label>
            <br />
            <asp:Label ID="_maritalstatus" runat="server" Text="Marital Status:"></asp:Label>
&nbsp;
            <asp:Label ID="Maritalstatus" runat="server"></asp:Label>
            <br />
            <asp:Label ID="_gender" runat="server" Text="Gender:"></asp:Label>
&nbsp;
            <asp:Label ID="Gender" runat="server"></asp:Label>
            <br />
            <asp:Label ID="_address" runat="server" Text="Address:"></asp:Label>
&nbsp;
            <asp:Label ID="Address" runat="server"></asp:Label>
&nbsp;
            <asp:Label ID="City" runat="server"></asp:Label>
&nbsp;
            <asp:Label ID="State" runat="server"></asp:Label>
&nbsp;
            <asp:Label ID="A_country" runat="server"></asp:Label>
                <br />
                <asp:Label ID="_languages" runat="server" Text="Languages Known:"></asp:Label>
                <asp:Label ID="Language" runat="server"></asp:Label>
                <br />
                <asp:Label ID="_hobby" runat="server" Text="Hobbies:"></asp:Label>
                &nbsp;<asp:Label ID="Hobby" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                <asp:Label ID="decleration" runat="server" Text="I hereby declare that all above information is in correct with fact or truth up to my knowledge and I bear the responsibilities for the correctness of the above mentioned particulars."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="_date" runat="server" Text="Date:"></asp:Label>
&nbsp;<asp:Label ID="date" runat="server"></asp:Label>
                    </td>
                    <td>
                <asp:Label ID="sign" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                <asp:Button ID="Download" cssclass="btn btn-default" runat="server" OnClick="Download_Click" Text="Download" />
                    </td>
                </tr>
            </table>
                </asp:Panel>
        </div>
    </form>
</body>
</html>

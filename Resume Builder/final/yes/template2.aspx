<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="template2.aspx.cs" EnableEventValidation ="false" Inherits="Resume_Builder.final.yes.template2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            <asp:Label ID="firstname" runat="server"></asp:Label>
                &nbsp;<asp:Label ID="lastname" runat="server"></asp:Label>
            <br />
            <asp:Label ID="email" runat="server"></asp:Label>
            <br />
            <asp:Label ID="mobileno" runat="server"></asp:Label>
            <br />
                <hr />
            <asp:Label ID="_carrerobjective" runat="server" Text="Carrer Objective"></asp:Label>
            <br />
            <asp:Label ID="carrerobjective" runat="server"></asp:Label>
                <br />
                <asp:SqlDataSource ID="workdt" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT jobtitle AS [Job Title], employeer AS Employeer, startyear AS [Start Date], endyear AS [End Date] FROM resumedatas WHERE ([username] = @username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="Username" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="_workexp" runat="server" Text="Work Experience"></asp:Label>
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="workdt">
                    <Columns>
                        <asp:BoundField DataField="Job Title" HeaderText="Job Title" SortExpression="Job Title" />
                        <asp:BoundField DataField="Employeer" HeaderText="Employeer" SortExpression="Employeer" />
                        <asp:BoundField DataField="Start Date" HeaderText="Start Date" SortExpression="Start Date" />
                        <asp:BoundField DataField="End Date" HeaderText="End Date" SortExpression="End Date" />
                    </Columns>
                </asp:GridView>
                <hr/>
                &nbsp;<asp:SqlDataSource ID="skilldt" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT skill1 AS [Technical Skills] FROM skills WHERE ([username] = @username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="Username" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="skilldt">
                    <AlternatingItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="Technical_SkillsLabel" runat="server" Text='<%# Eval("[Technical Skills]") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:TextBox ID="Technical_SkillsTextBox" runat="server" Text='<%# Bind("[Technical Skills]") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>
                                <asp:TextBox ID="Technical_SkillsTextBox" runat="server" Text='<%# Bind("[Technical Skills]") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="Technical_SkillsLabel" runat="server" Text='<%# Eval("[Technical Skills]") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server">Technical Skills</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="Technical_SkillsLabel" runat="server" Text='<%# Eval("[Technical Skills]") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <hr />
            <asp:Label ID="_projects" runat="server" Text="Projects"></asp:Label>
                <br />
            <br />
            <asp:Label ID="ps" runat="server"></asp:Label>
            <br />
                <hr />
            <asp:Label ID="_education" runat="server" Text="Education"></asp:Label>
            <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="educationdt">
                    <Columns>
                        <asp:BoundField DataField="School/College" HeaderText="School/College" SortExpression="School/College" />
                        <asp:BoundField DataField="Board/University" HeaderText="Board/University" SortExpression="Board/University" />
                        <asp:BoundField DataField="Qualification" HeaderText="Qualification" SortExpression="Qualification" />
                        <asp:BoundField DataField="Branch/Stream" HeaderText="Branch/Stream" SortExpression="Branch/Stream" />
                        <asp:BoundField DataField="Passing Year" HeaderText="Passing Year" SortExpression="Passing Year" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="educationdt" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT school AS [School/College], university AS [Board/University], qualification AS Qualification, branch AS [Branch/Stream], passingyear AS [Passing Year] FROM resumedatas WHERE ([username] = @username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="Username" />
                    </SelectParameters>
                </asp:SqlDataSource>
            <br />
                <hr/>
            <asp:Label ID="_personal" runat="server" Text="Personal Information"></asp:Label>
            <br />
            <br />
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
                <br />
                <br />
                <asp:Label ID="decleration" runat="server" Text="I hereby declare that all above information is in correct with fact or truth up to my knowledge and I bear the responsibilities for the correctness of the above mentioned particulars."></asp:Label>
                <br />
                <br />
                Date:&nbsp;
                <asp:Label ID="date" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="sign" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Download" cssclass="btn btn-default" runat="server" OnClick="Download_Click" Text="Download" />
            <br />
                </asp:Panel>
        </div>
    </form>
</body>
</html>


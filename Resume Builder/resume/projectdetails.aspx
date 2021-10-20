<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projectdetails.aspx.cs" Inherits="Resume_Builder.resume.project" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
      crossorigin="anonymous"
    />

    <!-- Optional theme -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
      integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
      crossorigin="anonymous"
    />

    <!-- Latest compiled and minified JavaScript -->
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
      integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
      crossorigin="anonymous"
    ></script>

    <style>
      #projectDetails {
        height: max-content;
        margin: auto;
        margin-top: 30px;
        width: 900px;
        background-color: rgb(236, 230, 230);
        padding: 40px;
      }
       #projectDetails .heading {
        color: darkblue;
        font-weight: 800;
        text-align: center;
        width: 100%;
        font-size: 30px;
        margin-bottom: 10px;
      }
      #projectDetails .labels{
        font-weight: 600;
        font-size: 20px;
      }
      #projectDetails .buttons-div {
        padding: 0 30px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        margin-bottom:10px;

      }
      #projectDetails .row{
        margin: 10px;
      }
   
      #projectDetails .auto-style1 {
        display: block;
        padding: 6px 12px;
        font-size: 14px;
        line-height: 1.42857143;
        color: #555;
        background-color: #fff;
        background-image: none;
        border: 1px solid #ccc;
        border-radius: 4px;
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        -webkit-transition: border-color ease-in-out 0.15s,
          -webkit-box-shadow ease-in-out 0.15s;
        -o-transition: border-color ease-in-out 0.15s,
          box-shadow ease-in-out 0.15s;
        transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
        width: 60%;
      }
      #projectDetails .projectsClass {
        color: cadetblue;
        margin:10px;
        font-size:18px;
        margin-left: 20px;
      }
      #projectDetails #Addproject{
          margin-left: 20px;
      }
     
     
    </style>
</head>
<body>
    <div id="projectDetails">
          <form id="form1" runat="server">
        <div>
            <asp:Label ID="CittaLabel" runat="server" Text="Project Details" CssClass="heading" ></asp:Label>
           <div  class="row">
               
            <asp:Label ID="_project" runat="server" Text="Project Name" CssClass="labels col-sm-3"></asp:Label>
          
            <asp:TextBox ID="Projectname" runat="server" CssClass="auto-style1"></asp:TextBox>

           </div>
          <div class="row">
            <asp:Label ID="_projecturl" runat="server" Text="Project Url" CssClass="labels col-sm-3"></asp:Label>
           
            <asp:TextBox ID="Projecturl" runat="server" CssClass="auto-style1"></asp:TextBox>
           
          </div>
          <div class="row">
            <asp:Label ID="_description" runat="server" Text="Project Description" CssClass="labels col-sm-3"></asp:Label>
         
            <asp:TextBox ID="Projectdescription" runat="server" CssClass="auto-style1"></asp:TextBox>

          </div>

            <div class="row">
                 <asp:Button ID="Addproject" runat="server" OnClick="Addproject_Click"  CssClass="btn btn-primary" Text="Add Project" />
            </div>
            <div class="row">
                 <asp:PlaceHolder ID="projects" runat="server" ></asp:PlaceHolder>
            </div>
           
            <div class="buttons-div">
          <div class="buttons">
            <asp:Button
              ID="Button1"
              runat="server"
              CssClass="btn btn-warning"
              PostBackUrl="~/resume/work_training.aspx"
              Text="Back"
            />
          </div>
                <div class="buttons">
                <asp:Button
                  ID="Clear"
                  CssClass="btn btn-primary"
                  runat="server"
                  OnClick=" Clear_Click"
                  Text="Clear" Height="30px" Width="70px"
                />
              </div>
          <div>
            <asp:Button ID="Nextbutton" runat="server" Text="Next"  CssClass="btn btn-success" PostBackUrl="~/resume/summary.aspx" />
        </div>
        </div>
    </form>
    </div>
  
</body>
</html>

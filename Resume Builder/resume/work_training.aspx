<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="work_training.aspx.cs" Inherits="Resume_Builder.resume.work_history" %>

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
      #worktrainingDetails {
        height: max-content;
        margin: auto;
        margin-top: 70px;
        width: 900px;
        background-color: rgb(236, 230, 230);
        padding: 40px;
      }
      #worktrainingDetails .heading{
       
        color: rgb(11, 109, 126);
        font-weight: 800;
        text-align: center;
        width:100% ;
        font-size:25px;
      }
     
      #worktrainingDetails .label{
       margin-top: 10px;
       font-weight: 600;
       font-size: 18px;
       color: darkblue;
       margin-bottom: 5px;
       margin-left: -10px;
       
      }
      #worktrainingDetails .row{
        margin: 10px;
        padding: 5px 0;
      }
       #worktrainingDetails .buttons-div {
          padding: 0 30px  ;
          display: flex;
          flex-direction: row;
          justify-content: space-between;
      }
   
    
      #worktrainingDetails .auto-style1 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            width: 325px;
       
        }
        #worktrainingDetails .row-checked{
        margin-left: 10px;
      }
      .auto-style1:focus{
          outline:none;
      }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="worktrainingDetails">
            <div>
                  <asp:Label ID="CittaLabel" runat="server" Text="Work/Training History" CssClass="heading"></asp:Label>
            </div>
             <div class="row">
                       <div class="col-sm-6">
                            <asp:Label ID="_Jobtitle" runat="server" Text="Job Title" CssClass="label"></asp:Label>
                            <asp:TextBox ID="jobtitle" runat="server" CssClass="auto-style1"></asp:TextBox>
                       </div>
                       <div class="col-sm-6"> 
                            <asp:Label ID="_Employer" runat="server" Text="Employer" CssClass="label"></asp:Label>
                            <asp:TextBox ID="employer" runat="server"  CssClass="auto-style1"></asp:TextBox>
                      </div>
             </div>       
             <div class="row">
                      <div class="col-sm-6">
                          <asp:Label ID="_City" runat="server" Text="City" CssClass="label"></asp:Label>
                          <asp:TextBox ID="city" runat="server"  CssClass="auto-style1"></asp:TextBox>
                      </div>
                      <div class="col-sm-6">
                          <asp:Label ID="_State" runat="server" Text="State" CssClass="label"></asp:Label>
                          <asp:TextBox ID="state" runat="server" CssClass="auto-style1"></asp:TextBox>
                      </div>
             </div>
            <div class="row">
              <div class="col-sm-6">
                <asp:Label ID="_Startdate" runat="server" Text="Start Date" CssClass="label"></asp:Label>
                <asp:TextBox ID="startdate" runat="server" TextMode="Date" CssClass="auto-style1"></asp:TextBox>
              </div>
              <div class="col-sm-6">
                <asp:Label ID="_Enddate" runat="server" Text="End Date" CssClass="label"></asp:Label>
                <asp:TextBox ID="enddate" runat="server" TextMode="Date" CssClass="auto-style1"></asp:TextBox>
              </div>
            </div>
            <div class="row row-checked">
              <asp:CheckBox ID="current" runat="server" Text="&nbsp;&nbsp;I currently working here" />
            </div>    
                 
               
                
                       
                
                  <div class="buttons-div">
                       <asp:Button ID="Back" runat="server" Text="Back" OnClick="Back_Click"  CssClass="btn btn-warning"/>
                   <div class="buttons">
                <asp:Button
                  ID="Clear"
                  CssClass="btn btn-primary"
                  runat="server"
                  OnClick=" Clear_Click"
                  Text="Clear" Height="30px" Width="70px"
                />
              </div>
                        <asp:Button ID="Next" runat="server" OnClick="Next_Click" Text="Next" CssClass="btn btn-success" Width="66px" />
                  </div>
                       
               
        </div>
    </form>
</body>
</html>

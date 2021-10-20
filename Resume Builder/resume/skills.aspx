<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="skills.aspx.cs"
Inherits="Resume_Builder.resume.skills" %>

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
      #skillDetails {
        height: max-content;
        margin: auto;
        margin-top: 30px;
        width: 900px;
        background-color: rgb(236, 230, 230);
        padding: 40px;
      }
      #skillDetails #CittaLabel {
        color: darkblue;
        font-weight: 800;
        text-align: center;
        width: 100%;
        font-size: 30px;
        margin-bottom: 10px;
      }
      #skillDetails .buttons-div {
        padding: 0 30px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        margin-bottom:10px;

      }
      #skillDetails #_addskill{
          font-size:20px;
          font-weight:600;
      }

      #skillDetails .auto-style1 {
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
        width: 325px;
      }

      #skillDetails .skillsclass {
        color: cadetblue;
        margin:10px;
        font-size:18px;
      }
      .auto-style1:focus{
          outline:none;
      }
    </style>
  </head>
  <body>
    <div id="skillDetails">
      <form id="form1" runat="server">
        <div>
          <asp:Label ID="CittaLabel" runat="server" Text="Skills"></asp:Label>
        </div>
        <div class="row">
          <asp:Label
            ID="_addskill"
            runat="server"
            Text="Skill's Name"
            CssClass="col-sm-3"
          ></asp:Label>

          <asp:TextBox
            ID="Addskill"
            runat="server"
            CssClass="auto-style1 col-sm-6"
          ></asp:TextBox>
        </div>
        <div class="buttons-div">
          <div>
            <asp:PlaceHolder ID="Skill" runat="server"></asp:PlaceHolder>
          </div>
          <div>
            <asp:Button
              ID="Addbutton"
              runat="server"
              Text="Add"
              Width="82px"
              CssClass="btn btn-info"
              OnClick="Addbutton_Click"
            />
          </div>
        </div>
        <div class="buttons-div">
          <div class="buttons">
            <asp:Button
              ID="Button1"
              runat="server"
              CssClass="btn btn-warning"
              PostBackUrl="~/resume/education.aspx"
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
            <asp:Button
              ID="Button2"
              runat="server"
              Text="Next"
              CssClass="btn btn-success"
              OnClick="Nextbutton_Click"
            />
          </div>
        </div>
      </form>
    </div>
  </body>
</html>

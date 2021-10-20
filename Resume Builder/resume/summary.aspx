<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="summary.aspx.cs"
Inherits="Resume_Builder.resume.summary" %>

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
      #summeryDetails {
        height: max-content;
        margin: auto;
        margin-top: 70px;
        width: 900px;
        background-color: rgb(236, 230, 230);
        padding: 40px;
      }
      #summeryDetails .heading {
        color: rgb(11, 109, 126);
        font-weight: 800;
        text-align: center;
        width: 100%;
        font-size: 25px;
      }

      #summeryDetails .label {
        margin-top: 10px;
        font-weight: 600;
        font-size: 18px;
        color: darkblue;
        margin-bottom: 5px;
        margin-left: -10px;
      }
      #summeryDetails .row {
        margin: 10px;
        padding: 5px 0;
      }
      #summeryDetails .buttons-div {
        padding: 0 30px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
      }

      #summeryDetails .auto-style1 {
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

      .auto-style1:focus {
        outline: none;
      }
    </style>
  </head>
  <body>
    <form id="form1" runat="server">
      <div id="summeryDetails">
        <asp:Label
          ID="CittaLabel"
          runat="server"
          Text="Summry &amp; Carrer Objective"
          CssClass="heading"
        ></asp:Label>

      <div class="row">
        <asp:Label
        ID="_carrerobjective"
        runat="server"
        Text="Carrer objective(Optional)"
        CssClass="label"
      ></asp:Label>

      <asp:TextBox
        ID="Carrerobjective"
        runat="server"
        CssClass="auto-style1"
      ></asp:TextBox>
      </div>

        <div class="row">
          <asp:Label
            ID="_summary"
            runat="server"
            Text="Summary(Optional)"
            CssClass="label"
          ></asp:Label>

          <asp:TextBox
            ID="summarytb"
            runat="server"
            CssClass="auto-style1"
          ></asp:TextBox>
        </div>

        <div class="buttons-div">
          <asp:Button
            ID="Backbutton"
            runat="server"
            OnClick="Backbutton_Click"
              CssClass="btn btn-warning"
            Text="Back"
          />
            <div class="buttons">
                <asp:Button
                  ID="Clear"
                  CssClass="btn btn-primary"
                  runat="server"
                  OnClick=" Clear_Click"
                  Text="Clear" Height="30px" Width="70px"
                />
              </div>
          <asp:Button
            ID="Nextbutton"
            runat="server"
            OnClick="Nextbutton_Click"
            Text="Next"
            CssClass="btn btn-success"
            Width="69px"
          />
        </div>
      </div>
    </form>
  </body>
</html>

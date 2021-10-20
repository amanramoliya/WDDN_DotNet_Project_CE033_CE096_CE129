<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="education.aspx.cs"
Inherits="Resume_Builder.resume.education" %>

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
      #educationDetails {
        height: max-content;
        margin: auto;
        margin-top: 30px;
        width: 900px;
        background-color: rgb(236, 230, 230);
        padding: 40px;
      }
      #educationDetails .row{
        margin: 10px;
      }
      #educationDetails .row .labels{
        color: #555;
        margin-left: 20px;
        font-weight: 600;
      }
      #educationDetails #CittaLabel {
        font-size: 25px;
        color: darkblue;
      }
      #educationDetails .buttons-div {
        padding: 0 30px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
      }
      #educationDetails .row-checked{
        margin-left: 20px;
      }
      #educationDetails .auto-style1 {
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
        margin-right: 10px;
        margin-left: 20px;
      }
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 50%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
  </head>
  <body>
    <div id="educationDetails">
      <form id="form1" runat="server">
        <div>
          <asp:Label
            ID="CittaLabel"
            runat="server"
            Text="Educational Details"
          ></asp:Label>

          <div class="row">
            <div class="col-sm-6">
              <asp:Label
                ID="_state"
                runat="server"
                Text="State / Province"
                CssClass="labels"
              ></asp:Label>
              <asp:RequiredFieldValidator
                ID="statereq"
                runat="server"
                ControlToValidate="State"
                ErrorMessage="*"
                ForeColor="#FF0066"
                ToolTip="State is required"
              ></asp:RequiredFieldValidator>
              <asp:TextBox
                ID="State"
                runat="server"
                Width="323px"
                CssClass="auto-style1 form-control"
              ></asp:TextBox>
            </div>
            <div class="col-sm-6">
              <asp:Label ID="_city" runat="server" Text="City" CssClass="labels"></asp:Label>
              <asp:RequiredFieldValidator
                ID="cityreq"
                runat="server"
                ControlToValidate="City"
                ErrorMessage="*"
                ForeColor="#FF0066"
                ToolTip="City is required"
              ></asp:RequiredFieldValidator>
              <asp:TextBox
                ID="City"
                runat="server"
                CssClass="auto-style1 form-control"
              ></asp:TextBox>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6">
              <asp:Label
                ID="_college"
                runat="server"
                Text="School / College"
                CssClass="labels"
              ></asp:Label>
              <asp:RequiredFieldValidator
                ID="RequiredFieldValidator1"
                runat="server"
                ControlToValidate="College"
                ErrorMessage="*"
                ForeColor="#FF0066"
                ToolTip="College is required"
              ></asp:RequiredFieldValidator>
              <asp:TextBox
                ID="College"
                runat="server"
                CssClass="auto-style1 form-control"
              ></asp:TextBox>
            </div>
            <div class="col-sm-6">
              <asp:Label
                ID="_board"
                runat="server"
                Text="Board/University"
                CssClass="labels"
              ></asp:Label>
              <asp:RequiredFieldValidator
                ID="RequiredFieldValidator2"
                runat="server"
                ControlToValidate="Board"
                ErrorMessage="*"
                ForeColor="#FF0066"
                ToolTip="University/Board name is required"
              ></asp:RequiredFieldValidator>
              <asp:TextBox
                ID="Board"
                runat="server"
                CssClass="auto-style1 form-control"
              ></asp:TextBox>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-6">
              <asp:Label
                ID="_qualification"
                runat="server"
                Text="Class / Standard / Degree / Qualification"
                CssClass="labels"
              ></asp:Label>
              <asp:RequiredFieldValidator
                ID="qualificationreq"
                runat="server"
                ControlToValidate="Qualification"
                ErrorMessage="*"
                ForeColor="#FF0066"
                ToolTip="Qualification is required"
              ></asp:RequiredFieldValidator>
              <asp:TextBox
                ID="Qualification"
                runat="server"
                CssClass="auto-style1 form-control"
              ></asp:TextBox>
            </div>
            <div class="col-sm-6">
              <asp:Label
                ID="_field"
                runat="server"
                Text="Field of study / Course / Branch / Stream"
                CssClass="labels"
              ></asp:Label>

              <asp:RequiredFieldValidator
                ID="fieldreq"
                runat="server"
                ControlToValidate="Field"
                ErrorMessage="*"
                ForeColor="#FF0066"
              ></asp:RequiredFieldValidator>

              <asp:TextBox
                ID="Field"
                runat="server"
                CssClass="auto-style1 form-control"
              ></asp:TextBox>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-6">
              <asp:Label
                ID="_passingyear"
                runat="server"
                Text="Completed / Passing Year"
                CssClass="labels"
              ></asp:Label>
              <asp:RequiredFieldValidator
                ID="passingyearreq"
                runat="server"
                ControlToValidate="Passingyear"
                ErrorMessage="*"
                ForeColor="#FF0066"
                ToolTip="Passing year is required"
              ></asp:RequiredFieldValidator>
              <asp:TextBox
                ID="Passingyear"
                runat="server"
                CssClass="auto-style1 form-control"
              ></asp:TextBox>
            </div>
            <div class="col-sm-6">
              <asp:Label
                ID="_cgpa"
                runat="server"
                Text="Percentage / CGPA (Optional)"
                CssClass="labels"
              ></asp:Label>
              <asp:TextBox
                ID="Cgpa"
                runat="server"
                CssClass="auto-style1 form-control"
              ></asp:TextBox>
            </div>
          </div>
          <div class="row row-checked">
            <asp:CheckBox
              ID="Current"
              runat="server"
              Text="   Currently I'm Studying Here."
              CssClass="labels"
            />
          </div>
          <div class="buttons-div">
            <div class="buttons">
              <asp:Button
                ID="Backbutton"
                CssClass="btn btn-warning"
                runat="server"
                OnClick="Backbutton_Click"
                Text="Back"
                Height="30px"
                Width="70px"
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
                ID="Nextbutton"
                CssClass="btn btn-success"
                runat="server"
                OnClick="Nextbutton_Click"
                Text="Next"
                Height="30px"
                Width="71px"
              />
            </div>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>

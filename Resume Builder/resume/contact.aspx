<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs"
Inherits="Resume_Builder.resume.contact" %>

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
      #contact .Outer {
        height: max-content;
        margin-top: 70px;
      }
      #contact #CittaLabel {
        color: darkblue;
        font-size:30px;
        font-weight:700;
      }
      #contact .innner {
        margin-left: 100px;
        background-color: rgb(236, 230, 230);
        padding: 20px;
        width: 1300px;
      }
      #contact .row {
        margin: 10px;
        padding:10px;
      }
      #contact .buttons-div {
          padding: 0 30px  ;
          display: flex;
          flex-direction: row;
          justify-content: space-between;
      }
    
    </style>
  </head>
  <body id="contact">
    <form id="form1" runat="server">
      <div class="Outer">
        <div class="innner">
          <asp:Label
            ID="CittaLabel"
            runat="server"
            CssClass="form-inline"
            Text="Contact Details"
          />

          <div class="row">
            <div class="col-sm-6">
              <asp:Label
                ID="_firstname"
                runat="server"
                Text="FirstName"
              ></asp:Label>
              <asp:RequiredFieldValidator
                ID="firstnamereq"
                runat="server"
                ControlToValidate="Firstname"
                ErrorMessage="*"
                ForeColor="#FF0066"
                ToolTip="Firstname is required"
              ></asp:RequiredFieldValidator>
              <asp:TextBox
                ID="Firstname"
                CssClass="form-control"
                runat="server"
                Width="370px"
              ></asp:TextBox>
            </div>
            <div class="col-sm-6">
              <asp:Label
                ID="_lastname"
                runat="server"
                Text="LastName"
              ></asp:Label>

              <asp:RequiredFieldValidator
                ID="lastnamereq"
                runat="server"
                ControlToValidate="Lastname"
                ErrorMessage="*"
                ForeColor="#FF0066"
                ToolTip="Lastname is required"
              ></asp:RequiredFieldValidator>
              <asp:TextBox
                ID="Lastname"
                CssClass="form-control"
                runat="server"
                Width="370px"
              ></asp:TextBox>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-6">
              <asp:Label ID="_email" runat="server" Text="Email"></asp:Label>
              <asp:RequiredFieldValidator
                ID="emailreq"
                runat="server"
                ControlToValidate="Email"
                ErrorMessage="*"
                ForeColor="#FF0066"
                ToolTip="Email is required"
              ></asp:RequiredFieldValidator>
              <asp:TextBox
                ID="Email"
                runat="server"
                Width="370px"
                CssClass="form-control"
              ></asp:TextBox>
            </div>
            <div class="col-sm-6">
              <asp:Label
                ID="_mobile"
                runat="server"
                Text="Mobile Number"
              ></asp:Label>
              <asp:RequiredFieldValidator
                ID="mobilenoreq"
                runat="server"
                ControlToValidate="Mobileno"
                ErrorMessage="*"
                ForeColor="#FF0066"
                ToolTip="Mobile no is required"
              ></asp:RequiredFieldValidator>
              <asp:TextBox
                ID="Mobileno"
                runat="server"
                Width="370px"
                CssClass="form-control"
              ></asp:TextBox>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-4">
              <asp:Label
                ID="_country"
                runat="server"
                Text="Country"
              ></asp:Label>

              <asp:RequiredFieldValidator
                ID="countryreq"
                runat="server"
                ControlToValidate="Country"
                ErrorMessage="*"
                ForeColor="#FF0066"
                ToolTip="Country is required"
              ></asp:RequiredFieldValidator>
              <asp:TextBox
                ID="Country"
                runat="server"
                Width="180px"
                CssClass="form-control"
              ></asp:TextBox>
            </div>
            <div class="col-sm-4">
              <asp:Label ID="_state" runat="server" Text="State"></asp:Label>

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
                Width="180px"
                CssClass="form-control"
              ></asp:TextBox>
            </div>
            <div class="col-sm-4">
              <asp:Label ID="_city" runat="server" Text="City"></asp:Label>
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
                Width="200px"
                CssClass="form-control"
              ></asp:TextBox>
            </div>
          </div>

          <div class="row">
            <div class="col-sm-6">
              <asp:Label
                ID="_address"
                runat="server"
                Text="Address"
              ></asp:Label>
              <asp:RequiredFieldValidator
                ID="zipcodereq"
                runat="server"
                ControlToValidate="Zipcode"
                ErrorMessage="*"
                ForeColor="#FF0066"
                ToolTip="Zip code is required"
              ></asp:RequiredFieldValidator>

              <asp:TextBox
                ID="Address"
                runat="server"
                CssClass="form-control"
                Width="538px"
                Height="100px"
              ></asp:TextBox>
            </div>
            <div class="col-sm-6">
              <asp:Label
                ID="_zipcode"
                runat="server"
                Text="Zip code"
              ></asp:Label>
              <asp:TextBox
                ID="Zipcode"
                CssClass="form-control"
                Width="200px"
                runat="server"
              ></asp:TextBox>
            </div>
          </div>

         <div class="buttons-div">
            <div class="buttons">
                <asp:Button
                  ID="Backbutton"
                  CssClass="btn btn-warning"
                  runat="server"
                  OnClick="Backbutton_Click"
                  Text="Back" Height="30px" Width="70px"
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
                  Text="Next" Height="30px" Width="71px"
                />
              </div>
         </div>
        </div>
      </div>
    </form>
  </body>
</html>

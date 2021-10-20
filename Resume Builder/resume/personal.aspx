<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personal.aspx.cs"
Inherits="Resume_Builder.resume.personal" %>

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
      #personalDetails {
        height: max-content;
        margin: auto;
        margin-top: 70px;
        width: 400px;
        background-color: rgb(236, 230, 230);
        padding: 40px;
      }
      #personalDetails .heading{
       
        color: red;
        font-weight: 800;
        text-align: center;
        width:100% ;
        margin-bottom:10px;
      }
     
      #personalDetails #_maritalstatus,#_gender,#FileUploadStatus,#_hobbies,#_language,#_birthdate{
       margin-top: 10px;
       font-weight: 500;
       font-size: 18px;
       color: darkblue;
       margin-bottom: 5px;
      }
      #personalDetails .image {
        max-height: 200px;
      }
       #personalDetails .buttons-div {
          padding: 0 30px  ;
          display: flex;
          flex-direction: row;
          justify-content: space-between;
      }
   
    
      #personalDetails .auto-style1 {
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
      .auto-style1:focus{
          outline:none;
      }
        /* .form-check{
            display: flex;
            justify-content: space-evenly;
            width: 365px;
        } */
   
    
    </style>
  </head>
  <body>
    <div id="personalDetails">
      <form id="form1" runat="server" class="form">
        <div >
            <asp:Label ID="CittaLabel" CssClass="heading" runat="server" Text="Personal Details" Font-Size="28px" Height="40px" Width="304px" />
        </div>

        <div>
          <div class="row1">
            <asp:Label
              ID="_maritalstatus"
              runat="server"
              Text="Choose Your Marital Status"
            ></asp:Label>
            <asp:RequiredFieldValidator
              ID="maritalreq"
              runat="server"
              ControlToValidate="Maritalstatus"
              ErrorMessage="*"
              ForeColor="#FF0066"
            ></asp:RequiredFieldValidator>
            <asp:RadioButtonList
              ID="Maritalstatus"
              runat="server"
              RepeatDirection="Horizontal" CellPadding="10" CellSpacing="10" CssClass="form-check"
            
            >
              <asp:ListItem CssClass="form-check"
                > Married</asp:ListItem
              >
              <asp:ListItem CssClass="form-check"
                 > Unmarried</asp:ListItem
              >
              <asp:ListItem CssClass="form-check">
                 Seperated</asp:ListItem
              >
            </asp:RadioButtonList>
          </div>
          <div class="row1">
            <asp:Label
              ID="_gender"
              runat="server"
              Text="Choose Your Gender"
            ></asp:Label>
            <asp:RequiredFieldValidator
              ID="genderreq"
              runat="server"
              ControlToValidate="Maritalstatus"
              ErrorMessage="*"
              ForeColor="#FF0066"
            ></asp:RequiredFieldValidator>

            <asp:RadioButtonList
              ID="Gender"
              runat="server"
              RepeatDirection="Horizontal" CellPadding="10" CellSpacing="10"
            >
              <asp:ListItem>Male</asp:ListItem>
              <asp:ListItem>Female</asp:ListItem>
              <asp:ListItem>Other</asp:ListItem>
            </asp:RadioButtonList>
          </div>
          <div  class="row1">
            <asp:Label
              ID="_birthdate"
              runat="server"
              Text="Birth Date" Width="157px"
            ></asp:Label>
            <asp:RequiredFieldValidator
              ID="birthdatereq"
              runat="server"
              ControlToValidate="Birthdate"
              ErrorMessage="*"
              ForeColor="#FF0066"
            ></asp:RequiredFieldValidator>

            <asp:TextBox
              ID="Birthdate"
              runat="server"
              TextMode="Date"
              CssClass="auto-style1"
            ></asp:TextBox>
          </div>

          <div class="row1">
            <asp:Label
              ID="_language"
              runat="server"
              Text="Languages Known" Width="170px"
            ></asp:Label>
            <asp:TextBox ID="Language" runat="server" CssClass="auto-style1"  ></asp:TextBox>
            <asp:PlaceHolder ID="Langs" runat="server"></asp:PlaceHolder>
            <asp:Button ID="Addlang" runat="server" OnClick="Addlang_Click"  CssClass="btn btn-link" Text="Add Language" />           
         
          </div>
          <div  class="row1"> 
            <asp:Label ID="_hobbies" runat="server" Text="Hobbies" Width="170px"></asp:Label>
            <asp:TextBox
              ID="Hobbies"
              runat="server"
              CssClass="auto-style1" Height="30px"
            ></asp:TextBox>
            
             <asp:Button ID="Addhbs" runat="server" OnClick="Addhbs_Click"  CssClass="btn btn-link"  Text="Add Hobby" />
           
               <asp:PlaceHolder ID="Hbs" runat="server" ></asp:PlaceHolder>
          </div>
          <div  cclass="row1">
            <asp:Label ID="FileUploadStatus" runat="server">Profile photo</asp:Label>
            <asp:FileUpload ID="Imageupload"    CssClass="auto-style1" runat="server" />
            <asp:Image
              ID="img"
              runat="server"
              ImageUrl="~/images/personicon.PNG"
              CssClass="image"
            />
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
      </form>
    </div>
  </body>
</html>

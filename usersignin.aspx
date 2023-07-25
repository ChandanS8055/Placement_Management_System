<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignin.aspx.cs" Inherits="Placement_Management_System.usersignin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container p-2">
      <div class="row">
         <div class="col-md-7 mx-auto">
            <div class="card">
               <div class="card-body">
                     <div class="row">
                     <div class="col">
                        <center>
                           <h4>Student Sign Up</h4>
                        </center>
                     </div>
                  </div>
                <hr />
                  <div class="row">
                     <div class="col">
                        <center>
                          <img id="imgview" style=" border-radius:50%;" Height="150px" Width="150px" src="Imgs/signupicon.png" />
                        </center>
                     </div>
                  </div>
                   
                  <div class="row">
                     <div class="col">
                          <label>Add Profile Pic</label>
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                          
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Register number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="regno" runat="server" placeholder="Univ. Register number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Student name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="sname" runat="server" placeholder="As per Univ."></asp:TextBox>
                        </div>
                     </div>
                  </div>
                            <div class="row">
                     <div class="col">
                        <label>Semister</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="semlist" runat="server">
                              <asp:ListItem Text="Select" Value="Select" />
                              <asp:ListItem Text="I" Value="I" />
                              <asp:ListItem Text="II" Value="II" />
                              <asp:ListItem Text="III" Value="III" />
                              <asp:ListItem Text="IV" Value="IV" />
                              <asp:ListItem Text="V" Value="V" />
                                <asp:ListItem Text="VI" Value="VI" />
                               </asp:DropDownList>
                        </div>
                     </div>
                       </div>
                   <div class="row">
                     <div class="col">
                        <label>Department</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="deplist" runat="server">
                              <asp:ListItem Text="Select" Value="Select" />
                              <asp:ListItem Text="BCA" Value="BCA" />
                              <asp:ListItem Text="BSc" Value="BSc" />
                              <asp:ListItem Text="BBA" Value="BBA" />
                              <asp:ListItem Text="B.com" Value="B.com" />
                              <asp:ListItem Text="BA" Value="BA" />
                               </asp:DropDownList>
                        </div>
                     </div>
                       </div>
              
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="cont" runat="server" placeholder="Contact No" TextMode="Phone"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Invalid Mobile Number" ValidationExpression="^([6-9]{1})([0-9]{9})$" ControlToValidate="cont" ForeColor="Red" Font-Italic="True" Font-Bold="False"></asp:RegularExpressionValidator>
                        </div>
                       
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="mail" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   
                  
                    <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Create Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="New Password"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Password must contain" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}" ControlToValidate="TextBox8" ForeColor="Red" Font-Italic="True" Font-Bold="False"></asp:RegularExpressionValidator>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Confirm Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="password" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" ForeColor="Red" Font-Italic="True" Font-Bold="False" runat="server" ErrorMessage="* Password and Confirm Password is not matching" ControlToCompare="TextBox8" ControlToValidate="password"></asp:CompareValidator>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up"  style=" border-radius: 25px;"  OnClick="Button1_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
</asp:Content>

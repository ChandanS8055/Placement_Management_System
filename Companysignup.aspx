<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Companysignup.aspx.cs" Inherits="Placement_Management_System.Companysignup" %>
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
                           <h4>Company Sign Up</h4>
                        </center>
                     </div>
                  </div>
                <hr />
                  <div class="row">
                     <div class="col">
                        <center>
                          <img id="imgview" style=" border-radius:50%;" Height="150px" Width="150px" src="Imgs/company.png" />
                        </center>
                     </div>
                  </div>
                   
                  <div class="row">
                     <div class="col">
                          <label>Company Logo</label>
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
                        <label>Company ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="cid" runat="server" placeholder="Company ID" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Company Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="cname" runat="server" placeholder="Company Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                            <div class="row">
                     <div class="col">
                        <label>Company Type</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="ctype" runat="server">
                              <asp:ListItem Text="Select" Value="Select" />
                              <asp:ListItem Text="Information Tech." Value="Information Tech." />
                              <asp:ListItem Text="Manufacturing Indus." Value="Manufacturing Indus." />
                              <asp:ListItem Text="Bio Tech" Value="Bio Tech" />
                              <asp:ListItem Text="Service sector" Value="Service sector" />
                              <asp:ListItem Text="Financial sector" Value="Financial sector" />
                              <asp:ListItem Text="Transportaion services" Value="Transportaion services" />
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
                     <div class="col-md">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="address" runat="server" placeholder="Full address" TextMode="MultiLine" Rows="3"></asp:TextBox>
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
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up"  style=" border-radius: 25px;" OnClick="Button1_Click"  />
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

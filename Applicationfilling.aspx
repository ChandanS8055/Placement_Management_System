<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Applicationfilling.aspx.cs" Inherits="Placement_Management_System.Applicationfilling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Register number</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="regno" runat="server" placeholder="Register number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Student name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="sname" runat="server" placeholder="Student name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                 <div class="row">
                     <div class="col-md-6">
                        <label>Placement ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="rid" runat="server" placeholder="Placement ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Company ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="company" runat="server" placeholder="Company ID"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                      <div class="row">
                     <div class="col-md">
                        <label>Placement Type</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="type" runat="server" placeholder="Univ. Register number"></asp:TextBox>
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
                           <asp:TextBox CssClass="form-control" ID="contact" runat="server" placeholder="Contact No" TextMode="Phone"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Invalid Mobile Number" ValidationExpression="^([6-9]{1})([0-9]{9})$" ControlToValidate="contact" ForeColor="Red" Font-Italic="True" Font-Bold="False"></asp:RegularExpressionValidator>
                        </div>
                       
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="mail" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <hr />
                    <center>
                         <h5 class="p-1" style="background-color:darkblue; color:white;">UG Scorecards</h5>
                   </center>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Class X / SSLC Marks in per.</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="sslc" runat="server" placeholder="Univ. Register number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Class XII / PUC in %</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="pu" runat="server" placeholder="As per Univ."></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <center>
                         <h5 class="p-1" style="background-color:darkblue; color:white;">Graduation Scorecard</h5>
                   </center>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Semister I</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="s1" runat="server" placeholder="Semister I"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Semister II</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="s2" runat="server" placeholder="Semister II"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Semister III</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="s3" runat="server" placeholder="Semister III"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Semister IV</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="s4" runat="server" placeholder="Semister IV"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Semister V</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="s5" runat="server" placeholder="Semister V"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Semister VI</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="s6" runat="server" placeholder="Semister VI"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                     <div class="row">
                     <div class="col-md">
                        <label>CGPA / Total %</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="tot" runat="server" placeholder="Total Percentage"></asp:TextBox>
                        </div>
                     </div>
                  </div>



                   <div class="row pb-3">
                     <div class="col">
                          <label>Upload Resume</label>
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" EnableTheming="true" runat="server" />
                          
                     </div>
                  </div>
                   <div class="row">
                     <div class="col">
                        <div class="form-group">
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Submit"  style=" border-radius: 25px;" OnClick="Button1_Click"   />
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

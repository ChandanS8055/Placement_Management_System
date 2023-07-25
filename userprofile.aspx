<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Placement_Management_System.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid pt-2">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                     <div class="row">
                     <div class="col">
                        <center>
                           <h4>Student Profile</h4>
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
                           <asp:TextBox CssClass="form-control" ID="regno" runat="server" placeholder="Univ. Register number" ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Student name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="sname" runat="server" placeholder="As per Univ."  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                            <div class="row">
                     <div class="col">
                        <label>Semister</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="sem" runat="server" placeholder=""  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                       </div>
                   <div class="row">
                     <div class="col">
                        <label>Department</label>
                        <div class="form-group">
                          <asp:TextBox CssClass="form-control" ID="dept" runat="server" placeholder=""  ReadOnly="true"></asp:TextBox>
                        </div>
                     </div>
                       </div>
              
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="cont" runat="server" placeholder="Contact No" TextMode="Phone"  ReadOnly="true"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Invalid Mobile Number" ValidationExpression="^([6-9]{1})([0-9]{9})$" ControlToValidate="cont" ForeColor="Red" Font-Italic="True" Font-Bold="False"></asp:RegularExpressionValidator>
                        </div>
                       
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="mail" runat="server" placeholder="Email ID" TextMode="Email"  ReadOnly="true"></asp:TextBox>
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
                           <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Update Password"  style=" border-radius: 25px;" OnClick="Button1_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
          <div class="col-md-7">
              <div class="container-fluid">
                            
                                  <div class="card">
                                      <div class="card-body">
                                          <center>
                                              <h5>Your Applications</h5>
                                          </center>
                                          <hr />
                                       
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementmgmtConnectionString %>" SelectCommand="SELECT [rid], [company], [p_type], [sem], [resume], [status] FROM [application_master] WHERE ([reg_no] = @reg_no)">
                         <SelectParameters>
                             <asp:SessionParameter Name="reg_no" SessionField="username" Type="String" />
                         </SelectParameters>
                                          </asp:SqlDataSource>
                   <div class="row">
                       <div class="col-md">
                           <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="783px" Height="194px" >
                           <Columns>
                               <asp:BoundField DataField="rid" HeaderText="Recuritment ID" SortExpression="rid" />
                               <asp:BoundField DataField="company" HeaderText="Company ID" SortExpression="company" />
                               <asp:BoundField DataField="p_type" HeaderText="Placement Type" SortExpression="p_type" />
                               <asp:BoundField DataField="sem" HeaderText="Semister" SortExpression="sem" />
                               <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                               <asp:HyperLinkField DataNavigateUrlFields="resume" DataTextField="resume" DataTextFormatString="Click here" HeaderText="Resume" NavigateUrl="resume" SortExpression="resume" Text="Click here" />
                           </Columns>
                        </asp:GridView>
                       </div>
                   </div>
                        
              
                  </div>

                            </div>
                       
                        
                
                                  
                    </div>
          </div>
      </div>
   </div>


</asp:Content>

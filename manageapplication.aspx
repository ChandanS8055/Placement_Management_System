<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="manageapplication.aspx.cs" Inherits="Placement_Management_System.manageapplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row pt-2">
        <div class="col-md-4">
      
            <div class="card">
               <div class="card-body">
                     <div class="row">
                     <div class="col">
                        <center>
                           <h4>Approving Panel</h4>
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
                        <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="regno" runat="server" placeholder="Univ. Register number"></asp:TextBox>
                             <asp:LinkButton class="btn btn-primary" ID="LinkButton4" Onclick="LinkButton4_Click" runat="server" ><i class="fas fa-check-circle" ></i></asp:LinkButton>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Student name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="sname" runat="server" placeholder="As per Univ." ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                      <div class="row">
                     <div class="col-md-6">
                        <label>Recuritment ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="rid" runat="server" placeholder="Univ. Register number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Company</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="comp" runat="server" placeholder="As per Univ." ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                            <div class="row">
                     <div class="col-md-6">
                        <label>Semister</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="sem" runat="server" placeholder="As per Univ." ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                   <div class="col-md-6">
                        <label>Department</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="dep" runat="server" placeholder="As per Univ." ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                       </div>
                   
                  
                      
              
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="contact" runat="server" placeholder="Contact No" TextMode="Phone" ReadOnly="True"></asp:TextBox>
                          </div>
                       
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="mail" runat="server" placeholder="Email ID" TextMode="Email" ReadOnly="True"></asp:TextBox>
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
                           <asp:TextBox CssClass="form-control" ID="sslc" runat="server" placeholder="Univ. Register number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Class XII / PUC in %</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="pu" runat="server" placeholder="As per Univ." ReadOnly="True"></asp:TextBox>
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
                           <asp:TextBox CssClass="form-control" ID="s1" runat="server" placeholder="Semister I" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Semister II</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="s2" runat="server" placeholder="Semister II" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Semister III</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="s3" runat="server" placeholder="Semister III" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Semister IV</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="s4" runat="server" placeholder="Semister IV" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-6">
                        <label>Semister V</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="s5" runat="server" placeholder="Semister V" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Semister VI</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="s6" runat="server" placeholder="Semister VI" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                     <div class="row">
                     <div class="col-md">
                        <label>CGPA / Total %</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="tot" runat="server" placeholder="Total Percentage" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                     <div class="row">
                       <div class="col">
                           <label>Decision</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox10" runat="server" placeholder="Decision" ReadOnly="True"></asp:TextBox>
                             <asp:LinkButton class="btn btn-success" ID="LinkButton1" runat="server" Onclick="LinkButton1_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                             <asp:LinkButton class="btn btn-warning" ID="LinkButton2" runat="server" Onclick="LinkButton2_Click"><i class="fas fa-pause-circle"></i></asp:LinkButton>
                              <asp:LinkButton class="btn btn-danger" ID="LinkButton3" runat="server" Onclick="LinkButton3_Click"><i class="fas fa-stop-circle"></i></asp:LinkButton>
                           </div>
                        </div>
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
                
            <a href="homepage.aspx"><< Back to Home</a><br><br>
            </div> 

  
        </div>
        <div class="col-md-8">
             <div class="container-fluid">
                            
                                  <div class="card">
                                      <div class="card-body">
                                          <center>
                                              <h5>Applications List</h5>
                                          </center>
                                          <hr />
                                       
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementmgmtConnectionString %>" SelectCommand="SELECT [reg_no], [sname], [rid], [company], [sem], [dept], [contact], [mail], [c10], [c12], [total], [status], [resume] FROM [application_master_tbl ]"> </asp:SqlDataSource>
                   <div class="row">
                       <div class="col-md">
                           <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="945px" Height="194px" >
                           <Columns>
                              <asp:BoundField DataField="reg_no" HeaderText="Reg No" SortExpression="reg_no" />
                              <asp:BoundField DataField="sname" HeaderText="Name" SortExpression="sname" />
                              <asp:BoundField DataField="rid" HeaderText="Place. ID" SortExpression="rid" />
                               <asp:BoundField DataField="company" HeaderText="Company ID" SortExpression="company" />
                               <asp:BoundField DataField="sem" HeaderText="Semister" SortExpression="sem" />
                               <asp:BoundField DataField="dept" HeaderText="Department" SortExpression="dept" />
                               <asp:BoundField DataField="contact" HeaderText="Contact no" SortExpression="contact" />
                               <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                               <asp:HyperLinkField DataNavigateUrlFields="resume" DataTextField="resume" DataTextFormatString="Click here" HeaderText="Resume" NavigateUrl="click here" SortExpression="resume" Text="Click here" />
                           </Columns>
                        </asp:GridView>
                       </div>
                   </div>
                        
              
                  </div>

                            </div>
                       
                        
                
                                  
                    </div>
                </div>
                  
        </div>

 

</asp:Content>

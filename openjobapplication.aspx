<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="openjobapplication.aspx.cs" Inherits="Placement_Management_System.openjobapplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Job Application Details</h4>
                        </center>
                     </div>
                  </div> 
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-md-4">
                        <label>Recruitment ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="rid" runat="server" placeholder="Recruitment ID"></asp:TextBox>
                              <asp:Button class="form-control btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click"  />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Company Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="cname" runat="server" placeholder="Company Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Recruitment Type</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="Select" />
                              <asp:ListItem Text="Work Integrated learning program" Value="Work Integrated learning program" />
                              <asp:ListItem Text="Campus Global" Value="Campus Global" />
                              <asp:ListItem Text="Campus connect" Value="Campus connect" />
                              <asp:ListItem Text="Talent Hunt" Value="Talent Hunt" />
                           </asp:DropDownList>
                        </div>
                        <label>Published Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="pdate" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Author Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                              <asp:ListItem Text="A1" Value="a1" />
                              <asp:ListItem Text="a2" Value="a2" />
                           </asp:DropDownList>
                        </div>
                        <label>Last Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="ldate" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Job Role</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Software Engineer" Value="Software Engineer" />
                              <asp:ListItem Text="Testing Engineer" Value="Testing Engineer" />
                              <asp:ListItem Text="Accountant" Value="Accountant" />
                              <asp:ListItem Text="Administrator" Value="Administrator" />
                              <asp:ListItem Text="Network Engineer" Value="Network Engineer" />
                              <asp:ListItem Text="Junior Developer" Value="Junior Developer" />
                              <asp:ListItem Text="Senior Developer" Value="Senior Developer" />
                              <asp:ListItem Text="Software Archietect" Value="Software Archietect" />
                              <asp:ListItem Text="Sales Executive" Value="Sales Executive" />
                              <asp:ListItem Text="Database Engineer" Value="Database Engineer" />
                            
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                
                  <div class="row">
                     <div class="col-12">
                        <label>Job Descriptions</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="descrip" runat="server" placeholder="Job Descriptions" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <div class="row pb-3">
                     <div class="col">
                          <label>Brouchure</label>
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-6">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                     </div>
                      <div class="col-6">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Job Application Details List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="container-fluid">
                            
                                
                                       
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementmgmtConnectionString %>" SelectCommand="SELECT * FROM [job_tbl]">
                                          </asp:SqlDataSource>
                   <div class="row">
                       <div class="col-md">
                           <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="797px" Height="194px" DataKeyNames="rec_id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                           <Columns>
                               <asp:BoundField DataField="rec_id" HeaderText="rec_id" SortExpression="rec_id" ReadOnly="True" />
                               <asp:BoundField DataField="comp_name" HeaderText="comp_name" SortExpression="comp_name" />
                               <asp:BoundField DataField="rec_type" HeaderText="rec_type" SortExpression="rec_type" />
                               <asp:BoundField DataField="roles" HeaderText="roles" SortExpression="roles" />
                               <asp:BoundField DataField="published_date" HeaderText="published_date" SortExpression="published_date" />
                               <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                               <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                               <asp:BoundField DataField="broucher" HeaderText="broucher" SortExpression="broucher" />
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

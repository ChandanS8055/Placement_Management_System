<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewapplications.aspx.cs" Inherits="Placement_Management_System.viewapplications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="col-md">
             <div class="container-fluid">
                            
                                  <div class="card">
                                      <div class="card-body">
                                          <center>
                                              <h5>Applications List</h5>
                                          </center>
                                          <hr />
                                       
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementmgmtConnectionString %>" SelectCommand="SELECT * FROM [application_master_tbl]">
                                          </asp:SqlDataSource>
                   <div class="row">
                       <div class="col-md">
                           <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1383px" Height="194px" >
                           <Columns>
                               <asp:BoundField DataField="reg_no" HeaderText="Reg No" SortExpression="reg_no" />
                               <asp:BoundField DataField="sname" HeaderText="Name" SortExpression="sname" />
                               <asp:BoundField DataField="rid" HeaderText="Rec ID" SortExpression="rid" />
                               <asp:BoundField DataField="company" HeaderText="Company" SortExpression="company" />
                               <asp:BoundField DataField="sem" HeaderText="Semister" SortExpression="sem" />
                               <asp:BoundField DataField="dept" HeaderText="Dept." SortExpression="dept" />
                               <asp:BoundField DataField="mail" HeaderText="Mail" SortExpression="mail" />
                               <asp:BoundField DataField="sem1" HeaderText="I" SortExpression="sem1" />
                               <asp:BoundField DataField="sem2" HeaderText="II" SortExpression="sem2" />
                               <asp:BoundField DataField="sem3" HeaderText="III" SortExpression="sem3" />
                               <asp:BoundField DataField="sem4" HeaderText="IV" SortExpression="sem4" />
                               <asp:BoundField DataField="sem5" HeaderText="V" SortExpression="sem5" />
                               <asp:BoundField DataField="sem6" HeaderText="VI" SortExpression="sem6" />
                               <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" />
                               <asp:HyperLinkField DataNavigateUrlFields="resume" DataTextField="resume" DataTextFormatString="Click here" HeaderText="Resume" NavigateUrl="Click here" SortExpression="resume" Text="Click here" />
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

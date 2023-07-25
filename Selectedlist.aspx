<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Selectedlist.aspx.cs" Inherits="Placement_Management_System.Selectedlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                               <asp:BoundField DataField="reg_no" HeaderText="reg_no" SortExpression="reg_no" />
                               <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                               <asp:BoundField DataField="rid" HeaderText="rid" SortExpression="rid" />
                               <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
                               <asp:BoundField DataField="p_type" HeaderText="p_type" SortExpression="p_type" />
                               <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                               <asp:BoundField DataField="dept" HeaderText="dept" SortExpression="dept" />
                               <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                               <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                               <asp:BoundField DataField="c10" HeaderText="c10" SortExpression="c10" />
                               <asp:BoundField DataField="c12" HeaderText="c12" SortExpression="c12" />
                               <asp:BoundField DataField="sem1" HeaderText="sem1" SortExpression="sem1" />
                               <asp:BoundField DataField="sem2" HeaderText="sem2" SortExpression="sem2" />
                               <asp:BoundField DataField="sem3" HeaderText="sem3" SortExpression="sem3" />
                               <asp:BoundField DataField="sem4" HeaderText="sem4" SortExpression="sem4" />
                               <asp:BoundField DataField="sem5" HeaderText="sem5" SortExpression="sem5" />
                               <asp:BoundField DataField="sem6" HeaderText="sem6" SortExpression="sem6" />
                               <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                               <asp:BoundField DataField="resume" HeaderText="resume" SortExpression="resume" />
                               <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                           </Columns>
                        </asp:GridView>
                       </div>
                   </div>
                        
              
                  </div>

                            </div>
                       
                        
                
                                  
                    </div>
</asp:Content>

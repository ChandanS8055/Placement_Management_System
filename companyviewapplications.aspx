<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="companyviewapplications.aspx.cs" Inherits="Placement_Management_System.companyviewapplications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-md">
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
                            
                                
                                       
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementmgmtConnectionString %>" SelectCommand="SELECT * FROM [job_tbl] WHERE ([comp_name] = @comp_name)">
                         <SelectParameters>
                             <asp:SessionParameter Name="comp_name" SessionField="username" Type="String" />
                         </SelectParameters>
                                        
                         </asp:SqlDataSource>
                   <div class="row">
                       <div class="col-md">
                           <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1383px" Height="194px" DataKeyNames="rec_id" >
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
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Managenotifications.aspx.cs" Inherits="Placement_Management_System.Managenotifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="container-fluid p-2">
        <div class="row">
            <div class="col-md-4">
                 <div class="card">
               <div class="card-body">
                     <div class="row">
                     <div class="col">
                        <center>
                           <h4>Add Notifications</h4>
                        </center>
                     </div>
                  </div>
                <hr />
                  
                  <div class="row">
                     
                     <div class="col-md">
                        <label>Notification id</label>
                        <div class="form-group">
                         <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="No. ID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4"  runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                  </div>
                      <div class="row">
                     <div class="col-md">
                      <label>Title</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Title" ></asp:TextBox>
                        </div>
                     </div>
                   
                  </div>
                
               
                  <div class="row pt-1">
                     <div class="col">
                        <label>Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Description" TextMode="MultiLine" Rows="2" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
             
                  
                  <div class="row">
                     <div class="col-md-6">
                        <div class="form-group">
                             <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Add Notification" OnClick="Button1_Click"/>
                        </div>
                     </div>
                       <div class="col-md-6">
                        <div class="form-group">
                             <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button2" runat="server" Text="Delete Notification" OnClick="Button2_Click" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            </div>
            <div class="col-md-8">
                  <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Notifications List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                     <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementmgmtConnectionString %>" SelectCommand="SELECT * FROM [notify_tbl]"></asp:SqlDataSource>
                     <div class="col-8">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="962px" DataKeyNames="N_id" >
                           <Columns>
                              <asp:BoundField DataField="N_id" HeaderText="ID" SortExpression="N_id" ReadOnly="True" />
                              <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                              <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                           </Columns>
                        </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
            </div>
     
    </section>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Placement_Management_System.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <section class="" style="background-color:brown; color:white" >
        <div class="container-fluid  ">
            <div class="row align-items-center ">
                <div class="col-md p-3">
                   
                 <center>
                        <h1 style="font-size:65px; font-family:'Times New Roman', Times, serif;" ><b>Placement Management System</b></h1>
                    <h5 style="font-family:'Times New Roman', Times, serif;"><i>Soundarya Institute of Management and Science</i></h5><br />
                 </center>
                  
                       
                </div>

            </div>
            
        </div>
        </section>
    <section>
        <div class="row p-2">
                  <div class="col-md-3">
                      <div class="card pb-1 pt-2 " style="height:500px;" >
               <div class="card-body p-2">
                   <h5 class="p-2"  align="center" style="background-color:darkgreen; color:white;">Placement Help Desk</h5>
                   <hr />
                         <h6>Call us / Whatsapp</h6>

                    <p> 
                         <a class="p-1" href="tel:080-22254661"> <i class="fas fa-phone"></i> 084541912</a><br />
                        <a class="p-1" style="color:green;" href="mailto:abc@gmail.com"> <i class="fab fa-whatsapp"></i> 9876543210 </a><br /></p>
                      <h6>Email / Website</h6>
                      <p>
                          <a class="p-1" href="mailto:abc@gmail.com"> <i class="fas fa-envelope"></i> placementsatsims@gmail.com </a><br />
                          <a class="p-1" href="mailto:abc@gmail.com"> <i class="fas fa-globe"></i> simsbanglore.in </a><br />
                      </p>
                      <h6>Working hours</h6>
                      <p>
                          Mon - Sat : 8am - 5pm(IST)
                      </p>
                        <h6>Address</h6>
                      <p>
                        Placement Cell, R101<br />
                          Soundarya Institutes, Sidedalli,<br />
                           Bengaluru 560-073.
                      </p><br />
                    
              </div>
                </div>
                  </div>
                 <div class="col-md-9">
                     <div class="card contin" style="width:100%; height:500px;" >
               <div class="card-body p-2">
                   <h5 class="p-2" style="background-color:darkblue; color:white;" align="center">Announcements</h5>
                   <hr />
                          
                                <asp:Repeater Id="Repeater1" runat="server" DataSourceID="Sql1">
                             <ItemTemplate>
                              
                        <b>  <%# Eval("Title") %></b><br />
                         <%# Eval("description") %><br /><br />
                             </ItemTemplate>
                                </asp:Repeater>
                   <asp:SqlDataSource ID="Sql1" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementmgmtConnectionString %>" SelectCommand="SELECT * FROM [notify_tbl]" ></asp:SqlDataSource>
              </div>
                </div>
                </div>
            </div>
    </section>
</asp:Content>

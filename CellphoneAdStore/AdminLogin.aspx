<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="CellphoneAdStore.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
      
          //search function
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         
      });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br>
    <div class="conntainer">
    
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/adminuser.jpg" width="100px" />
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                               <div class="form-group">

                                   <asp:TextBox class="form-group" ID="Textbox1" runat="server" placeholder="Email Address"></asp:TextBox>
                               </div>
                                    </center>

                                <center>
                                <div class="form-group">

                                   <asp:TextBox class="form-group" ID="Textbox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                               </div>
                                    </center>

                                <center>

                                <div class="form-group">
                                    <asp:Button type="button" class="btn btn-primary btn-lg" runat="server" ID="button1" Text="Login" OnClick="button1_Click" />

                                </div>
</center>
                            </div>

                        </div>

                    </div>

                </div>
                
                <a href="index.aspx"> <-- Back to Home </a>
                <br>
                <br>
            </div>

        </div>
    
    </div>
        

</asp:Content>

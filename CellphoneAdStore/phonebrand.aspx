<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="phonebrand.aspx.cs" Inherits="CellphoneAdStore.phonebrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 <script type="text/javascript">
      $(document).ready(function () {
      
          //search function
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         
      });
 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <div class="container">
        <div class="row">
            <div class="col-md-5">
 
                <div class="card">
                    <div class="card-body">
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Brand Details</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="images/cellicon.png" />
                                       
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
                                <label>Brand ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <!--<asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" /> -->
                                    </div>
                                </div>
                            </div>
 
                            <div class="col-md-8">
                                <label>Brand Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Brand Name"></asp:TextBox>
 
                                </div>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>
 
 
                    </div>
                </div>
 
                <a href="index.aspx"><< Back to Home</a><br>
                <br>
            </div>
 
            <div class="col-md-7">
 
                <div class="card">
                    <div class="card-body">
 
 
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>Brands List</h4>
                                    </center>
                            </div>
                        </div>
 
                       
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cellphoneDBConnectionString %>" SelectCommand="SELECT * FROM [brand_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="brand_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="brand_id" HeaderText="brand_id" ReadOnly="True" SortExpression="brand_id" />
                                        <asp:BoundField DataField="brand_name" HeaderText="brand_name" SortExpression="brand_name" />
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

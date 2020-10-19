<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="view_cellphones.aspx.cs" Inherits="CellphoneAdStore.view_cellphones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    
            <div class="container">
            <div class="row">
 
                <div class="col-sm-12">
                    <center>
                        <h3>
                        Cellphone <p style="color:red;">Catalog List</p></h3>
                    </center>
                    <div class="row">
                        <div class="col-sm-12 col-md-12">
                            <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="False">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="card">
                            <div class="card-body">
 
                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cellphoneDBConnectionString %>" SelectCommand="SELECT * FROM [cellphone_master_tbl]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cellphone_id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="cellphone_id" HeaderText="ID" ReadOnly="True" SortExpression="cellphone_id">
                                                    <ControlStyle Font-Bold="True" />
                                                    <ItemStyle Font-Bold="True" />
                                                </asp:BoundField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div class="col-lg-10">
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("cellphone_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            <span>Brand - </span>
                                                                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("brand_name") %>'></asp:Label>
                                                                            &nbsp;| <span><span>&nbsp;</span>Specs - </span>
                                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("specifications") %>'></asp:Label>
                                                                            &nbsp;|
                                                                            <span>
                                                      Operating System -<span>&nbsp;</span>
                                                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("operating_system") %>'></asp:Label>
                                                                            </span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Model -
                                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("model_name") %>'></asp:Label>
                                                                            &nbsp;| Release Date -
                                                                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("release_date") %>'></asp:Label>
                                                                            &nbsp;| Camera Quality (MP) -
                                                                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("camera_quality") %>'></asp:Label>
                                                                            &nbsp;| Color -
                                                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("color") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                            Price -
                                                                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("price") %>'></asp:Label>
                                                                            &nbsp;| 
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-12">
                                                                           Phone Description -
                                                                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("phone_description") %>'></asp:Label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-2">
                                                                    <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("cellphone_img_link") %>' />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <center>
                    <a href="index.aspx">
                        << Back to Home</a><span class="clearfix"></span>
                            <br />
                            <center>
            </div>
        </div>

</asp:Content>

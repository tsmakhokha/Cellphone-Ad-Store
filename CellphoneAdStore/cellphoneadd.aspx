<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cellphoneadd.aspx.cs" Inherits="CellphoneAdStore.cellphoneadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <script type="text/javascript">
         $(document).ready(function () {
             $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
         });

         function readURL(input) {
             if (input.files && input.files[0]) {
                 var reader = new FileReader();

                 reader.onload = function (e) {
                     $('#imgview').attr('src', e.target.result);
                 };

                 reader.readAsDataURL(input.files[0]);
             }
         }

     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
     <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Cellphone Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" id="imgview" src="images/cellicon.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>Cellphone ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Cellphone ID"></asp:TextBox>
                             <!-- <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton> -->
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                        <label>Cellphone Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Cellphone Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Operating System</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                             <asp:ListItem Text="IOS" Value="IOS" />
                              <asp:ListItem Text="Android" Value="Android" />
                              <asp:ListItem Text="Huawei OS" Value="Huawei OS" /> 
                              
                           </asp:DropDownList>
                        </div>
                        <label>Model Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="SE" Value="SE" />
                              <asp:ListItem Text="Galaxy A80" Value="Galaxy A80" />
                              <asp:ListItem Text="Galaxy J4" Value="Galaxy J4" />
                              <asp:ListItem Text="Galaxy Note10" Value="Galaxy Note10" />
                              <asp:ListItem Text="Galaxy Note20" Value="Galaxy Note20" />
                              <asp:ListItem Text="P40" Value="P40" />
                              <asp:ListItem Text="PMate40" Value="PMate40" />
                              <asp:ListItem Text="Nokia 8" Value="Nokia 8" />
                              <asp:ListItem Text="11" Value="11" />
                              <asp:ListItem Text="XR" Value="XR" />
                               <asp:ListItem Text="Razor" Value="Razor" />
                              <asp:ListItem Text="G7" Value="G7" />
                             
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Brand Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                               <asp:ListItem Text="Samsung" Value="Samsung" />
                              <asp:ListItem Text="IPhone" Value="IPhone" />
                               <asp:ListItem Text="Huawei" Value="Huawei" /> 
                               <asp:ListItem Text="Nokia" Value="Huawei" /> 
                               <asp:ListItem Text="LG" Value="Huawei" /> 
                           </asp:DropDownList>
                        </div>
                        <label>Release Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Specifications</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="64GB Dual Sim" Value="64GB Dual Sim" />
                              <asp:ListItem Text="64GB Single Sim" Value="64GB Single Sim" />
                              <asp:ListItem Text="32GB Dual Sim" Value="32GB Dual Sim" />
                              <asp:ListItem Text="32GB Single Sim" Value="32GB Single Sim" />
                              <asp:ListItem Text="128GB Dual Sim" Value="128GB Dual Sim" />
                              <asp:ListItem Text="128GB Single Sim" Value="128GB Single Sim" />
                              <asp:ListItem Text="16GB Dual Sim" Value="16GB Dual Sim" />
                              <asp:ListItem Text="16GB Single Sim" Value="16 Single Single" />
                              <asp:ListItem Text="8GB Signle Sim" Value="8GB Single Sim" />
                              
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Color</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Color"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Price</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Price" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Camera Quality (pixel)</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Camera Quality" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-12">
                        <label>Phone Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Phone Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
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
                           <h4>Cellphones List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cellphoneDBConnectionString %>" SelectCommand="SELECT * FROM [cellphone_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cellphone_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="cellphone_id" HeaderText="cellphone_id" ReadOnly="True" SortExpression="cellphone_id" />
                                
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
                                                   &nbsp;| Publish Date -
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
   </div>


</asp:Content>

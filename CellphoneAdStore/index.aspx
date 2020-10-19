<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CellphoneAdStore.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br />
    <div class="container" id="slider"><!-- container Begin -->
       
       <div class="col-md-12"><!-- col-md-12 Begin -->
           
           <div class="carousel slide" id="myCarousel" data-ride="carousel"><!-- carousel slide Begin -->
               
               <ol class="carousel-indicators"><!-- carousel-indicators Begin -->
                   
                   <li class="active" data-target="#myCarousel" data-slide-to="0"></li>
                   <li data-target="#myCarousel" data-slide-to="1"></li>
                   <li data-target="#myCarousel" data-slide-to="2"></li>
                   <li data-target="#myCarousel" data-slide-to="3"></li>
                   
               </ol><!-- carousel-indicators Finish -->
               
               <div class="carousel-inner"><!-- carousel-inner Begin -->
                   
                   <div class="item active">
                       
                       <img src="images/s1.jpg"  alt="Slider Image 1">
                       
                   </div>
                   
                   <div class="item">
                       
                       <img src="images/s2.jpg"  alt="Slider Image 2">
                       
                   </div>
                   
                   <div class="item">
                       
                       <img src="images/s3.jpg"  alt="Slider Image 3">
                       
                   </div>
                   
                   <div class="item">
                       
                       <img src="images/s4.jpg"  alt="Slider Image 4">
                       
                   </div>
                   
               </div><!-- carousel-inner Finish -->
               
               <a href="#myCarousel" class="left carousel-control" data-slide="prev"><!-- left carousel-control Begin -->
                   
                   <span class="glyphicon glyphicon-chevron-left"></span>
                   <span class="sr-only">Previous</span>
                   
               </a><!-- left carousel-control Finish -->
               
               <a href="#myCarousel" class="right carousel-control" data-slide="next"><!-- left carousel-control Begin -->
                   
                   <span class="glyphicon glyphicon-chevron-right"></span>
                   <span class="sr-only">Next</span>
                   
               </a><!-- left carousel-control Finish -->
               
           </div><!-- carousel slide Finish -->
           
       </div><!-- col-md-12 Finish -->
       
   </div><!-- container Finish -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    
                    <h2>Our <span style="color: #db1f26;">Guarantee</span></h2>
                    <p><b>We guarantee factual information </b></p>
                    
                </div>

            </div>

            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img src="images/handsred.png" width="100px" height="100px" />"
                    <h4>We are trust worthy</h4>
                    <p class="text-justify">Trust us. Trust Us. Trust us. Trust Us. Trust us. Trust Us. Trust us. Trust Us. Trust us. Trust Us.</p>
                </center>
                </div>

                <div class="col-md-4">
                    <center>
                    <img src="images/clock.png" width="100px" height="100px" />"
                    <h4>We are Updated with the Smartphone Tech</h4>
                    <p class="text-justify">Trust us. Trust Us. Trust us. Trust Us. Trust us. Trust Us. Trust us. Trust Us. Trust us. Trust Us.</p>
                </center>
                </div>

                <div class="col-md-4">
                    <center>
                    <img src="images/bestsmile.png" width="100px" height="100px" />"
                    <h4>We are give best recommendations</h4>
                    <p class="text-justify">Trust us. Trust Us. Trust us. Trust Us. Trust us. Trust Us. Trust us. Trust Us. Trust us. Trust Us.</p>
                </center>
                </div>

            </div>


        </div>
    </section>

</asp:Content>

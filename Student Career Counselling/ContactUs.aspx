<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Student_Career_Counselling.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
         <div class="container">
             <div class="row">
                 <div class="col-4">
                     <br/><br/><br/><br/> <br/><br/><br/><br/>
                     <center>
                        <div class="left-side">
                            <div>
                                  <i class="fas fa-map-marker-alt"></i>
                                  <div class="topic">Address</div>
                                  <div class="text-one">Kamalpokhari, Kathmandu</div>
                                  <div class="text-two">Bagmati, Nepal</div>
                            </div>
                            <div>
                                  <i class="fas fa-phone-alt"></i>
                                  <div class="topic">Phone</div>
                                  <div class="text-one">+977 9876543211</div>
                                  <div class="text-two">+977 9876543211</div>
                            </div>
                            <div>
                                  <i class="fas fa-envelope"></i>
                                  <div class="topic">Email</div>
                                  <div class="text-one">scc@gmail.com</div>
                                  <div class="text-two">info.scc@gmail.com</div>
                            </div>
                         </div>
                    </center>
                 </div>

                <!-- Contact US Form -->
                <div class="col-8">
                    <div>
                        <h4 style="color: #3366FF">Contact Us</h4>
                    </div>
                    
                    <div>
                        <p>Thank you for your interest in our services. Please fill the form provided below so that we can get back to you as soon as possible.</p>
                    </div>
                        <!-- Contacting Person's Name -->
                        <div class="col">
                            <asp:Label ID="Label19" runat="server" Text="Contacting Person's Name"></asp:Label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name" TextMode="SingleLine"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Email Address -->
                        <div class="col">
                            <asp:Label ID="Label14" runat="server" Text="Email"></asp:Label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>

                    <!-- Phone Number -->
                        <div class="col">
                            <asp:Label ID="Label15" runat="server" Text="Mobile No."></asp:Label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Phone number" TextMode="Phone"></asp:TextBox>
                            </div>
                        </div>

                    <!-- Heard From -->
                    <div class="col">
                            <asp:Label ID="Label10" runat="server" Text="Who suggested you about us?"></asp:Label>
                            <div class="form-group">
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                  <asp:ListItem Text="" Value="" />
                                  <asp:ListItem Text="Social Media" Value="Social Media" />
                                  <asp:ListItem Text="Google Search" Value="Google Search" />
                                  <asp:ListItem Text="Recommended by someone" Value="Recommended by someone" />
                                  <asp:ListItem Text="Online reviews" Value="Online reviews" />
                                  <asp:ListItem Text="Others" Value="Others" />
                                </asp:DropDownList>
                            </div>
                        </div>

                    <!-- Message for us -->
                        <div class="col">
                            <asp:Label ID="Label2" runat="server" Text="Message"></asp:Label>
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Suggestion from you is valuable for us." TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>

                    <!-- Submit Button -->
                    <div class="form-group">
                        <asp:Button class="btn btn-success" ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click"/>
                    </div>

                </div>
            </div>
        </div>
    </section>

</asp:Content>

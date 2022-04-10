<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Student_Career_Counselling.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
      <div class="row">
         <div class="col-md-8 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img src="imgs/memberSignUp.jfif" alt="HTML Icon" Width="100"; />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Member Sign Up</h4>
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
                        <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-6">
                        <label>Member ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox1" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-6">
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                   </div>
                   <div class="row">
                       <div class="col-md-6">
                           <label>Full Name</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full Name"></asp:TextBox>
                           </div>
                       </div>
                       <div class="col-md-6">
                           <label>Date of Birth</label>
                           <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                           </div>
                       </div>
                   </div>
                   <div class="row">
                       <div class="col-md-6">
                           <label>Contact No</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                           </div>
                       </div>
                       <div class="col-md-6">
                           <label>Email ID</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                           </div>
                       </div>
                   </div>
                   <div class="row">
                       <div class="col-md-4">
                           <label>Hobbies</label>
                           <div class="form-group">
                               <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                   <asp:ListItem Text="Select" Value="select" />
                                   <asp:ListItem Text="Singing" Value="Singing" />
                                   <asp:ListItem Text="Reading" Value="Reading" />
                                   <asp:ListItem Text="Travelling" Value="Travelling" />
                                   <asp:ListItem Text="Writing" Value="Writing" />
                                   <asp:ListItem Text="Learning New Languages" Value="Learning New Languages" />
                                   <asp:ListItem Text="Blogging" Value="Blogging" />
                                   <asp:ListItem Text="Social Media Marketing" Value="Social Media Marketing" />
                                   <asp:ListItem Text="Sports" Value="Sports" />
                                   <asp:ListItem Text="Creating Music" Value="Creating Music" />
                                   <asp:ListItem Text="Outdoor Activities" Value="Outdoor Activities" />
                                   <asp:ListItem Text="Theater" Value="Theater" />
                                   <asp:ListItem Text="Art" Value="Art" />
                                   <asp:ListItem Text="Video Gaming" Value="Video Gaming" />
                                   <asp:ListItem Text="Yoga" Value="Yoga" />
                                   <asp:ListItem Text="Mindfulness" Value="Mindfulness" />
                                   <asp:ListItem Text="Calligraphy" Value="Calligraphy" />
                                   <asp:ListItem Text="Sketching" Value="Sketching" />
                                   <asp:ListItem Text="Public Speaking" Value="Public Speaking" />
                                   <asp:ListItem Text="Dancing" Value="Dancing" />
                                   <asp:ListItem Text="Gardening" Value="Gardening" />
                              </asp:DropDownList>
                       </div>
                   </div>
                   <div class="col-md-4">
                       <label>Interest</label>
                       <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                               <asp:ListItem Text="Select" Value="select" />
                               <asp:ListItem Text="Web Design" Value="Web Design" />
                               <asp:ListItem Text="Teaching" Value="Teaching" />
                               <asp:ListItem Text="Life Science" Value="Life Science" />
                               <asp:ListItem Text="Sociology" Value="Sociology" />
                               <asp:ListItem Text="Research" Value="Research" />
                               <asp:ListItem Text="Railway Studies" Value="Railway Studies" />
                               <asp:ListItem Text="Psychology" Value="Psychology" />
                               <asp:ListItem Text="Physics" Value="Physics" />
                               <asp:ListItem Text="Microbiology" Value="Microbiology" />
                               <asp:ListItem Text="Mathematics" Value="Mathematics" />
                               <asp:ListItem Text="History" Value="History" />
                               <asp:ListItem Text="Geography" Value="Geography" />
                               <asp:ListItem Text="Aerospace" Value="Aerospace" />
                               <asp:ListItem Text="Animation" Value="Animation" />
                               <asp:ListItem Text="Astronomy" Value="Astronomy" />
                               <asp:ListItem Text="Archaeology" Value="Archaeology" />
                               <asp:ListItem Text="Chemistry" Value="Chemistry" />
                               <asp:ListItem Text="Medical Science" Value="Medical Science" />
                               <asp:ListItem Text="Enterprenurship" Value="Enterprenurship" />
                           </asp:DropDownList>
                       </div>
                   </div>
                   <div class="col-md-4">
                       <label>SEE Scored Marks</label>
                       <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" TextMode="Number"></asp:TextBox>
                       </div>
                   </div>
                </div>
                   <div class="row">
                       <div class="col">
                           <label>Full Address</label>
                           <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                           </div>
                       </div>
                   </div>
                   <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  />
                            </div>
                        </div>
                        <%--<div class="col-md-4">
                            <div class="form-group">
                                <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Finish"  />
                            </div>
                        </div>--%>
                   </div>
                   <%--<div class="row">
                      <div class="col">
                        <label>Confirm Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <asp:CheckBox ID="passCheckBox" runat="server" Text="Show Password"  OnClick="myshowp()"/><br />
                  <div class="row">
                     <div class="col">
                        <div class="form-group">
                            <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click"/>
                        </div>
                     </div>
                  </div>--%>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>
</asp:Content>

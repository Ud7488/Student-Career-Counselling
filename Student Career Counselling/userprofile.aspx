<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="Student_Career_Counselling.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    $(document).ready(function () {
        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img src="imgs/userLogin.png" alt="HTML Icon"; Width="100"; />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Profile</h4>
                           <span>Account Status - </span>
                           <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your status"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Full Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                            <asp:RegularExpressionValidator 
                                   ID="RegEmail"
                                   ControlToValidate="TextBox4"
                                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                   runat="server" 
                                   ErrorMessage="Enter valid Email Address">
                               </asp:RegularExpressionValidator>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Hobbies</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
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
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
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
                            <asp:TextBox class="form-control" ID="TextBox6" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
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
                     <div class="col-md-4">
                        <label>Member ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Member ID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Old Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Old Password" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator 
                                ID="RequiredFieldValidator1" 
                                runat="server" 
                                ErrorMessage="Please Enter Password"    
                                ControlToValidate="TextBox10">
                            </asp:RequiredFieldValidator>  
                            <asp:RegularExpressionValidator 
                                ID="RegularExpressionValidator1" 
                                runat="server" 
                                ErrorMessage="Please Enter Strong Password"  
                                ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"  
                                ControlToValidate="TextBox10">
                            </asp:RegularExpressionValidator>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click1" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Suggested Colleges</h4>
                           <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Your Suggestions"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingDBConnectionString %>" SelectCommand="SELECT * FROM [college_suggestion_tbl]"></asp:SqlDataSource>
                      <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="member_id" />
                                <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
                                <asp:BoundField DataField="college_id" HeaderText="college_id" SortExpression="college_id" />
                                <asp:BoundField DataField="college_name" HeaderText="college_name" SortExpression="college_name" />
                                <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
                                <asp:BoundField DataField="course_name" HeaderText="course_name" SortExpression="course_name" />
                                <asp:BoundField DataField="counselor_id" HeaderText="counselor_id" SortExpression="counselor_id" />
                                <asp:BoundField DataField="counselor_name" HeaderText="counselor_name" SortExpression="counselor_name" />
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

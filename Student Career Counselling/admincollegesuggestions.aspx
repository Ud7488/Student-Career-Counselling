<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admincollegesuggestions.aspx.cs" Inherits="Student_Career_Counselling.admincollegesuggestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    $(document).ready(function ()
    {
        $(".table").prepend($("< thead ></thead > ").append($(this).find("tr: first"))).dataTable();
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
                           <h4>College Suggestions</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="imgs/college.png" />
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
                        <label>Member ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Member Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>College ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="College ID"></asp:TextBox>
                              <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>College Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="College Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                      <div class="col-md-6">
                        <label>Course ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Course ID"></asp:TextBox>
                           <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                        </div>
                     </div>
                      <div class="col-md-6">
                        <label>Course Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Course Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Suggest" OnClick="Button2_Click1" />
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-primary" runat="server" Text="Remove Suggestion" OnClick="Button1_Click" BackColor="#CC3300" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>List of College</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
				    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:counsellingDBConnectionString %>' SelectCommand="SELECT * FROM [college_suggestion_tbl]">
					    </asp:SqlDataSource>
					        <div class="col">
							    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
								    <Columns>
									    <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="member_id"></asp:BoundField>
										<asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name"></asp:BoundField>
										<asp:BoundField DataField="college_id" HeaderText="college_id" SortExpression="college_id"></asp:BoundField>
										<asp:BoundField DataField="college_name" HeaderText="college_name" SortExpression="college_name"></asp:BoundField>
										<asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id"></asp:BoundField>
										<asp:BoundField DataField="course_name" HeaderText="course_name" SortExpression="course_name"></asp:BoundField>
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

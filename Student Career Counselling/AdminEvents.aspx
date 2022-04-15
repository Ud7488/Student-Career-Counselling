<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminEvents.aspx.cs" Inherits="Student_Career_Counselling.AdminEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    $(document).ready(function () {
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
                           <h4>Event and Scholarship Suggestions</h4>
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
                        <label>Event Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Event Link</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <label>Description of Event</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Scholarship Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Scholarship Link</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <label>Description of Scholarship</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Add" OnClick="Button2_Click" />
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
                           <h4>Description&#39;s</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
				    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:counsellingDBConnectionString %>' SelectCommand="SELECT * FROM [event_tbl]">
					    </asp:SqlDataSource>
					        <div class="col">
							    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
								    <Columns>
									    <asp:BoundField DataField="event_name" HeaderText="event_name" SortExpression="event_name"></asp:BoundField>
										<asp:BoundField DataField="event_desc" HeaderText="event_desc" SortExpression="event_desc"></asp:BoundField>
										<asp:BoundField DataField="event_link" HeaderText="event_link" SortExpression="event_link"></asp:BoundField>
										<asp:BoundField DataField="scholar_name" HeaderText="scholar_name" SortExpression="scholar_name"></asp:BoundField>
										<asp:BoundField DataField="scholar_desc" HeaderText="scholar_desc" SortExpression="scholar_desc"></asp:BoundField>
										<asp:BoundField DataField="scholar_link" HeaderText="scholar_link" SortExpression="scholar_link"></asp:BoundField>
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
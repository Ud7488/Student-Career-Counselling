<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewcollege.aspx.cs" Inherits="Student_Career_Counselling.viewcollege" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    $(document).ready(function () {
         $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
     });
</script>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <center>
                        <h3>
                        College Inventory List</h3>
                    </center>
                    <div class="row">
                     <div class="col">
                        <center>
                           <img id="imgview" Height="150px" Width="100px" src="imgs/college.png" />
                        </center>
                     </div>
                  </div>
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingDBConnectionString %>" SelectCommand="SELECT * FROM [college_master_tbl]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="college_id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="college_id" HeaderText="college_id" ReadOnly="True" SortExpression="college_id">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="college_name" HeaderText="college_name" SortExpression="college_name" />
                                                <asp:BoundField DataField="college_description" HeaderText="college_description" SortExpression="college_description" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <center>
                    <a href="home.aspx">
                        << Back to Home</a><span class="clearfix"></span>
                            <br />
                            <center>
            </div>
        </div>
    </asp:Content>
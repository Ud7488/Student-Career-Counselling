<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminTest.aspx.cs" Inherits="Student_Career_Counselling.AdminTest" %>
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
                            User&#39;s Test Answer</h3>
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingDBConnectionString %>" SelectCommand="SELECT * FROM [tbl_data]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="ans1" HeaderText="ans1" SortExpression="ans1" />
                                                <asp:BoundField DataField="ans2" HeaderText="ans2" SortExpression="ans2" />
                                                <asp:BoundField DataField="ans3" HeaderText="ans3" SortExpression="ans3" />
                                                <asp:BoundField DataField="ans4" HeaderText="ans4" SortExpression="ans4" />
                                                <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="member_id" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Content>
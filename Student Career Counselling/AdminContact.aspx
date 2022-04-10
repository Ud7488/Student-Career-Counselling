<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminContact.aspx.cs" Inherits="Student_Career_Counselling.AdminContact" %>
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
                            User&#39;s Query</h3>
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingDBConnectionString %>" SelectCommand="SELECT * FROM [contact_tbl]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                                                <asp:BoundField DataField="who" HeaderText="who" SortExpression="who" />
                                                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
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
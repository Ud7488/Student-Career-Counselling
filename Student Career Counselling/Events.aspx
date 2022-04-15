<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="Student_Career_Counselling.Events" %>
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
                            Event and Scholarship Details</h3>
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingDBConnectionString %>" SelectCommand="SELECT * FROM [event_tbl]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="event_name" HeaderText="event_name" SortExpression="event_name">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="event_desc" HeaderText="event_desc" SortExpression="event_desc" />
                                                <asp:BoundField DataField="event_link" HeaderText="event_link" SortExpression="event_link" />
                                                <asp:BoundField DataField="scholar_name" HeaderText="scholar_name" SortExpression="scholar_name" />
                                                <asp:BoundField DataField="scholar_desc" HeaderText="scholar_desc" SortExpression="scholar_desc" />
                                                <asp:BoundField DataField="scholar_link" HeaderText="scholar_link" SortExpression="scholar_link" />
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
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="E_Library_Management.adminauthormanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--data tables-->
    <link href="data%20tabelss/bootstrap.css" rel="stylesheet" />
    <link href="data%20tabelss/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <script src="data%20tabelss/dataTables.bootstrap4.min.js"></script>
    <script src="data%20tabelss/jquery-3.5.1.js"></script>
    <script src="data%20tabelss/jquery.dataTables.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {


            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>
                                </center>

                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="img/writer.png" />
                                </center>

                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />

                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox CssClass="form-control" placeholder=" ID" runat="server" ID="TextBox1"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" runat="server" Text="Go" ID="Button4" OnClick="Button4_Click" />
                                    </div>

                                </div>

                            </div>
                            <div class="col-md-8">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Author Name" runat="server" TextMode="Singleline" ID="TextBox2"></asp:TextBox>

                                </div>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <asp:Button class="btn btn-lg btn-block btn-success" runat="server" Text="Add" ID="Button1" OnClick="Button1_Click" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button class="btn btn-lg btn-block btn-primary" runat="server" Text="Update" ID="Button2" OnClick="Button2_Click" />
                            </div>
                            <div class="col-md-4">
                                <asp:Button class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" ID="Button3" OnClick="Button3_Click" />
                            </div>

                        </div>



                    </div>

                </div>
                <a href="homepage.aspx"><< Back To Home</a>
                <br />
                <br />

            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author List</h4>
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />

                            </div>

                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-bordered table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="E_Library_Management.adminbookissuing" %>

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

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuiing</h4>
                                </center>

                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="img/books.png" />
                                </center>

                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />

                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Member ID" runat="server" TextMode="Singleline" ID="TextBox2"></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox CssClass="form-control" placeholder="Book ID" runat="server" ID="TextBox1"></asp:TextBox>
                                        <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="Go" OnClick="Button3_Click" />
                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Member Name" runat="server" TextMode="Singleline" ReadOnly="True" ID="TextBox4"></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Book Name" runat="server" TextMode="Singleline" ReadOnly="True" ID="TextBox5"></asp:TextBox>

                                </div>

                            </div>

                        </div>


                           <div class="row">
                            <div class="col-md-6">
                                <label>Issue Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Start Date" runat="server" TextMode="Date" ID="TextBox6"></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-md-6">
                                <label>Due Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="End Date" runat="server" TextMode="Date" ID="TextBox7"></asp:TextBox>

                                </div>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <asp:Button CssClass="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Isuue" OnClick="Button1_Click" />
                            </div>
                            <div class="col-md-6">
                                <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Return" OnClick="Button2_Click" />
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
                                    <h4>Issued Books List</h4>
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />

                            </div>

                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView OnRowDataBound="GridView1_RowDataBound" CssClass="table table-bordered table-striped" ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                            </div>
                        </div>



                    </div>

                </div>
            </div>

        </div>

    </div>


</asp:Content>

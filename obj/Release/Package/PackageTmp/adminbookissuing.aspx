<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="E_Library_Management.adminbookissuing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                    <asp:TextBox CssClass="form-control" placeholder="Member ID" runat="server" TextMode="Singleline"></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox CssClass="form-control" placeholder="Book ID" runat="server"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" runat="server" Text="Go" />
                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Member Name" runat="server" TextMode="Singleline" ReadOnly="True"></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Book Name" runat="server" TextMode="Singleline" ReadOnly="True"></asp:TextBox>

                                </div>

                            </div>

                        </div>


                           <div class="row">
                            <div class="col-md-6">
                                <label>Start Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Start Date" runat="server" TextMode="Date" ></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-md-6">
                                <label>End Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="End Date" runat="server" TextMode="Date" ></asp:TextBox>

                                </div>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <asp:Button CssClass="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Isuue" />
                            </div>
                            <div class="col-md-6">
                                  <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Return" />
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
                            <div class="col">
                                <asp:GridView CssClass="table table-bordered table-striped" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>



                    </div>

                </div>
            </div>

        </div>

    </div>


</asp:Content>

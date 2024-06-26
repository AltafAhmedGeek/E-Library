﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="E_Library_Management.adminbookinventory" %>

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
                                    <h4>Book Details</h4>
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
                            <div class="col">
                                <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server" />

                            </div>

                        </div>


                        <div class="row">

                            <div class="col-md-4">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox ID="TextBox1" CssClass="form-control mr-1" placeholder="Book ID" runat="server"></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>

                                </div>

                            </div>

                            <div class="col-md-8">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Book Name" runat="server" TextMode="Singleline"></asp:TextBox>

                                </div>

                            </div>




                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">


                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="Hindi" Value="Hindi" />
                                        <asp:ListItem Text="Marathi" Value="Marathi" />
                                        <asp:ListItem Text="French" Value="French" />
                                        <asp:ListItem Text="German" Value="German" />
                                        <asp:ListItem Text="Urdu" Value="Urdu" />

                                    </asp:DropDownList>



                                </div>

                                <label>Publisher</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">


                                        <asp:ListItem Text="Publisher1" Value="Publisher1" />
                                        <asp:ListItem Text="Publisher2" Value="Publisher2" />


                                    </asp:DropDownList>



                                </div>



                            </div>

                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server">


                                        <asp:ListItem Text="a1" Value="a1" />
                                        <asp:ListItem Text="a2" Value="a2" />


                                    </asp:DropDownList>



                                </div>

                                <label>Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>


                                </div>



                            </div>
                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group">

                                    <asp:ListBox class="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">


                                        <asp:ListItem Text="Action" Value="Action" />
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                        <asp:ListItem Text="Self Help" Value="Self Help" />
                                        <asp:ListItem Text="Motivation" Value="Motivation" />
                                        <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                        <asp:ListItem Text="Wellness" Value="Wellness" />
                                        <asp:ListItem Text="Crime" Value="Crime" />
                                        <asp:ListItem Text="Drama" Value="Drama" />
                                        <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                        <asp:ListItem Text="Horror" Value="Horror" />
                                        <asp:ListItem Text="Poetry" Value="Poetry" />
                                        <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                        <asp:ListItem Text="Romance" Value="Romance" />
                                        <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                        <asp:ListItem Text="Suspense" Value="Suspense" />
                                        <asp:ListItem Text="Thriller" Value="Thriller" />
                                        <asp:ListItem Text="Art" Value="Art" />
                                        <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                        <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                        <asp:ListItem Text="Health" Value="Health" />
                                        <asp:ListItem Text="History" Value="History" />
                                        <asp:ListItem Text="Math" Value="Math" />
                                        <asp:ListItem Text="Textbook" Value="Textbook" />
                                        <asp:ListItem Text="Science" Value="Science" />
                                        <asp:ListItem Text="Travel" Value="Travel" />

                                    </asp:ListBox>

                                </div>

                            </div>

                        </div>



                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" TextMode="SingleLine"  placeholder="Edition"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-4">
                                <label>Book Cost</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Book Cost" runat="server" TextMode="Number"></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Pages" runat="server" TextMode="Number" ></asp:TextBox>

                                </div>

                            </div>

                        </div>


                            <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" TextMode="Number"  placeholder="Actual Stock"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Current Stock" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Issued Books" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>

                                </div>

                            </div>

                        </div>



                        <div class="row">

                            <div class="col-12">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Book Description" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>

                                </div>

                            </div>

                        </div>








                        <div class="row">

                            <div class="col-4">
                                <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Add" />
                            </div>
                            <div class="col-4">
                                <asp:Button CssClass="btn btn-primary btn-block btn-lg" ID="Button3" runat="server" Text="Update" />
                            </div>
                            <div class="col-4">
                                <asp:Button CssClass="btn btn-danger btn-block btn-lg" ID="Button4" runat="server" Text="Delete" />
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
                                    <h4>Book Inventory List</h4>
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

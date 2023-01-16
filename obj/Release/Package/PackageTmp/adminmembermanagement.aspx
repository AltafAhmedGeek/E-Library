<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="E_Library_Management.adminmembermanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="font%20awesome/css/all.css" rel="stylesheet" />
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
                                    <h4>Member Details</h4>
                                </center>

                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="img/generaluser.png" />
                                </center>

                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />

                            </div>

                        </div>

                        <div class="row">

                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox ID="TextBox1" CssClass="form-control mr-1" placeholder="Member ID" runat="server"></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>

                                </div>

                            </div>

                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Full Name" runat="server" TextMode="Singleline" ReadOnly="True"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-5">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">

                                        <asp:TextBox ID="TextBox3" CssClass="form-control mr-1" placeholder="Status" runat="server"></asp:TextBox>
                                     
                                        <asp:LinkButton CssClass="btn btn-success mr-1" ID="LinkButton1" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>     
                                         <asp:LinkButton CssClass="btn btn-warning mr-1" ID="LinkButton2" runat="server"><i class="far fa-pause-circle"></i></asp:LinkButton>  
                                         <asp:LinkButton CssClass="btn btn-danger mr-1" ID="LinkButton3" runat="server"><i class="fas fa-times-circle"></i></asp:LinkButton>  
                                                                            
                                    </div>

                                </div>

                            </div>


                        </div>


                        <div class="row">
                              <div class="col-md-3">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" TextMode="SingleLine" ReadOnly="True" placeholder="DOB"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-4">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Contact Number" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-md-5">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Email ID" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>

                                </div>

                            </div>

                        </div>


                        
                        <div class="row">
                              <div class="col-md-3">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" TextMode="SingleLine" ReadOnly="True" placeholder="State"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="City" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-md-5">
                                <label>PIN Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="PIN Code" runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>

                                </div>

                            </div>

                        </div>



                        <div class="row">
                           
                            <div class="col-12">
                                <label>Full Postal Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Full Postal Address" runat="server" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>

                                </div>

                            </div>

                        </div>








                        <div class="row">
                            
                            <div class="col-12 mx-auto">
                                <asp:Button CssClass="btn btn-danger btn-block btn-lg" ID="Button2" runat="server" Text="Delete User Permanently" />
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
                                    <h4>Members List</h4>
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

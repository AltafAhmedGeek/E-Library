<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CsSem1.aspx.cs" Inherits="E_Library_Management.CsSem1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150" src="img/muLogo.png" />
                                </center>

                            </div>

                        </div>
                          <div class="row">
                            <div class="col">
                                <center>
                                    <h3>BSc.CS Semester 1</h3>
                                </center>

                            </div>

                        </div>
                        <hr />
                        <div class="container">

                            <asp:Table runat="server" CssClass="table table-striped table-bordered">
                                <asp:TableHeaderRow>
                                    <asp:TableHeaderCell>Subject</asp:TableHeaderCell>
                                    <asp:TableHeaderCell>Download Button</asp:TableHeaderCell>
                                </asp:TableHeaderRow>
                                <asp:TableRow>
                                    <asp:TableCell>Computer Organization and Design</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed2_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Programming with Python- I</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed3_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Free and Open Source Software</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed4_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Database Systems</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed5_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Discrete Mathematics</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed6_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                 <asp:TableRow>
                                    <asp:TableCell>Descriptive Statistics and Introduction to Probability</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed7_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                 <asp:TableRow>
                                    <asp:TableCell>Soft Skills Development</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed8_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>


                            </asp:Table>
                        </div>
                    </div>

                </div>
                <a href="homepage.aspx"><< Back To Home</a>
                <br />
                <br />

            </div>

        </div>

    </div>
</asp:Content>

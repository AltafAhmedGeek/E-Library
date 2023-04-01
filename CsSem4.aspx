<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CsSem4.aspx.cs" Inherits="E_Library_Management.CsSem4" %>
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
                                    <h3>BSc.CS Semester 4</h3>
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
                                    <asp:TableCell>Fundamentals of Algorithms</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed2_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Advanced JAVA</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed3_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Computer Networks</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed4_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Software Engineering</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed5_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>Linear Algebra using Python</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed6_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                 <asp:TableRow>
                                    <asp:TableCell>.NET Technologies</asp:TableCell>
                                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed7_Click" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                 <asp:TableRow>
                                    <asp:TableCell>Android Developer Fundamentals</asp:TableCell>
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

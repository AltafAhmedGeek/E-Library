<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ItSem3.aspx.cs" Inherits="E_Library_Management.ItSem3" %>
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
                                    <img width="150px" src="img/muLogo.png" />
                                </center>

                            </div>

                        </div>
                          <div class="row">
                            <div class="col">
                                <center>
                                    <h3>BSc.IT Semester 3</h3>
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
                    <asp:TableCell>Python Programming</asp:TableCell>
                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed2_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Data Structures</asp:TableCell>
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
                    <asp:TableCell>Database Management Systems</asp:TableCell>
                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed5_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                                <asp:TableRow>
                    <asp:TableCell>Applied Mathematics</asp:TableCell>
                    <asp:TableCell>
                        <asp:Button runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="Unnamed6_Click" />
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

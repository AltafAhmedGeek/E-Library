<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ItSem1.aspx.cs" Inherits="E_Library_Management.ItSem1" %>
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
                                    <h3>BSc.IT Semester 1</h3>
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
                    <asp:TableCell>Imperative Programming</asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btn1" runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="btn1_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Digital Electronics</asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btn2" runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="btn2_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Operating Systems</asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btn3" runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="btn3_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                                <asp:TableRow>
                    <asp:TableCell>Discrete Mathematics</asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btn4" runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="btn4_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                                <asp:TableRow>
                    <asp:TableCell>Communication Skills</asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btn5" runat="server" Text="Download" CssClass="btn btn-block btn-outline-primary" OnClick="btn5_Click" />
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

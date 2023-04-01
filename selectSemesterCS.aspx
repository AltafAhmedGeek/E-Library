<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="selectSemesterCS.aspx.cs" Inherits="E_Library_Management.selectSemesterCS" %>
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
                                    <h3>BSc.CS</h3>
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

                                <div class="form-group">
                                   
                                    <center>
                                        
                                        <asp:LinkButton CssClass="btn btn-lg btn-outline-primary col-md-5 m-1" ID="bscit" runat="server" OnClick="bscit_Click">Semester 1</asp:LinkButton>

                                        <asp:LinkButton CssClass="btn btn-lg btn-outline-primary col-md-5 m-1" ID="bsccs" runat="server" OnClick="bsccs_Click">Semester 2</asp:LinkButton>
                                    </center>
                                    <hr />
                                      <center>
                                          <asp:LinkButton CssClass="btn btn-lg btn-outline-primary col-md-5 m-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Semester 3</asp:LinkButton>

                                          <asp:LinkButton CssClass="btn btn-lg btn-outline-primary col-md-5 m-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Semester 4</asp:LinkButton>
                                    </center>
                                    <hr />

                                      <center>
                                          <asp:LinkButton CssClass="btn btn-lg btn-outline-primary col-md-5 m-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Semester 5</asp:LinkButton>

                                          <asp:LinkButton CssClass="btn btn-lg btn-outline-primary col-md-5 m-1" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Semester 6</asp:LinkButton>
                                    </center>

                                </div>



                            </div>

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

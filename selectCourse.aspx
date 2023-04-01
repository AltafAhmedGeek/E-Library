<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="selectCourse.aspx.cs" Inherits="E_Library_Management.WebForm2" %>

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
                                    <h3>Select Course</h3>
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
                                        <asp:LinkButton CssClass="btn btn-lg btn-outline-primary col-md-5" ID="bscit" runat="server" OnClick="bscit_Click">BSc.IT</asp:LinkButton>

                                        <asp:LinkButton CssClass="btn btn-lg btn-outline-primary col-md-5" ID="bsccs" runat="server" OnClick="bsccs_Click">BSc.CS</asp:LinkButton>
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

﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="E_Library_Management.adminlogin" %>
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
                                    <img width="150px" src="img/adminuser.png" />
                                </center>

                            </div>

                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
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
                                    <label>Admin ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Admin ID" runat="server" ID="TextBox1"></asp:TextBox>

                                </div>
                                  <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Passsword" runat="server" TextMode="Password" ID="TextBox2"></asp:TextBox>

                                </div>
                                 
                                <div class="form-group">
                                    <asp:Button ID="Button1" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="Login" OnClick="Button1_Click" />               
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

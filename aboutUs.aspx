<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aboutUs.aspx.cs" Inherits="E_Library_Management.aboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">

            <h3 style="margin: auto">About Us
            </h3>
        </div>
        <div class="row">
            <div class="col-md-5 ">
                <div class="container">


                <br />
                <br />

                <em>

                <p style="text-align: left">
                   This library management system is software that is designed to manage all the functions of a library. It helps librarian to maintain the database of new books and the books that are borrowed by members along with their due dates.
                </p>
                <p style="text-align: right">
                    This system completely automates all your library’s activities. The best way to maintain, organize, and handle countless books systematically is to implement a library management system software.
                </p>
                 <p style="text-align: left">
                    This library management system is used to maintain library records. It tracks the records of the number of books in the library, how many books are issued, or how many books have been returned or renewed or late fine charges, etc.
            </p>
                 <p style="text-align: right">
                    You can find books in an instant, issue/reissue books quickly, and manage all the data efficiently and orderly using this system. The purpose of a library management system is to provide instant and accurate data regarding any type of book, thereby saving a lot of time and effort.
                </p>
                </em>
                    
                <center>
                    <a href="mailto: abc@example.com" class="btn btn-lg btn-outline-primary col-md-5">Email Us
                    </a>
          

                </center>
                    <br />

                                    </div>
            </div>
            <div class="col-md-7 ">
                <center>

                    <img src="img/libraryLogo.png" height="400" />
                </center>
            </div>

        </div>
    </div>
</asp:Content>

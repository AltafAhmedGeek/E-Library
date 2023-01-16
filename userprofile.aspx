<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="E_Library_Management.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--data tables-->
    <script src="https://code.jquery.com/jquery-3.5.1.js" type="text/javascript"></script>

    <script src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>

    <script src="https://cdn.datatables.net/1.11.1/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.11.1/css/dataTables.bootstrap4.min.css" rel="stylesheet">


    <script type="text/javascript">
        $(document).ready(function () {


            $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

        });
    </script>
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
                                    <img width="100px" src="img/generaluser.png" />
                                </center>

                            </div>

                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                    <span ">Account Status - </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your Status"></asp:Label>
                                </center>

                            </div>

                        </div>
                         <div class="row">
                            <div class="col">
                                <hr />

                            </div>

                         </div>

                            <div class="row">
                              <div class="col-md-6">
                                       <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Enter Name" runat="server" ID="TextBox1"></asp:TextBox>

                                </div>

                               </div>
                                <div class="col-md-6">
                                     <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"  runat="server" TextMode="Date" ID="TextBox2"></asp:TextBox>

                                </div>

                                </div>

                         </div>


                        <div class="row">
                              <div class="col-md-6">
                                       <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="+91 8989xxxxxx" runat="server" TextMode="Number" ID="TextBox3"></asp:TextBox>

                                </div>

                               </div>
                                <div class="col-md-6">
                                     <label>E-mail</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"  runat="server" 
                   placeholder="example@example.com" TextMode="Email" ID="TextBox4"></asp:TextBox>

                                </div>

                                </div>

                         </div>

                        <div class="row">
                              <div class="col-md-4">
                                       <label>State</label>
                                <div class="form-group">

                                    <asp:DropDownList  CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem  Text="select" Value="select"/>
                                         
                              <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                              <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />

                                    </asp:DropDownList>
                                </div>

                               </div>
                                <div class="col-md-4">
                                     <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"  runat="server" placeholder="City" ID="TextBox6"></asp:TextBox>

                                </div>

                                </div>  
                            <div class="col-md-4">
                                     <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"  runat="server" placeholder="Pin Code" TextMode="Number" ID="TextBox7"></asp:TextBox>

                                </div>

                                </div>

                         </div>

                           <div class="row">
                              <div class="col-md-12">
                                       <label>Full address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" TextMode="MultiLine" Rows="2" ID="TextBox5"></asp:TextBox>

                                </div>

                               </div>
                               

                         </div>
                         <div class="row">
                              <div class="col-md-12">
                                  <br />
                                  <center>
                                    <span class="badge badge-pill badge-info">Login Credentials</span>
                                  </center>
                                  <br />
                               </div>
                               

                         </div>


                         <div class="row">
                              <div class="col-md-4">
                                       <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="User ID" runat="server" ReadOnly="True" ID="TextBox8"></asp:TextBox>

                                </div>

                               </div>
                                <div class="col-md-4">
                                     <label>Old Password</label>
                                <div class="form-group">
                                   
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Old Password" ReadOnly="True"></asp:TextBox>

                                </div>

                                </div>

                                     <div class="col-md-4">
                                     <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox placeholder="New Password" CssClass="form-control"  runat="server" TextMode="Password" ID="TextBox10"></asp:TextBox>

                                </div>

                                </div>

                         </div>


                   
                        <div class="row">
                            <div class="col-md-8 mx-auto">
                                 
                                 
                                 <center>
                                <div class="form-group">
            
                               <a href="#">
                                   <asp:Button class="btn btn-block btn-primary  btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                               
                               </a>
                                </div>
                                </center>
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
                                    <img width="100px" src="img/books1.png" />
                                </center>

                            </div>

                        </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Issued Books</h4>
                                    
                                    <asp:Label CssClass="badge badge-pill badge-info" ID="Label2" runat="server" Text="Info About Books Due Date"></asp:Label>
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
                                <asp:GridView OnRowDataBound="GridView1_RowDataBound" CssClass="table table-bordered table-striped" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>



                    </div>

                </div>
            </div>

        </div>

    </div>

</asp:Content>

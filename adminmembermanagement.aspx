<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="E_Library_Management.adminmembermanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="font%20awesome/css/all.css" rel="stylesheet" />

      <!--data tables-->
    <link href="data%20tabelss/bootstrap.css" rel="stylesheet" />
    <link href="data%20tabelss/dataTables.bootstrap4.min.css" rel="stylesheet" />
    <script src="data%20tabelss/dataTables.bootstrap4.min.js"></script>
    <script src="data%20tabelss/jquery-3.5.1.js"></script>
    <script src="data%20tabelss/jquery.dataTables.min.js"></script>

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
                                        <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
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

                                        <asp:TextBox ID="TextBox3" CssClass="form-control mr-1" placeholder="Status" runat="server" ReadOnly="True"></asp:TextBox>
                                     
                                        <asp:LinkButton CssClass="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>     
                                        <asp:LinkButton CssClass="btn btn-warning mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>  
                                        <asp:LinkButton CssClass="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>  
                                                                            
                                    </div>

                                </div>

                            </div>


                        </div>


                        <div class="row">
                              <div class="col-md-3">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" TextMode="SingleLine" ReadOnly="True" placeholder="DOB" ID="TextBox4"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-4">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Contact Number" runat="server" TextMode="SingleLine" ReadOnly="True" ID="TextBox5"></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-md-5">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Email ID" runat="server" TextMode="SingleLine" ReadOnly="True" ID="TextBox6"></asp:TextBox>

                                </div>

                            </div>

                        </div>


                        
                        <div class="row">
                              <div class="col-md-3">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" runat="server" TextMode="SingleLine" ReadOnly="True" placeholder="State" ID="TextBox7"></asp:TextBox>

                                </div>

                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="City" runat="server" TextMode="SingleLine" ReadOnly="True" ID="TextBox8"></asp:TextBox>

                                </div>

                            </div>
                            <div class="col-md-5">
                                <label>PIN Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="PIN Code" runat="server" TextMode="SingleLine" ReadOnly="True" ID="TextBox9"></asp:TextBox>

                                </div>

                            </div>

                        </div>



                        <div class="row">
                           
                            <div class="col-12">
                                <label>Full Postal Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Full Postal Address" runat="server" TextMode="MultiLine" Rows="2" ReadOnly="True" ID="TextBox10"></asp:TextBox>

                                </div>

                            </div>

                        </div>








                        <div class="row">
                            
                            <div class="col-12 mx-auto">
                                <asp:Button CssClass="btn btn-danger btn-block btn-lg" ID="Button2" runat="server" Text="Delete User Permanently" OnClick="Button2_Click" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:elibraryDBConnectionString %>' SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView CssClass="table table-bordered table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1" >
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" SortExpression="member_id" ReadOnly="True"></asp:BoundField>
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name"></asp:BoundField>
                                        <asp:BoundField DataField="account_status" HeaderText="Account status" SortExpression="account_status"></asp:BoundField>
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact" SortExpression="contact_no"></asp:BoundField>
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"></asp:BoundField>
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state"></asp:BoundField>
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>



                    </div>

                </div>
            </div>

        </div>

    </div>





</asp:Content>

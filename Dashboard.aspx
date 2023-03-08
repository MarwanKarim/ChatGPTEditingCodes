<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="Dashboard.aspx.cs" Inherits="SchoolManagement.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <style>
        .ul {
            justify-content: center !important;
        }

        .li {
            width: 13% !important;
            min-width:130px!important;
            min-height:15vh !important;
            padding:33px 2% !important
        }

        .li:hover{
            background-color:#bababa !important
        }
        /*.dsp-inl {
            display:inline-block !important;
        }*/
    </style>



    <link rel="stylesheet" type="text/css" href="css/Dashboard/DashboardStyle.css" />


    <%--    <link href="css/pageStyle.css" rel="stylesheet" />
    <link href="css/ResultMsg/result.css" rel="stylesheet" />--%>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Label runat="server" ID="lbl_User_ID" Visible="false" />

    <div class="wrapper mx-auto" style="margin-top: 70px; width: 90%">
        <div class="row d-flex" style="border-bottom: 1px red solid;" >
            <div class="col-8 m-0 dsp-inl ">
                <div class="title">School Management System</div>
            </div>
            <div style="max-width:150px" class="col-2 m-0 dsp-inl ml-auto ">
                <img src="img/iSystems_logo.png" style="display:table-cell;width: 100%;vertical-align:middle" class="mt-5" />
            </div>
        </div>

        <div class="main">
            <div class="row">
                <ul class="ul">
                    <li runat="server" class="li"  id="gp_65" style="display: block;" enabled="false">
                        <a runat="server" ID="btn_65" href="#limk">
                            <span class="material-symbols-sharp">location_away</span>
                            <h2>School Building</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_43" style="display: block">
                        <a runat="server" ID="btn_43" href="#limk">
                            <span class="material-symbols-sharp">campaign
                            </span>
                            <h2>Announcements</h2>
                        </a>
                    </li>
                    <%--<li runat="server" class="li"  ID="gp_" style="display:block">
                      <a runat="server" ID="btn_" href="#limk">
                          <span class="material-symbols-sharp">dashboard</span>
                          <h2>Dashboard</h2>
                      </a>
                  </li>--%>
                    <li runat="server" class="li"  id="gp_8" style="display: block" disabled>
                        <a runat="server" ID="btn_8" href="#limk">
                            <span class="material-symbols-sharp">perm_contact_calendar
                            </span>
                            <h2>Staff and Teachers  </h2>
                        </a>
                    </li>

                </ul>
            </div>

            <div class="row">
                <ul class="ul">
                    <li runat="server" class="li"  id="gp_38" style="display: block">
                        <a runat="server" ID="btn_38" href="#limk">
                            <span class="material-symbols-sharp">local_library
                            </span>
                            <h2>Library</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_33" style="display: block">
                        <a runat="server" ID="btn_33" href="#limk">
                            <span class="material-symbols-sharp">calculate
                            </span>
                            <h2>Accounting</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_50" style="display: block">
                        <a runat="server" ID="btn_50" href="#limk">
                            <span class="material-symbols-sharp">inventory_2
                            </span>
                            <h2>Front Office</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_70" style="display: block">
                        <a runat="server" ID="btn_70" href="#limk">
                            <span class="material-symbols-sharp">inventory
                            </span>
                            <h2>Assessment</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_75" style="display: block">
                        <a runat="server" ID="btn_75" href="#limk">
                            <span class="material-symbols-sharp">menu_book
                            </span>
                            <h2>Education</h2>
                        </a>
                    </li>

                </ul>
            </div>


            <div class="row">
                <ul class="ul">
                    <li runat="server" class="li"  id="gp_9" style="display: block">
                        <a runat="server" ID="btn_9" href="#limk">
                            <span class="material-symbols-sharp">manage_accounts
                            </span>
                            <h2>Student Managment</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_32" style="display: block">
                        <a runat="server" ID="btn_32" href="#limk">
                            <span class="material-symbols-sharp">folder_open
                            </span>
                            <h2>Exam Managment</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_35" style="display: block">
                        <a runat="server" ID="btn_35" href="#limk">
                            <span class="material-symbols-sharp">departure_board
                            </span>
                            <h2>Transportation</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_10" style="display: block">
                        <a runat="server" ID="btn_10" href="#limk">
                            <span class="material-symbols-sharp">select_check_box
                            </span>
                            <h2>Attendance</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_44" style="display: block">
                        <a runat="server" ID="btn_44" href="#limk">
                            <span class="material-symbols-sharp">manage_history
                            </span>
                            <h2>Time Table</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_47" style="display: block">
                        <a runat="server" ID="btn_47" href="#limk">
                            <span class="material-symbols-sharp">supervisor_account
                            </span>
                            <h2>Parent</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_7" style="display: block">
                        <a runat="server" ID="btn_7" href="#limk">
                            <span class="material-symbols-sharp">person_add
                            </span>
                            <h2>Student Admission</h2>
                        </a>
                    </li>

                </ul>
            </div>

            <div class="row">
                <ul class="ul">
                    <li runat="server" class="li"  id="gp_55" style="display: block">
                        <a runat="server" ID="btn_55" href="#limk">
                            <span class="material-symbols-sharp">school
                            </span>
                            <h2>Academic Year</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_4" style="display: block">
                        <a runat="server" ID="btn_4" href="#limk">
                            <span class="material-symbols-sharp">settings_account_box
                            </span>
                            <h2>Class Managment</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_5" style="display: block">
                        <a runat="server" ID="btn_5" href="#limk">
                            <span class="material-symbols-sharp">settings
                            </span>
                            <h2>School Managment</h2>
                        </a>
                    </li>
                    <li runat="server" class="li"  id="gp_39" style="display: block">
                        <a runat="server" ID="btn_39" href="#limk">
                            <span class="material-symbols-sharp">account_balance
                            </span>
                            <h2>Assets  </h2>
                        </a>
                    </li>

                </ul>
            </div>
        </div>

    </div>

</asp:Content>

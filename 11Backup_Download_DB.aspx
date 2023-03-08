<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="True" Inherits="Backup_Download_DB11" Codebehind="11Backup_Download_DB.aspx.cs" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">





    <style>
        .header_Grid {
            background-color: #144699;
            color: #fff !important;
            height: 30px !important;
            text-align: center !important;
            font-family: 'Conv_Chawder-Bold';
        }


        .row_Grid {
            height: 15px !important;
            text-align: center !important;
            font-family: 'Conv_Chawder-Bold';
            line-height: 8px !important;
            vertical-align: central !important;
        }


        .b_textbox{
               font-family: 'Conv_Chawder-Bold' !important;
                border:1px solid #d3cfcf !important;
                color:red !important;
                font-size:20pt !important;

}

        .lbl_style {
            font-family: 'Conv_Chawder-Bold';
            font-size: 10pt;
        }

        .font1 {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
        }

        .font_header1 {
            font-family: 'Conv_Chawder-Bold' !important;
        }

        .RadComboBox, .RadComboBoxDropDown ul li rcbItem,
        .RadComboBoxDropDown_Default_rtl {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
        }
    </style>


    <link href="css/pageStyle.css" rel="stylesheet" />
    <link href="css/ResultMsg/result.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">







    <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-5 align-self-center">
                    <h6 class="page-title" style="width: 350px!important">&nbsp;&nbsp;
                             <asp:Label ID="Label6" runat="server" CssClass="font_header1" Text="backup database‌ "></asp:Label>
                                        <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" style="display:none !important;"></asp:Label>
                         <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>

                    </h6>
                </div>
                       <style>

            
.rnContent , .rnTitleBarTitle {
    font-family: 'Conv_Chawder-Bold' !important;
color:red !important;
font-size:14pt !important;
font-weight:600 !important;

}
        </style>
            </div>
        </div>
  


 





 

        <div class="container-fluid" style="height:800px;">
            <!-- ============================================================== -->
            <asp:UpdatePanel runat="server">
                <ContentTemplate>



            <!-- Start Page Content -->

            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <%--  <h4 class="card-title">Validation Form</h4>--%>

                         


                        <div class="col-lg-12 col-xlg-6">
                            <div class="card">
                                <div class="card-body">

                                    <div class="button-group">

                                         <asp:Button ID="btn_Update" runat="server" Text=" backup db"
                                             CssClass="btn btn-rounded   btn-outline-danger font1" 
                                             OnClick="btn_Update_Click"
                                             
                                             CausesValidation="True" ValidationGroup="grpRegistration" 
                                          OnClientClick="return Validate_Update1();"   />
   
                                           
               <script type="text/javascript">
            function Validate_Update1() {
                if (Page_ClientValidate()) {

            return confirm('دڵنیایی لە داخڵ کردنی?');
                }
                return false;
            }
            </script>


                                    </div>

                                </div>
                                <asp:Label ID="lbl_result_msg" runat="server" Text="  " Visible="false"  ></asp:Label>
                                <asp:Timer ID="Timer1" runat="server" Interval="4000" OnTick="Timer1_Tick" Enabled="false"></asp:Timer>
                            </div>
                        </div>


<%--================================ GridvIew  ======================================--%>

                           <div class="table-responsive font1" style="overflow-x: scroll">

                                    <asp:GridView ID="Gridview1"
                                        runat="server" AutoGenerateColumns="False"
                                        CellPadding="0" CssClass=" " AllowPaging="True" 
                                        DataSourceID="sds_BackUp_Database_Download_Db" Width="100%" GridLines="None" PageSize="10">



                                        <Columns>
                                     

                                            <asp:TemplateField HeaderText="Download" >
                  <ItemTemplate>
                      <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("BackUp_Database") %>' runat="server" OnClick="DownloadFile"></asp:LinkButton>
                  </ItemTemplate>
              </asp:TemplateField>



                                       
                                            <asp:TemplateField HeaderText=" File"  Visible="false"   >

                                                <ItemTemplate>
 

                                                      <a href='<%# Eval("BackUp_Database") %>'>Download</a>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                      
                                            <asp:TemplateField HeaderText=" بەرواری گۆڕانکاری " SortExpression=" "  >

                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("BackUp_Database_Date","{0:yyyy-MM-dd hh:mm tt}") %>' ForeColor="Red"  Font-Bold="true"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>


                                        <HeaderStyle CssClass="header_Grid" BackColor="#233242" />

                                        <PagerStyle CssClass="pagination-ys" />
                                        <RowStyle Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#999999" BorderStyle="None" />
                                        <AlternatingRowStyle BackColor="#eeeeee" Height="40px" />
                                    </asp:GridView>
     <br /><br /><br />

                                </div>

                   

                     </div>
                </div>

 



            </div>
                    
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
 
         
 
    
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->




        <asp:SqlDataSource ID="sds_BackUp_Database_Download_Db" runat="server"
        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
 
        SelectCommand="BackUp_Database_Download_Db" SelectCommandType="StoredProcedure"
            UpdateCommand="BackUp_Database"  UpdateCommandType="StoredProcedure"
            OnUpdated="sds_BackUp_Database_Download_Db_Updated"
            >

            <UpdateParameters>
                <asp:Parameter Name="path" Type="String" />
            </UpdateParameters>
            
    </asp:SqlDataSource>



        <!-- footer -->
        <!-- ============================================================== -->
        <footer class="footer text-center">
         <%--   All Rights Reserved by Nice admin. Designed and Developed by
                <a href="https://wrappixel.com">WrapPixel</a>.--%>
        </footer>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>











    <!-- All Jquery -->
    <!-- ============================================================== -->




    <%--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--%>



    <script src="bootstrap/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->

    <script src="bootstrap/assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="bootstrap/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->



<%--    <script src="bootstrap/dist/js/app.min.js"></script>
    <script src="bootstrap/dist/js/app.init.js"></script>
    <script src="bootstrap/dist/js/app-style-switcher.js"></script>--%>




    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="bootstrap/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="bootstrap/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="bootstrap/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="bootstrap/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->


    <script src="bootstrap/dist/js/custom.min.js"></script>







    <script>

        function KeyPressOrder(fld, e) {

            var strCheck = '0123456789.';
            var whichCode = e.which ? e.which : e.keyCode;

            if (whichCode == 13 || whichCode == 8 || whichCode == 9) return true;
            key = String.fromCharCode(whichCode);
            if (strCheck.indexOf(key) == -1)
            { return false; }

            return true;
        }
    </script>



    <%--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--%>



    <script>

        function Comma1(Num) { //function to add commas to textboxes
            Num += '';
            Num = Num.replace(',', ''); Num = Num.replace(',', ''); Num = Num.replace(',', '');
            Num = Num.replace(',', ''); Num = Num.replace(',', ''); Num = Num.replace(',', '');
            x = Num.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1))
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            return x1 + x2;
        }    </script>







  </asp:Content>


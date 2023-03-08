<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="Dolar" Codebehind="Dolar.aspx.cs" %>

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
            <link href="bootstrap/assets/libs/toastr/build/toastr.min.css" rel="stylesheet" />
    


  <%--    <script src="bootstrap/assets/extra-libs/toastr/toastr-init.js"></script>--%>

    <script type="text/javascript">
        function warning(txt_warning) {
        toastr.warning(txt_warning);
        }

              function info() {
        toastr.info('My name is Inigo Montoya. You killed my father, prepare to die!');
        }


 
                   function success_Inserted(  txt_success) {
                toastr.success(txt_success);
        }



           function toastr_error(txt_error) {
        toastr.error(txt_error);
        }
        
 
 
 function close_window() {
  //if (confirm("Close Window?")) {
    close();
  //}
}
    </script>

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
                             <asp:Label ID="Label6" runat="server" CssClass="font_header1" Text="Dolar / Dinar‌ "></asp:Label>
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
        <br />


        <%--         <telerik:RadNotification RenderMode="Lightweight" ID="RadNotification1" runat="server" VisibleOnPageLoad="true"
              Position="Center"
                                 Width="500" Height="160" Animation="Fade" EnableRoundedCorners="true" EnableShadow="true"
                                 Title="  گۆڕینی نرخی دۆلار" Text="تکایە دلنیا بە لە داخڵ  کردنی نرخی   1  دۆلار بەرامبەر بە دیناری عیراقی"
                                 Style="z-index: 100000; " AutoCloseDelay="5000">
        </telerik:RadNotification>--%>





           <asp:UpdatePanel runat="server" ID="Upnl" >
        <ContentTemplate>

        <div class="container-fluid" style="height:800px;">
            <!-- ============================================================== -->



            <!-- Start Page Content -->

            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <%--  <h4 class="card-title">Validation Form</h4>--%>



                        <div class="form-row">
                            <div class="col-md-2 mb-3">
                                <label for="validationCustom01">
                                    &nbsp; &nbsp;
                                            <asp:Label ID="Label5" runat="server" Text="1 Dolar" CssClass="lbl_style" ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>
                                </label>
                                <asp:TextBox ID="txt_Dolar" runat="server" class="form-control   b_textbox" placeholder="Dolar  "
                                    autocomplete="off"   
                       onfocus = "this.select();" onkeypress="return(KeyPressOrder(this,event))"
                                    CausesValidation="True"    MaxLength="7"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_Dolar" runat="server" ID="valFirstName"
                                    ValidationGroup="grpRegistration" ErrorMessage="" Text="" CssClass="font1" />

                            </div>

                               <div class="col-md-1 mb-3">
                                <label for="validationCustom01">
                                    &nbsp; &nbsp;
                                            <asp:Label ID="Label1" runat="server" Text="  &nbsp; &nbsp;" CssClass="lbl_style"></asp:Label>
                                </label>
  <div class="button-group">
                                                  <asp:Label ID="Label2" runat="server" Text="Dinar " CssClass="lbl_style"   ForeColor="Red" Font-Bold="true" Font-Size="Large"></asp:Label>

</div>
</div>
                        </div>

                      


 


                        <div class="col-lg-12 col-xlg-6">
                            <div class="card">
                                <div class="card-body">

                                    <div class="button-group">

                                         <asp:Button ID="btn_Update" runat="server" Text=" Update"
                                             CssClass="btn btn-rounded   btn-outline-danger font1" 
                                             OnClick="btn_Update_Click"
                                             
                                             CausesValidation="True" ValidationGroup="grpRegistration" 
                                          OnClientClick="return Validate_Update1();"   />
   
                                           
               <script type="text/javascript">
            function Validate_Update1() {
                if (Page_ClientValidate()) {

            return confirm('  are you sure update    ?');
                }
                return false;
            }
            </script>


                                    </div>

                                </div>
                                <asp:Label ID="lbl_result_msg" runat="server" Text="سەرکەتوبوو داخڵ کردنەکەت." Visible="False"></asp:Label>

                            </div>
                        </div>


<%--================================ GridvIew  ======================================--%>

                           <div class="table-responsive font1" style="overflow-x: scroll">

                                    <asp:GridView ID="Gridview1"
                                        runat="server" AutoGenerateColumns="False"
                                        CellPadding="0" CssClass=" " AllowPaging="True" 
                                        DataSourceID="sds_ArchiveDolar" Width="100%" GridLines="None" PageSize="10">



                                        <Columns>
                                     
                                       
                                            <asp:TemplateField HeaderText="User Name" SortExpression="CatName"  >

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_FullName" runat="server" Text='<%# Eval("FullName") %>'  Font-Bold="true"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Value | Before" SortExpression=" "  >

                                                <ItemTemplate>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Value1", "{0:###,###.00}") %>' ForeColor="Red"  Font-Bold="true"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="   Date Insert " SortExpression=" "  >

                                                <ItemTemplate>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("dateInsert","{0:yyyy-MM-dd hh:mm tt}") %>' ForeColor="Red"  Font-Bold="true"></asp:Label>
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
        </div>
 
                <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="4000" OnTick="Timer1_Tick"></asp:Timer>

                  
                  </ContentTemplate>

 
    </asp:UpdatePanel>

    
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->




        <asp:SqlDataSource ID="sds_ArchiveDolar" runat="server"
        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
 
        SelectCommand="SELECT top(500) tblUsers.FullName, tblArchiveDolar.dateInsert,
            tblArchiveDolar.Value1 FROM tblUsers INNER JOIN tblArchiveDolar ON 
            tblUsers.UserId = tblArchiveDolar.UserId ORDER BY tblArchiveDolar.dateInsert DESC"
            
            UpdateCommand="Dolar_Update" UpdateCommandType="StoredProcedure"
            
            OnUpdated="sds_ArchiveDolar_Updated"
            >
            
            <UpdateParameters>
           <asp:Parameter ConvertEmptyStringToNull="True" DefaultValue="0000" Direction="InputOutput" Name="ErrorMessage" Type="String" />
    <asp:ControlParameter  ControlID="lbl_UserID" Name="UserId" Type="Int16" />
            <asp:ControlParameter  ControlID="txt_Dolar" Name="MesNValue" Type="decimal" />
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



    <!-- <script src="bootstrap/assets/libs/jquery/dist/jquery.min.js"></script> -->
    <!-- Bootstrap tether Core JavaScript -->

    <!--     <script src="bootstrap/assets/libs/popper.js/dist/umd/popper.min.js"></script>  -->
    <!--     <script src="bootstrap/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>  -->
    <!-- apps -->



<%--    <script src="bootstrap/dist/js/app.min.js"></script>
    <script src="bootstrap/dist/js/app.init.js"></script>
    <script src="bootstrap/dist/js/app-style-switcher.js"></script>--%>




    <!-- slimscrollbar scrollbar JavaScript -->
    <!--     <script src="bootstrap/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>-->
    <!--      <script src="bootstrap/assets/extra-libs/sparkline/sparkline.js"></script> -->
    <!--Wave Effects -->
    <!--     <script src="bootstrap/dist/js/waves.js"></script> -->
    <!--Menu sidebar -->
    <!--     <script src="bootstrap/dist/js/sidebarmenu.js"></script> -->
    <!--Custom JavaScript -->


    <!--    <script src="bootstrap/dist/js/custom.min.js"></script>-->







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


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="FeeVoucharPaymentList1" Codebehind="1FeeVoucharPaymentList.aspx.cs" %>

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
                border:1px solid #d3cfcf !important;

}

        .lbl_style {
            font-family: 'Conv_Chawder-Bold';
            font-size: 10pt;
        }

        .font1 {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
        }
          .font1_txtbox {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 14pt !important;
            padding:5px 5px !important;
            margin:5px 5px !important;
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
    
    <script type="text/javascript">
        function warning() {
        toastr.warning('My name is Inigo Montoya. You killed my father, prepare to die!');
        }

           function error_paid_Grter_Amount() {
        toastr.error('Payment Gretaer Amount!');
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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Fee Vouchar"></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" style="display:none !important;"></asp:Label>

 <asp:Label ID="lbl_AcademicYear_ID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"    Text="0"></asp:Label>

                      <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>

                    </h6>
                </div>

            </div>
        </div>

        <br />

       <%--    <asp:UpdatePanel runat="server" ID="Upnl" >
        <ContentTemplate>--%>

        <div class="container-fluid">
            <!-- ============================================================== -->



            <!-- Start Page Content -->

            <div class="col-12">
                <div class="card">
                    <div class="card-body">
             


                        <div class="form-row">

                      <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Class " CssClass="lbl_style"></asp:Label>
</label>

            <%--  --%>
     <asp:DropDownList ID="ddl_Class" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_Class_ddl"  DataTextField="ClassName"  DataValueField="Class_ID"
         OnSelectedIndexChanged="ddl_Class_SelectedIndexChanged" ValidationGroup="grpRegistration" 
         AutoPostBack="True"  AppendDataBoundItems="True" >

                       <asp:ListItem Text="Choose" Value="0"  />
                      
                     
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_Class_ddl" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT Distinct [Class_ID], [ClassName] FROM [tblSetting_Class]">

</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_Class" runat="server" ID="RequiredFieldValidator1" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div> 
 

                              <%--====================================================================--%>


                <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label3" runat="server" Text="  Student Name / Available " CssClass="lbl_style"></asp:Label>
</label>

<%--           --%>

     <asp:DropDownList ID="ddl_Student" runat="server" class="form-control font1 b_textbox"
       AppendDataBoundItems="True"      AutoPostBack="true"
           DataSourceID = "sds_Student" DataTextField = "StudentNameE"  DataValueField = "StudentDetails_ID" 
        >

                   <asp:ListItem Text="All" Value="0"  />
                      
                     
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_Student" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="FeeVoucharDetails_Student_ddl" SelectCommandType="StoredProcedure">
    <SelectParameters>

        <asp:ControlParameter ControlID="ddl_Class"   Name="Class_Fkey"  Type="Int32"  />
                 <asp:ControlParameter  ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />
 
        
    </SelectParameters>

</asp:SqlDataSource>
 
                   </div> 
    
                      
  
          
  
        
                
  
 <%--====================================================================--%>                          

 

 

                              <%--====================================================================--%>






 

                              <%--====================================================================--%>




        <div class="col-md-2">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label16" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 

                                         

                          <asp:Button ID="btn_Search" runat="server" Text="Search" CssClass="btn  waves-light btn-dark font1" 
                                                CausesValidation="True" ValidationGroup="grpRegistration" 
                            OnClick="btn_Search_Click" Visible="false"
                                              />
 

 
<%--                           
               <script type="text/javascript">
                                                    function Validate() {
                                                        if (Page_ClientValidate()) {
                                                            return confirm(' Are you sure to save?');
                                                        }
                                                        return false;
                                                    }
                                              </script>--%>

 
                             
                                       
                
                 
                
                 </div>


                 </div>

                        </div>

                     

 

                        <%--======================================================--%>
                    </div>
                </div>



                <div class="row">
                    <div class="col-12">
                        <div class="card">



                            <div class="card-body">




                                <div class="table-responsive font1" style="overflow-x: scroll; padding-bottom:100px !important;">
                                     
                                    <asp:GridView ID="Gridview1"
                                        runat="server" AutoGenerateColumns="False"
                                    CellPadding="0" CssClass=" " AllowPaging="True"
                                        DataKeyNames="FeeVoucher_ID" DataSourceID="sds_FeeVoucharDetails"
                                         Width="100%" GridLines="None" PageSize="1000">



                                        <Columns>
                                    
         <asp:TemplateField ShowHeader="False"  >
                                                <ItemTemplate>
                                                    &nbsp;
                             

                                             <div class="btn-group">
    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="ti-settings"></i>
    </button>
    <div class="dropdown-menu animated flipInY">
        <a class="dropdown-item" href="FeeVoucharPayment.aspx?FeeVoucher_ID=<%# Eval("FeeVoucher_ID") %>">payment</a>

      
        <a class="dropdown-item" href="FeeVoucharPaymentDiscount.aspx?FeeVoucher_ID=<%# Eval("FeeVoucher_ID") %>"> Discount </a>
        <a class="dropdown-item" href="javascript:void(0)">Invoice  </a>
<%--        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="javascript:void(0)">Separated</a>--%>
    </div>
</div>
 
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="FeeVoucher_ID" InsertVisible="False" Visible="false" >

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_FeeVoucher_ID_GV" runat="server" Text='<%# Eval("FeeVoucher_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>




       <asp:TemplateField HeaderText="StudentDetails_ID" InsertVisible="False"  Visible="false">

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_StudentDetails_ID_GV" runat="server" Text='<%# Eval("StudentDetails_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


  <asp:TemplateField  >

                                                <ItemTemplate>

          <span class="label label-success" runat="server" Visible='<%# Eval("balance_Inserted").ToString() == "0" ? true : false %>'> Fully Paid  </span>                                           
            <span class="label label-danger"  runat="server" Visible='<%# Eval("balance_Inserted").ToString() == "1" ? true : false %>'>Not Paid</span>  


<span class="label label-warning" runat="server" Visible='<%# Eval("balance_Inserted").ToString() == "3" ? true : false %>'>  Partially Paid</span> 





                                                </ItemTemplate>
                                            </asp:TemplateField>







                                             <asp:TemplateField HeaderText="Student"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelStudentNameE" runat="server" Text='<%# Eval("StudentNameE") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            
 
                                                 <asp:TemplateField HeaderText="Class "   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelClassName" runat="server" Text='<%# Eval("ClassName") %>'></asp:Label>
                                                  <%--  -  - Section
                                            <asp:Label ID="LabelSectionName" runat="server" Text='<%# Eval("SectionName") %>'></asp:Label> --%> 

                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                  <asp:TemplateField HeaderText="Fee Group "   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelFeeGroupName" runat="server" Text='<%# Eval("FeeGroupName") %>'></asp:Label>
                                                    
                                          

                                                </ItemTemplate>
                                            </asp:TemplateField> 
 
                                         
                 <asp:TemplateField HeaderText="Date"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelVoucherDate" runat="server" Text='<%# Eval("VoucherDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                                                    
                                          

                                                </ItemTemplate>
                                            </asp:TemplateField> 
                                     
 
                                            
                                          <asp:TemplateField HeaderText="Amount "   >
                                              
                                                <ItemTemplate>

                                          <asp:Label ID="LabelAmount" runat="server" Text='<%# Eval("Amount" ) %>'></asp:Label>

                                                   

                                                </ItemTemplate>
                                            </asp:TemplateField>
 
                                                        <asp:TemplateField HeaderText=" Payment "   >
                                              
                                                <ItemTemplate>

                                          <asp:Label ID="LabelCredit" runat="server" Text='<%# Eval("Credit" ) %>'></asp:Label>
 
                                                </ItemTemplate>
                                            </asp:TemplateField>    
             
                                          <asp:TemplateField HeaderText=" balance "   >
                                              
                                                <ItemTemplate>

                                          <asp:Label ID="Labelbalance" runat="server" Text='<%# Eval("balance" ) %>'></asp:Label>
 
                                                </ItemTemplate>
                                            </asp:TemplateField>
      


                                        </Columns>


                                        <HeaderStyle CssClass="header_Grid" BackColor="#233242" />

                                        <PagerStyle CssClass="pagination-ys" />
                                        <RowStyle Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#999999" BorderStyle="None" />
                                        <AlternatingRowStyle BackColor="#eeeeee" Height="40px" />
                                    </asp:GridView>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
        </div>
        <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="4000" OnTick="Timer1_Tick"></asp:Timer>



<%--       =============================== ama bo update ============================ --%>
            <script>
                  
                    var lastFocusedControlId = "";

                    function focusHandler(e) {
                        document.activeElement = e.originalTarget;
                    }

                    function appInit() {
                        if (typeof (window.addEventListener) !== "undefined") {
                            window.addEventListener("focus", focusHandler, true);
                        }
                        Sys.WebForms.PageRequestManager.getInstance().add_pageLoading(pageLoadingHandler);
                        Sys.WebForms.PageRequestManager.getInstance().add_pageLoaded(pageLoadedHandler);
                    }

                    function pageLoadingHandler(sender, args) {
                        lastFocusedControlId = typeof (document.activeElement) === "undefined"
                            ? "" : document.activeElement.id;
                    }

                    function focusControl(targetControl) {
                        if (Sys.Browser.agent === Sys.Browser.InternetExplorer) {
                            var focusTarget = targetControl;
                            if (focusTarget && (typeof (focusTarget.contentEditable) !== "undefined")) {
                                oldContentEditableSetting = focusTarget.contentEditable;
                                focusTarget.contentEditable = false;
                            }
                            else {
                                focusTarget = null;
                            }
                            targetControl.focus();
                            if (focusTarget) {
                                focusTarget.contentEditable = oldContentEditableSetting;
                            }
                        }
                        else {
                            targetControl.focus();
                        }
                    }

                    function pageLoadedHandler(sender, args) {
                        if (typeof (lastFocusedControlId) !== "undefined" && lastFocusedControlId != "") {
                            var newFocused = $get(lastFocusedControlId);
                            if (newFocused) {
                                focusControl(newFocused);
                            }
                        }
                    }

                    Sys.Application.add_init(appInit);
                 </script>
                  
        <%--          </ContentTemplate>

 
    </asp:UpdatePanel>--%>

        <%--   <Triggers>
            <asp:PostBackTrigger ControlID="btn_clear" />
           </Triggers>--%>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->








        <!-- footer -->
        <!-- ============================================================== -->
        <footer class="footer text-center">
       
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


 


    <!-- slimscrollbar scrollbar JavaScript -->
    <!--     <script src="bootstrap/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>-->
    <!--      <script src="bootstrap/assets/extra-libs/sparkline/sparkline.js"></script> -->
    <!--Wave Effects -->
    <!--     <script src="bootstrap/dist/js/waves.js"></script> -->
    <!--Menu sidebar -->
    <!--     <script src="bootstrap/dist/js/sidebarmenu.js"></script> -->
    <!--Custom JavaScript -->






    <!--    <script src="bootstrap/dist/js/custom.min.js"></script>-->

       <!--   <script src="bootstrap/assets/libs/toastr/build/toastr.min.js"></script>-->
<%--    <script src="bootstrap/assets/extra-libs/toastr/toastr-init.js"></script>--%>

<%--        <script>
        $(function() {
             

    // Success Type
    $('#tsinfo').on('click', function() {
        toastr.info('We do have the Kapua suite available.', 'Turtle Bay Resort');
    });







});
    </script>--%>

 
<%--           <script type="text/javascript">
                                                          function Validate22222() {
                                                                  toastr.info('We do have the Kapua suite available.', 'Turtle Bay Resort');

                                                          }
                                              </script>--%>


  









    <asp:SqlDataSource ID="sds_FeeVoucharDetails" runat="server"
        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
        SelectCommand="FeeVoucharDetails_Select" DeleteCommand="FeeVoucher_Delete"
        DeleteCommandType="StoredProcedure" InsertCommand="FeeVoucher_Insert"
        InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure"
      
      
      
         OnDeleted="sds_FeeVoucher_Deleted"
        
        >
        <DeleteParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="0000" ConvertEmptyStringToNull="true" />
                   <asp:Parameter Name="FeeVoucher_ID" Type="Int32" DefaultValue="0" />
             <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </DeleteParameters>


        

               
            <SelectParameters>
         <asp:ControlParameter  ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />

 <asp:ControlParameter  ControlID="ddl_Class" Name="Class_Fkey" Type="Int32" />

                 <asp:ControlParameter  ControlID="ddl_Student" Name="StudentDetails_ID" Type="Int32" />

  
   
 
            </SelectParameters>

               

        </asp:SqlDataSource>




     



  



     

 

                           <%--==============================================================================--%>


     <script>

         function KeyPressOrder(fld, e) {

             var strCheck = '0123456789,.';
             var whichCode = e.which ? e.which : e.keyCode;

             if (whichCode == 13 || whichCode == 8 || whichCode == 9) return true;
             key = String.fromCharCode(whichCode);
             if (strCheck.indexOf(key) != -1)
             { return true; }

             return false;
         }
     </script>



    
           <script type="text/javascript" language ="javascript">


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
                     }
</script>   




<%-- ================================================================--%>    


</asp:Content>


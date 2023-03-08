<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="FeeVoucharPayment1" Codebehind="1FeeVoucharPayment.aspx.cs" %>

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


        .b_textbox {
            border: 1px solid #d3cfcf !important;
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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Payment  "></asp:Label>
                        <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" Style="display: none !important;"></asp:Label>

                        <asp:Label ID="lbl_AcademicYear_ID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300" Visible="False" Text="0"></asp:Label>
                        <asp:Label ID="lbl_FeeVoucher_Fkey" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300" Text="0"  Visible="False"></asp:Label>

                        <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300" Visible="False"></asp:Label>

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



                            <div class="col-md-2 mb-3">
                                <label for="validationCustom02">
                                    &nbsp;&nbsp;
  <asp:Label ID="Label6" runat="server" Text="  Student Name  " CssClass="lbl_style"></asp:Label>
                                </label>

                                <%--           --%>

                                <asp:DropDownList ID="ddl_Student" runat="server" class="form-control font1 b_textbox"
                                   
                                    DataSourceID="sds_Student" DataTextField="StudentNameE" DataValueField="StudentDetails_ID">

                                </asp:DropDownList>

                                <asp:SqlDataSource ID="sds_Student" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                                    SelectCommand="FeeVoucharDetails_Payment_Student_ddl" SelectCommandType="StoredProcedure">
                                    <SelectParameters>

            <asp:ControlParameter ControlID="lbl_FeeVoucher_Fkey" Name="FeeVoucher_Fkey" Type="Int32" />
 

                                    </SelectParameters>

                                </asp:SqlDataSource>

                            </div>

                            <%--====================================================================--%>



                            <div class="col-md-3 mb-3">
                                <label for="validationCustom02">
                                    &nbsp;&nbsp;
  <asp:Label ID="Label8" runat="server" Text=" Date" CssClass="lbl_style"></asp:Label>
                                </label>

                                <asp:TextBox ID="txt_VoucharDetailsDate" runat="server" class="form-control font1 b_textbox" TextMode="Date"></asp:TextBox>

                                <asp:RequiredFieldValidator ControlToValidate="txt_VoucharDetailsDate" runat="server" ID="RequiredFieldValidator7"
                                    ValidationGroup="grpRegistration" Text="Required" ForeColor="Red" CssClass="font1" />

                            </div>


                            <%--====================================================================--%>

                            <div class="col-md-3 mb-3">
                                <label for="validationCustom02">
                                    &nbsp;&nbsp;
  <asp:Label ID="Label2" runat="server" Text="Credit" CssClass="lbl_style"></asp:Label>
                                </label>


                                <asp:TextBox ID="txt_Credit" runat="server" Text="" MaxLength="10"
                                    class="form-control font1 b_textbox"  onfocus="this.select();"
                                    onkeyup="javascript:this.value=Comma1(this.value);" ForeColor="green"
                                    onkeypress="return(KeyPressOrder(this,event))" autocomplete="off"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_Credit" runat="server" ID="RequiredFieldValidator5"
                                    ValidationGroup="grpRegistration" Text="Required"  CssClass="font1" />

                            </div>


                            <%--====================================================================--%>

                            <div class="col-md-3 mb-3">
                                <label for="validationCustom02">
                                    &nbsp;&nbsp;
  <asp:Label ID="Label5" runat="server" Text="Balance" CssClass="lbl_style"></asp:Label>
                                </label>

                                <asp:TextBox ID="txt_Balance" runat="server" class="form-control font1 b_textbox"
                                    ForeColor="Red"
                                    autocomplete="off" ReadOnly="true"></asp:TextBox>



                            </div>


                            <%--====================================================================--%>
                            <div class="col-md-6 mb-3">
                                <label for="validationCustom02">
                                    &nbsp;&nbsp;
  <asp:Label ID="Label7" runat="server" Text="Note" CssClass="lbl_style"></asp:Label>
                                </label>

                                <asp:TextBox ID="txt_VoucharDetailsNote" runat="server" class="form-control font1 b_textbox" MaxLength="500" autocomplete="off"></asp:TextBox>


                            </div>


                            <%--====================================================================--%>

                            <div class="col-md-4">
                                <label for="validationCustom02">
                                    &nbsp;&nbsp;
  <asp:Label ID="Label16" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
                                </label>
                                <div class="form-group">

                                    <asp:Button ID="btn_Insert" runat="server" Text="Add" CssClass="btn  waves-light btn-success font1"
                                        OnClick="btn_insert_Click" CausesValidation="True" ValidationGroup="grpRegistration" />



                                    <asp:Button ID="btn_Update" runat="server" Text=" Save" CssClass="btn  btn-warning font1"
                                        OnClick="btn_Update_Click" CausesValidation="True" ValidationGroup="grpRegistration"
                                        OnClientClick="return Validate();" Visible="False" />



                                    <script type="text/javascript">
                                        function Validate() {
                                            if (Page_ClientValidate()) {
                                                return confirm(' Are you sure to save?');
                                            }
                                            return false;
                                        }
                                    </script>


                                    <asp:Button ID="btn_Delete" runat="server" Text="Delete"
                                        CssClass="btn   waves-light btn-danger font1" OnClick="btn_delete_Click"
                                        CausesValidation="False" formnovalidate
                                        OnClientClick="return Validate_delete();" Visible="False" />



                                    <script type="text/javascript">
                                        function Validate_delete() {
                                            if (Page_ClientValidate()) {
                                                return confirm('  are you sure delete   ?');
                                            }
                                            return false;
                                        }
                                    </script>

                                    <asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btn  waves-light btn-info font1" OnClick="btn_clear_Click"
                                        formnovalidate CausesValidation="False" />


                                </div>

                                <asp:Label ID="lbl_VoucharDetails_ID" runat="server" Font-Bold="True" ForeColor="Black"  Visible="False"></asp:Label>
                                <asp:Label ID="lbl_result_msg" runat="server" Text="Date Added succesfully ." Visible="False"></asp:Label>


                            </div>

                        </div>





                        <%--======================================================--%>
                    </div>
                </div>



                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">










                                <div class="table-responsive font1" style="overflow-x: scroll">

                                    <asp:GridView ID="Gridview1"
                                        runat="server" AutoGenerateColumns="False"
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="VoucharDetails_ID"
                                        DataSourceID="sds_FeeVoucharDetails_Payment" Width="100%" GridLines="None" PageSize="30">



                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    &nbsp;
                                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/editt.png"
                                     formnovalidate
                                     OnClick="ImageButton1_Click1" ToolTip="Edit" Width="40px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="VoucharDetails_ID" InsertVisible="False"  Visible="False">

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_VoucharDetails_ID_GV" runat="server" Text='<%# Eval("VoucharDetails_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Student Name E">

                                                <ItemTemplate>
                                                    <asp:Label ID="LabelStudentNameE" runat="server" Text='<%# Eval("StudentNameE") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                



                                            <asp:TemplateField HeaderText=" Date">

                                                <ItemTemplate>
                                                    <asp:Label ID="LabelVoucharDetailsDate" runat="server" Text='<%# Eval("VoucharDetailsDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="Credit  ">

                                                <ItemTemplate>
                                                    <asp:Label ID="LabelCredit" runat="server" Text='<%# Eval("Credit") %>' Font-Bold="true" ForeColor="Green" Font-Size="Large"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                         
                                            <asp:TemplateField HeaderText=" Note">

                                                <ItemTemplate>
                                                    <asp:Label ID="LabelVoucharDetailsNote" runat="server" Text='<%# Eval("VoucharDetailsNote") %>'></asp:Label>
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





    <asp:SqlDataSource ID="sds_FeeVoucharDetails_Payment" runat="server"
        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
        SelectCommand="FeeVoucharDetails_Payment_Select" DeleteCommand="FeeVoucharDetails_Payment_Delete"
        DeleteCommandType="StoredProcedure" InsertCommand="FeeVoucharDetails_Payment_Insert"
        InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure"
        UpdateCommand="FeeVoucharDetails_Payment_Update" UpdateCommandType="StoredProcedure"
        
       OnInserted="sds_FeeVoucharDetails_Payment_Inserted"
       OnUpdated="sds_FeeVoucharDetails_Payment_Updated"
        OnDeleted="sds_FeeVoucharDetails_Payment_Deleted"
        
        
        >
        <DeleteParameters>
            <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="0000" ConvertEmptyStringToNull="true" />
            <asp:ControlParameter ControlID="lbl_VoucharDetails_ID" Name="VoucharDetails_ID" Type="Int32" />
            <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </DeleteParameters>

        <InsertParameters>
            <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="0000" ConvertEmptyStringToNull="true" />
            <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />
            <asp:ControlParameter ControlID="lbl_FeeVoucher_Fkey" Name="FeeVoucher_Fkey" Type="Int32" />
            <asp:Parameter Name="DiscountReason_Fkey" Type="Int32" DefaultValue="0" />
            <asp:Parameter Name="VoucharDetailsType" Type="String"  DefaultValue="PayS"/>
          <asp:ControlParameter ControlID="ddl_Student" Name="StudentDetails_Fkey" Type="Int32" />
            <asp:ControlParameter ControlID="txt_VoucharDetailsDate" DbType="DateTime" Name="VoucharDetailsDate" />
            <asp:ControlParameter ControlID="txt_Credit" Name="Credit" Type="Decimal" />
            <asp:ControlParameter ControlID="txt_VoucharDetailsNote" Name="VoucharDetailsNote" Type="String" />
            <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </InsertParameters>

        
    <SelectParameters>
            <asp:ControlParameter ControlID="lbl_FeeVoucher_Fkey" Name="FeeVoucher_Fkey" Type="Int32" />
            <asp:Parameter Name="VoucharDetailsType" Type="String"  DefaultValue="Pay"/>
    </SelectParameters>


        <UpdateParameters>
            <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="0000" ConvertEmptyStringToNull="true" />
            <asp:ControlParameter ControlID="lbl_VoucharDetails_ID" Name="VoucharDetails_ID" Type="Int32" />
<%--            <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />--%>
<%--            <asp:ControlParameter ControlID="lbl_FeeVoucher_Fkey" Name="FeeVoucher_Fkey" Type="Int32" />--%>
            <asp:Parameter Name="DiscountReason_Fkey" Type="Int32" DefaultValue="0" />
<%--            <asp:Parameter Name="VoucharDetailsType" Type="String" />--%>
<%--          <asp:ControlParameter ControlID="ddl_Student" Name="StudentDetails_Fkey" Type="Int32" />--%>
            <asp:ControlParameter ControlID="txt_VoucharDetailsDate" DbType="DateTime" Name="VoucharDetailsDate" />
            <asp:ControlParameter ControlID="txt_Credit" Name="Credit" Type="Decimal" />
            <asp:ControlParameter ControlID="txt_VoucharDetailsNote" Name="VoucharDetailsNote" Type="String" />
            <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />


        </UpdateParameters>
    </asp:SqlDataSource>













    











    <%--==============================================================================--%>


    <script>

        function KeyPressOrder(fld, e) {

            var strCheck = '0123456789,.';
            var whichCode = e.which ? e.which : e.keyCode;

            if (whichCode == 13 || whichCode == 8 || whichCode == 9) return true;
            key = String.fromCharCode(whichCode);
            if (strCheck.indexOf(key) != -1) { return true; }

            return false;
        }
    </script>




    <script type="text/javascript" language="javascript">


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




    <%--    +++++++++++++++++++++++++++++++++++++++++++++++++++++++--%>
</asp:Content>


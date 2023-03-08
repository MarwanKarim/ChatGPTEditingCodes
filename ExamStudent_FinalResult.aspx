<%@ Page Language="C#" AutoEventWireup="true" Inherits="ExamStudent_FinalResult" Codebehind="ExamStudent_FinalResult.aspx.cs" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
 <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Patient</title>

    

    <style>


        @font-face {
            font-family: 'Conv_Chawder-Reg';
            src: url('fonts/Chawder-Reg.eot');
            src: local('â˜º'), url('fonts/Chawder-Reg.woff') format('woff'), url('fonts/Chawder-Reg.ttf') format('truetype'), url('fonts/Chawder-Reg.svg') format('svg');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'Conv_Chawder-Bold';
            src: url('fonts/Chawder-Bold.eot');
            src: local('â˜º'), url('fonts/Chawder-Bold.woff') format('woff'), url('fonts/Chawder-Bold.ttf') format('truetype'), url('fonts/Chawder-Bold.svg') format('svg');
            font-weight: normal;
            font-style: normal;
        }
        
        </style>

    <style>
           .header_Grid   th
                  {
            padding:5px 0px !important;
        }

        .header_Grid th[scope=col]  {
            background-color: #233242 !important;
            color: #fff !important;
           text-align: center !important;
            font-family: 'Conv_Chawder-Bold';
            font-size:10pt !important;
        }
 

       .row_Grid  {
           
                 height: 40px !important;
          }
 
    
        .row_Grid td {
             text-align: center !important;
            font-family: 'Conv_Chawder-Bold';
            padding:2px 5px;
           font-size:10pt !important;
        }



        .lbl_style {
            font-family: 'Conv_Chawder-Bold';
            font-size: 10pt;
        }

        .font1 {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
        }
                .font_btn {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
        }


             .b_textbox{
            border:1px solid #d3cfcf !important;

            }



        .font_header1 {
            font-family: 'Conv_Chawder-Bold' !important;
                    font-size: 11pt !important;
        }

        .RadComboBox, .RadComboBoxDropDown ul li rcbItem,
        .RadComboBoxDropDown_Default_rtl {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
        }  .RadComboBox input
        {

 height:25px !important;
        }
    </style>


    <link href="css/pageStyle.css" rel="stylesheet" />
    <link href="css/ResultMsg/result.css" rel="stylesheet" />
            <link href="bootstrap/dist/css/style.min.css" rel="stylesheet">
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
        
 
 

    </script>

</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>
    <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-5 align-self-center">
                    <h6 class="page-title" style="width: 350px!important">&nbsp;&nbsp;
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" 
                               
                                 Text="Final Result"></asp:Label>
 /
                                       
                        <asp:Label ID="lbl_Student_Name_Exam" runat="server" Text="0"  CssClass="font_header1"  ForeColor="Red"></asp:Label>
        <asp:Label ID="lbl_Student_ID_Exam" runat="server" Text="0"   Visible="false"></asp:Label>
                             <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000"   Visible="False" ></asp:Label>
                         <asp:Label ID="lbl_AcademicYear_ID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"   Visible="False" Text="0"></asp:Label>

                      <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>
                    </h6>
                </div>

            </div>
        </div>


<%--           <asp:UpdatePanel runat="server" ID="Upnl" >
        <ContentTemplate>--%>

        <div class="container-fluid">
            <!-- ============================================================== -->


            <!-- Start Page Content -->

            <div class="col-12">
                <div class="card">
                    <div class="card-body">
               



                        <div class="form-row">
                            <div class="col-md-3 mb-3">
                                <label for="validationCustom01">
                                    &nbsp; &nbsp;
                          <asp:Label ID="lbl_name_str" runat="server" Text="Status" CssClass="lbl_style"   ForeColor="Red"></asp:Label>
                                </label>
                          

                                <asp:DropDownList ID="ddl_Status_FinalResult" runat="server" class="form-control font1 b_textbox" ForeColor="Red">
                                    <asp:ListItem Value ="1" Text="Pass" />
                                      <asp:ListItem Value ="0" Text="Fail" />

                                </asp:DropDownList>

     

                            </div>


                                    <div class="col-md-2 mb-3">
                                <label for="validationCustom01">
                                    &nbsp; &nbsp;
                          <asp:Label ID="Label2" runat="server" Text="Important notes about this student" CssClass="lbl_style"></asp:Label>
                                </label>
                                <asp:TextBox ID="txt_NoteCustom" runat="server" class="form-control font1 b_textbox"    autoComplete="off"
                                    CausesValidation="True"     ValidationGroup="grpRegistration" MaxLength="4000"></asp:TextBox>

            

                            </div>
                             



  
                        </div>

               
        

             <div class="form-row"> 

 


     
                         



             <div class="col-md-4 mb-3"  style="display:none;">
                                <label for="validationCustom01">
                                    &nbsp; &nbsp;
                          <asp:Label ID="Label7" runat="server" Text="General Notes" CssClass="lbl_style"></asp:Label>
                                </label>
                                <asp:TextBox ID="txt_NoteGlobal" runat="server" class="form-control font1 b_textbox"   autoComplete="off"
                                    CausesValidation="True"   MaxLength="4000" ValidationGroup="grpRegistration"></asp:TextBox>
                    </div>
 </div>

                              
                           

                        <div class="col-lg-12 col-xlg-6">
                            <div class="card">
                                <div class="card-body">

                                    <div class="button-group">

                            



      <asp:LinkButton ID="Lnk_Insert" runat="server" class="btn btn-success font_btn"  ValidationGroup="grpRegistration" CausesValidation="True"
    OnClick="btn_insert_Click" ><i class="fa fa-check"></i> Save  </asp:LinkButton>


                <asp:LinkButton ID="Lnk_Update" runat="server" class="btn btn-success font_btn" 
    ValidationGroup="grpRegistration" OnClick="btn_Update_Click"   CausesValidation="True"
    Visible="false"   OnClientClick="return Validate();" ><i class="fa fa-check"></i> Save</asp:LinkButton>


<script type="text/javascript">
            function Validate() {
                if (Page_ClientValidate()) {
                    return confirm(' Are you sure to save?');
                }
                return false;
            }
        </script>

                                         <asp:LinkButton ID="Lnk_Delete" runat="server"
                    CssClass="btn  btn-danger  font_btn" OnClick="btn_delete_Click" 
                    CausesValidation="true"   OnClientClick="return Validate_delete();"   Visible="False">Delete</asp:LinkButton>


                                  

                         <script type="text/javascript">
                                                    function Validate_delete() {
                                                        if (Page_ClientValidate()) {
                                                            return confirm('  are you sure delete   ?');
                                                        }
                                                        return false;
                                                    }
                                              </script> 
 
                                    <asp:LinkButton ID="Lnk_clear" runat="server" 
                    CssClass="btn  btn-info font_btn " OnClick="btn_clear_Click"  ValidationGroup="clear"
                    CausesValidation="false"        >Clear</asp:LinkButton>


 

                                    </div>

                                </div>
                           <asp:Label ID="lbl_St_FinalResult_ID" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>

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
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="St_FinalResult_ID"
                                      Width="500px" GridLines="None" PageSize="30"   DataSourceID="sds_ExamStudent_FinalResult">



                                        <Columns>   
                                    
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    &nbsp;
                  

   <asp:LinkButton ID="lnk_Edit" runat="server" OnClick="Lnk_Edit_Click" ToolTip="Edit" 
                   formnovalidate ><i style="font-size:16px !important; color:#000"  class="m-r-10 mdi mdi-grease-pencil"></i></asp:LinkButton>
                                                   



                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField  InsertVisible="False"   Visible="False">

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_St_FinalResult_ID_GV" runat="server" Text='<%# Eval("St_FinalResult_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Status"  >

                                                <ItemTemplate>
                                                    <asp:Label ID="LabeStatus_FinalResult" runat="server" Text='<%# Eval("Status_FinalResult") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                     
                          


                                                   <asp:TemplateField HeaderText="    Important notes about this student"  >

                                                <ItemTemplate>
                                                    <asp:Label ID="Labe2232l2" runat="server" Text='<%# Eval("NoteCustom" ) %>'  Width="300px"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                  <asp:TemplateField HeaderText="      General Notes"  Visible="false" >

                                                <ItemTemplate>
                                                    <asp:Label ID="LabeNoteGlobal" runat="server" Text='<%# Eval("NoteGlobal") %>'></asp:Label>
                                            
                                                </ItemTemplate>
                                            </asp:TemplateField>



                                     
                                             


                                            
 
                                       
                                        </Columns>


                                    <HeaderStyle    CssClass="header_Grid"/>
                        <PagerStyle CssClass="pagination-ys" />
                        <RowStyle   CssClass="row_Grid"   />
                        <AlternatingRowStyle BackColor="#eeeeee"   /> 
                                    </asp:GridView>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
        </div>
 

     <%--             
                  </ContentTemplate>
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



 

     <script src="bootstrap/assets/libs/jquery/dist/jquery.min.js"></script> 
    <!-- Bootstrap tether Core JavaScript -->

      <script src="bootstrap/assets/libs/popper.js/dist/umd/popper.min.js"></script> 
      <script src="bootstrap/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->



<%--   <script src="bootstrap/dist/js/app.min.js"></script>
  <%--<script src="bootstrap/dist/js/app.init.js"></script>--%>

    <script>

        $(function () {
            "use strict";
            $("#main-wrapper").AdminSettings({
                Theme: false, // this can be true or false ( true means dark and false means light ),
                Layout: 'vertical',
                LogoBg: 'skin5', // You can change the Value to be skin1/skin2/skin3/skin4/skin5/skin6 
                NavbarBg: 'skin6', // You can change the Value to be skin1/skin2/skin3/skin4/skin5/skin6
                SidebarType: 'full', // You can change it full / mini-sidebar / iconbar / overlay
                SidebarColor: 'skin5', // You can change the Value to be skin1/skin2/skin3/skin4/skin5/skin6
                SidebarPosition: true, // it can be true / false ( true means Fixed and false means absolute )
                HeaderPosition: true, // it can be true / false ( true means Fixed and false means absolute )
                BoxedLayout: false, // it can be true / false ( true means Boxed and false means Fluid ) 
            });
        });


    </script>  
    <script src="bootstrap/dist/js/app-style-switcher.js"></script>--%>
    <!-- ============================================================== -->




    <!-- slimscrollbar scrollbar JavaScript -->
     <script src="bootstrap/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
        <script src="bootstrap/assets/extra-libs/sparkline/sparkline.js"></script> 
    <!--Wave Effects -->
        <script src="bootstrap/dist/js/waves.js"></script> 
    <!--Menu sidebar -->
       <script src="bootstrap/dist/js/sidebarmenu.js"></script> 
    <!--Custom JavaScript --> 


       <script src="bootstrap/dist/js/custom.min.js"></script>

           <script src="bootstrap/assets/libs/toastr/build/toastr.min.js"></script>


        <asp:SqlDataSource ID="sds_ExamStudent_FinalResult" runat="server"
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="ExamStudent_FinalResult_Select" DeleteCommand="ExamStudent_FinalResult_Delete" 
                    DeleteCommandType="StoredProcedure" InsertCommand="ExamStudent_FinalResult_Insert" 
                    InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure"
                    UpdateCommand="ExamStudent_FinalResult_Update" UpdateCommandType="StoredProcedure"
                    OnDeleted="sds_ExamStudent_FinalResult_Deleted"
                    OnInserted="sds_ExamStudent_FinalResult_Inserted"
                    OnUpdated="sds_ExamStudent_FinalResult_Updated"    >
            <DeleteParameters>
            <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000000"  ConvertEmptyStringToNull="true" />
           <asp:ControlParameter ControlID="lbl_St_FinalResult_ID" Name="St_FinalResult_ID" Type="Int32" />
<asp:ControlParameter ControlID="lbl_UserID" Name="User_Insert"   Type="Int32" /> 
            </DeleteParameters>
<InsertParameters>
<asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000000"  ConvertEmptyStringToNull="true" />
           <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />
           <asp:ControlParameter ControlID="lbl_Student_ID_Exam" Name="Student_Fkey" Type="Int32" />
           <asp:ControlParameter ControlID="ddl_Status_FinalResult" Name="Status_FinalResult" PropertyName="selectedvalue"  Type="Byte" />
           <asp:ControlParameter ControlID="txt_NoteCustom" Name="NoteCustom" Type="String" />
           <asp:ControlParameter ControlID="txt_NoteGlobal" Name="NoteGlobal" Type="String" />
           <asp:ControlParameter ControlID="lbl_UserID"  Name="User_Insert" Type="Int32" />
</InsertParameters>

            <SelectParameters>
           <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" DefaultValue="0"/>
           <asp:ControlParameter ControlID="lbl_Student_ID_Exam" Name="Student_Fkey" Type="Int32" DefaultValue="0" />
            </SelectParameters>

    <UpdateParameters>
<asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000000"  ConvertEmptyStringToNull="true" />
           <asp:ControlParameter ControlID="lbl_St_FinalResult_ID" Name="St_FinalResult_ID" Type="Int32" />
           <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />
           <asp:ControlParameter ControlID="lbl_Student_ID_Exam" Name="Student_Fkey" Type="Int32" />
           <asp:ControlParameter ControlID="ddl_Status_FinalResult" Name="Status_FinalResult" PropertyName="selectedvalue"  Type="Byte" />
           <asp:ControlParameter ControlID="txt_NoteCustom" Name="NoteCustom" Type="String" />
           <asp:ControlParameter ControlID="txt_NoteGlobal" Name="NoteGlobal" Type="String" />
           <asp:ControlParameter ControlID="lbl_UserID"  Name="User_Insert" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>


 


 

 
 

                           <%--==============================================================================================--%>


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


    <style>

        .RadComboBox .rcbInner {
            padding: 6px 2em 6px 10px;
            border-width: 1px;
            border-style: solid;
            background-repeat: repeat-x;
            background-position: 0 0;
            display: block;
            position: relative;
        }

        .racTokenList   {
padding: 5px  0px !important; 
     border-width: 1px !important;
            border-style: solid !important;
       font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
 
        }

     
    @media \0screen {
        .rcbAutoWidth .rcbList {
            min-width: 300px;
        }
    }
 
    </style>


                           <%--==============================================================================================--%>

    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="ExamMarkManagement" Codebehind="ExamMarkManagement.aspx.cs" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
 
<%@ Register Src="~/UserControls/ExamMarkManagementSub.ascx" TagPrefix="uc1" TagName="ExamMarkManagementSub" %>
<%@ Register Src="~/UserControls/ExamMarkManagementSubApprove.ascx" TagPrefix="uc1" TagName="ExamMarkManagementSubApprove" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


            <script src="js/jquery.min_Nested_gridview.js"></script>
    <script type="text/javascript">
        $("[src*=Plus-128]").live("click", function () {
            $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
            $(this).attr("src", "wene/Minus.png");
        });
        $("[src*=Minus]").live("click", function () {
            $(this).attr("src", "wene/Plus-128.png");
            $(this).closest("tr").next().remove();
        });
</script>
 


    <style>
                  .header_Grid   th
                  {
            padding:5px 0px !important;
        }

        .header_Grid th[scope=col]  {
            background-color: #233242 !important;
            color: #fff !important;
           text-align: left !important;
            font-family: 'Conv_Chawder-Bold';
            font-size:10pt !important;
        }
 

       .row_Grid  {
           
                 height: 40px !important;
          }
 
    
        .row_Grid td {
             text-align: left !important;
            font-family: 'Conv_Chawder-Bold';
            padding:2px 5px;
           font-size:10pt !important;
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

        .font_header1 {
            font-family: 'Conv_Chawder-Bold' !important;
        }

        .RadComboBox, .RadComboBoxDropDown ul li rcbItem,
        .RadComboBoxDropDown_Default_rtl {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
        }

              .Error {
           border: 1px solid red !important;
        }

        
    </style>


    <link href="css/pageStyle.css" rel="stylesheet" />
    <link href="css/ResultMsg/result.css" rel="stylesheet" />
                <link href="css/SwitchXom.css" rel="stylesheet" />

        
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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text=" Mark | Management"></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" style="display:none !important;"></asp:Label>

 <asp:Label ID="lbl_AcademicYear_ID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"   Visible="False" Text="0"></asp:Label>

                      <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>

                    </h6>
                </div>

            </div>
        </div>

        <br />

           <asp:UpdatePanel runat="server" ID="Upnl" >
        <ContentTemplate>

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
  <asp:Label ID="Label9" runat="server" Text="Board" CssClass="lbl_style"></asp:Label>
</label>  
                                 
     <asp:DropDownList ID="ddl_EducationalBoard" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_EducationalBoard"  DataTextField="EducationalBoardName"  DataValueField="EducationalBoard_ID"
         AppendDataBoundItems="True"   AutoPostBack="true"  OnSelectedIndexChanged="ddl_EducationalBoard_SelectedIndexChanged"  >
                           <asp:ListItem Text="Choose" Value="0"  />
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_EducationalBoard" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="Setting_EducationalBoard_Select_ddl" SelectCommandType="StoredProcedure">
    <SelectParameters>
              <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_EducationalBoard" runat="server" ID="RequiredFieldValidator9" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />   
 
  </div> 


            <%--====================================================================--%>

                      <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Class " CssClass="lbl_style"></asp:Label>
</label>

            
     <asp:DropDownList ID="ddl_Class" runat="server" class="form-control font1 b_textbox"
       
         OnSelectedIndexChanged="ddl_Class_SelectedIndexChanged" ValidationGroup="grpRegistration" 
         AppendDataBoundItems="True" AutoPostBack="True">

                           <asp:ListItem Text="ALL" Value="0"  />
                      
                     
                   </asp:DropDownList>


<asp:SqlDataSource ID="sds_Class_ddl" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT [Class_ID], [ClassName] FROM [tblSetting_Class] where EducationalBoard_Fkey=@EducationalBoard_Fkey">
    <SelectParameters>
     <asp:ControlParameter ControlID="ddl_EducationalBoard"  Name="EducationalBoard_Fkey" DefaultValue="0" />
    </SelectParameters>

</asp:SqlDataSource>
<%--         <asp:RequiredFieldValidator ControlToValidate="ddl_Class" runat="server" ID="RequiredFieldValidator1" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                             --%>

                   </div> 

            <%--====================================================================--%>
                <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label4" runat="server" Text=" Section" CssClass="lbl_style"></asp:Label>
</label>

      <asp:DropDownList ID="ddl_Section" runat="server" class="form-control font1 b_textbox"

         ValidationGroup="grpRegistration"
         AppendDataBoundItems="True">

                           <asp:ListItem Text="ALL" Value="0"  />
                      
                     
                   </asp:DropDownList>

        <asp:SqlDataSource ID="sds_Section" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                                    SelectCommand="Setting_SectionAcademicYear_Select_ddl" SelectCommandType="StoredProcedure">
                                    <SelectParameters>

                                        <asp:ControlParameter ControlID="ddl_Class" Name="Class_Fkey" DefaultValue="0" />
 <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />

                                    </SelectParameters>

</asp:SqlDataSource>
 <%--        <asp:RequiredFieldValidator ControlToValidate="ddl_Section" runat="server" ID="RequiredFieldValidator4" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                             --%>

                   </div>

 <%--====================================================================--%>



                      <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label2" runat="server" Text="Exam Group " CssClass="lbl_style"></asp:Label>
</label>

            
     <asp:DropDownList ID="ddl_ExamMasterSub" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_ExamMasterSub_ddl"  DataTextField="ExamMasterSubName"  DataValueField="ExamMasterSub_ID"
       AppendDataBoundItems="True"  ValidationGroup="grpRegistration"  >

                           <asp:ListItem Text="ALL" Value="0"  />
                      
                     
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_ExamMasterSub_ddl" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="ExamMasterSub_ddl" SelectCommandType="StoredProcedure">
 </asp:SqlDataSource>
<%--         <asp:RequiredFieldValidator ControlToValidate="ddl_ExamMasterSub" runat="server" ID="RequiredFieldValidator5" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                             --%>

                   </div> 
            <%--====================================================================--%>







                 <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label3" runat="server" Text=" Subject  " CssClass="lbl_style"></asp:Label>
</label>

            <%--DataSourceID="sds_Subjects"  DataTextField="SubjectsName"  DataValueField="Subjects_ID"--%>

     <asp:DropDownList ID="ddl_Subjects" runat="server" class="form-control font1 b_textbox"
         ValidationGroup="grpRegistration"
         AppendDataBoundItems="True">

                           <asp:ListItem Text="ALL" Value="0"  />
                      
                     
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_Subjects" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="Setting_Subjects_by_acadmicYear_ddl" SelectCommandType="StoredProcedure">
    <SelectParameters>

        <asp:ControlParameter ControlID="ddl_Class"   Name="Class_Fkey" DefaultValue="0" />
     <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />

    </SelectParameters>

</asp:SqlDataSource>
    <%--     <asp:RequiredFieldValidator ControlToValidate="ddl_Subjects" runat="server" ID="RequiredFieldValidator3" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />--%>

                             

                   </div> 
    
                      
  
          
  
  
                      
  
 <%--====================================================================--%>                          

        <div class="col-md-2">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label16" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 

                               
                          <asp:LinkButton ID="Lnk_Search" runat="server" class="btn btn-dark  waves-effect waves-light" 
                              OnClick="Lnk_Search_Click" ValidationGroup="grpRegistration">
                    <i class="mdi mdi-search-web"></i>Search</asp:LinkButton> 

 
                           
    
 
                             
                                       
                
                 
                
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










                                <div class="table-responsive font1" style="overflow-x: scroll">
                                     














                                    <asp:GridView ID="Gridview1"
                                        runat="server" AutoGenerateColumns="False"
                                   CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="MarkApprove_ID"
                                         Width="100%" GridLines="None" PageSize="1000">



                                        <Columns>


          <asp:TemplateField>
            <ItemTemplate>
                <img alt = "" style="cursor: pointer" src="wene/Plus-128.png" width="37px" height="37px" />
            
                          <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                     <br />
                        

                <uc1:ExamMarkManagementSub runat="server" id="ExamMarkManagementSub"  MarkApprove_ID='<%# Eval("MarkApprove_ID") %>' />
   <br />

   <uc1:ExamMarkManagementSubApprove runat="server" ID="ExamMarkManagementSubApprove"  MarkApprove_ID='<%# Eval("MarkApprove_ID") %>' />




     </asp:Panel>
                       </ItemTemplate>
                                            </asp:TemplateField>





                              <asp:TemplateField>
    <ItemTemplate>
        <%# Container.DataItemIndex + 1 %>
    </ItemTemplate>
        <HeaderStyle Width="50px" />
</asp:TemplateField>

 


                                            <asp:TemplateField HeaderText="MarkApprove_ID"  Visible="false"  >

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_MarkApprove_ID_GV" runat="server" Text='<%# Eval("MarkApprove_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                    
                                            
 
                                                 <asp:TemplateField HeaderText="Class - Section-Subject"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelClassName" runat="server" Text='<%# Eval("ClassName") %>'></asp:Label>
                                                    -
                                            <asp:Label ID="LabelSectionName" runat="server" Text='<%# Eval("SectionName") %>'></asp:Label>  
                                                 -   <asp:Label ID="LabelSubjectsName" runat="server" Text='<%# Eval("SubjectsName") %>'></asp:Label>


                                                </ItemTemplate>
                                            </asp:TemplateField>

                                              

                                          <asp:TemplateField HeaderText=" Exam  "   >
                                              
                                                <ItemTemplate>


              <asp:Label ID="LabelExamName" runat="server" Text='<%# Eval("ExamName") %>'></asp:Label>
                                                    -
                                            <asp:Label ID="LabelExamMasterSubName" runat="server" Text='<%# Eval("ExamMasterSubName") %>'></asp:Label>  
                                                
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                         
 
  

                                            
                                          <asp:TemplateField  HeaderText="Check" >
                             <ItemTemplate>


                                   <label class="switch11" style="margin-top:8px  !important;">
                                                        <asp:CheckBox ID="chkbox_oddSystem_invoice" runat="server"   Text=""  Checked='<%# Eval("Status1") %>'
                                                            OnCheckedChanged="chkbox_oddSystem_invoice_CheckedChanged" AutoPostBack="true"  />



                                                        <div class="slider22 round33">
                                                            <span class="on">Yes</span>
                                                            <span class="off">No</span>

                                                        </div>


                                                    </label> 
                                            </ItemTemplate>
                         </asp:TemplateField>
 









 <asp:TemplateField  HeaderText=" Teacher & Date Inserted " >
                             <ItemTemplate>
<asp:Label ID="LabelStaffName" runat="server" Text='<%# Eval("StaffName") %>' ForeColor="Red"  Font-Size="Small" ></asp:Label>  
                                 <br />
<asp:Label ID="Labeldate_insert" runat="server" Text='<%# Eval("date_insert","{0:yyyy-MM-dd hh:MM tt}") %>' ForeColor="Red"  Font-Size="Small" ></asp:Label>  

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
 


<%--       =============================== ama bo update ============================ --%>
             
                  
                  </ContentTemplate>

 
    </asp:UpdatePanel>

 
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





    <asp:SqlDataSource ID="sds_ExamMarkManagement" runat="server"
        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
        SelectCommand="ExamMarkManagement_Select"  
        SelectCommandType="StoredProcedure"

        InsertCommand="ExamMarkManagementApprove_Insert"
        InsertCommandType="StoredProcedure"

        OnInserted="sds_ExamMarkManagement_Inserted"
 
        >

 

               
            <SelectParameters>
         <asp:ControlParameter  ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />

 <asp:ControlParameter  ControlID="ddl_Class" Name="Class_Fkey" Type="Int32" />

  <asp:ControlParameter  ControlID="ddl_ExamMasterSub" Name="ExamMasterSub_Fkey" Type="Int32" />

 <asp:ControlParameter  ControlID="ddl_Section" Name="Section_Fkey" Type="String" />
                 <asp:ControlParameter  ControlID="ddl_Subjects" Name="Subjects_Fkey" Type="String" />

                

 
            </SelectParameters>

               
        <InsertParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="0000" ConvertEmptyStringToNull="true" />
        <asp:Parameter Name="MarkApprove_ID" Type="Int32" />
   
 
             <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </InsertParameters>
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




<%--    +++++++++++++++++++++++++++++++++++++++++++++++++++++++--%>    
</asp:Content>


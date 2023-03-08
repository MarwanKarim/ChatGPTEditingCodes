<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" Inherits="ExamMarkTeacher" Codebehind="ExamMarkTeacher.aspx.cs" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">





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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Exam Mark"></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" style="display:none !important;"></asp:Label>

 <asp:Label ID="lbl_AcademicYear_ID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"   Visible="False" Text="0"></asp:Label>

                      <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>

                    </h6>
                </div>

            </div>
        </div>

        <br />

<%--           <asp:UpdatePanel runat="server" ID="Upnl" >
        <ContentTemplate>--%>

        <div class="container-fluid">
            <!-- ============================================================== -->



            <!-- Start Page Content -->

            <div class="col-12">
                <div class="card">
                    <div class="card-body">
             


                        <div class="form-row">

         <%--                       <div class="col-md-3 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label6" runat="server" Text="   Class  " CssClass="lbl_style"></asp:Label>
</label>

            
     <asp:DropDownList ID="ddl_Class" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_Class_ddl"  DataTextField="ClassName"  DataValueField="Class_ID"
       AppendDataBoundItems="True"    AutoPostBack="true" OnSelectedIndexChanged="ddl_Class_SelectedIndexChanged"   >
 <asp:ListItem Text="Choose" Value="0"  />
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_Class_ddl" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="Setting_SubjectsAcademicYear_Class_User_ddl" SelectCommandType="StoredProcedure">
    <SelectParameters>
 <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
   </SelectParameters>
      

</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_Class" runat="server" ID="RequiredFieldValidator22" 
 ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div>--%>

<%-- <div class="col-md-2 mb-3" >
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
 
  </div> --%>


            <%--====================================================================--%>

<%--<div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Class " CssClass="lbl_style"></asp:Label>
</label>

            
     <asp:DropDownList ID="ddl_Class" runat="server" class="form-control font1 b_textbox"
       
         OnSelectedIndexChanged="ddl_Class_SelectedIndexChanged" ValidationGroup="grpRegistration" 
         AppendDataBoundItems="True" AutoPostBack="True">

                           <asp:ListItem Text="Choose" Value="0"  />
                      
                     
                   </asp:DropDownList>


<asp:SqlDataSource ID="sds_Class_ddl" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT [Class_ID], [ClassName] FROM [tblSetting_Class] where EducationalBoard_Fkey=@EducationalBoard_Fkey">
    <SelectParameters>
     <asp:ControlParameter ControlID="ddl_EducationalBoard"  Name="EducationalBoard_Fkey" DefaultValue="0" />
    </SelectParameters>

</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_Class" runat="server" ID="RequiredFieldValidator1" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div>--%> 

            <%--====================================================================--%>
                <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label4" runat="server" Text=" Section" CssClass="lbl_style"></asp:Label>
</label>

            <%--        --%>
     <asp:DropDownList ID="ddl_Section" runat="server" class="form-control font1 b_textbox"
 DataSourceID="sds_Section"  DataTextField="SectionName"  DataValueField="Section_ID"
         ValidationGroup="grpRegistration"
         AppendDataBoundItems="True" AutoPostBack="true" OnSelectedIndexChanged="ddl_Section_SelectedIndexChanged">

                           <asp:ListItem Text="Choose" Value="0"  />
                      
                     
                   </asp:DropDownList>

        <asp:SqlDataSource ID="sds_Section" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                                    SelectCommand="ExamMark_Section_Teacher_Select_ddl" SelectCommandType="StoredProcedure">
                                    <SelectParameters>

                                        <asp:ControlParameter ControlID="lbl_UserID" Name="User_Fkey" DefaultValue="0" />
 <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />

                                    </SelectParameters>

</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_Section" runat="server" ID="RequiredFieldValidator4" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

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

                           <asp:ListItem Text="Choose" Value="0"  />
                      
                     
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_ExamMasterSub_ddl" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="ExamMasterSubMark_Select_ddl_Teacher" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:ControlParameter ControlID="ddl_Section" Name="Section_ID" />
    </SelectParameters>
 </asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_ExamMasterSub" runat="server" ID="RequiredFieldValidator5" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

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

                           <asp:ListItem Text="Choose" Value="0"  />
                      
                     
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_Subjects" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="Exam_Mark_Subjects_ddl" SelectCommandType="StoredProcedure">
    <SelectParameters>

        <asp:ControlParameter ControlID="ddl_Section"   Name="Section_ID" DefaultValue="0" />
     <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />

             <asp:ControlParameter ControlID="lbl_UserID" Name="User_Fkey" Type="Int32" />


        
    </SelectParameters>

</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_Subjects" runat="server" ID="RequiredFieldValidator3" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

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

 
                           
               <script type="text/javascript">
                                                    function Validate() {
                                                        if (Page_ClientValidate()) {
                                                            return confirm(' Are you sure to save?');
                                                        }
                                                        return false;
                                                    }
                                              </script>

 
       
                
                
                 </div>

   <asp:Label ID="lbl_ExamSchedule_ID" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>
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
                                   CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="Mark_ID"
                                         Width="100%" GridLines="None" PageSize="1000">



                                        <Columns>
                              <asp:TemplateField>
    <ItemTemplate>
        <%# Container.DataItemIndex + 1 %>
    </ItemTemplate>
        <HeaderStyle Width="50px" />
</asp:TemplateField>













                                            <asp:TemplateField HeaderText="Mark_ID"  Visible="false"  >

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_Mark_ID_GV" runat="server" Text='<%# Eval("Mark_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                             <asp:TemplateField HeaderText="Student Name"   >
                                              
                                                <ItemTemplate>

                                                    
 <asp:Label ID="lbl_Student_ID_GV" runat="server" Text='<%# Eval("Student_ID") %>' Visible="false"></asp:Label>


                                                    <asp:Label ID="LabelStudentNameE" runat="server" Text='<%# Eval("StudentNameE") %>'></asp:Label>
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
                                         
 

         <asp:TemplateField HeaderText=" Min Mark  "   >
                                              
                                                <ItemTemplate>


              <asp:Label ID="lbl_MinMark" runat="server" Text='<%# Eval("MinMark") %>'></asp:Label>
                                         
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                         

                                              <asp:TemplateField HeaderText=" Max Mark  "   >
                                              
                                                <ItemTemplate>


              <asp:Label ID="lbl_MaxMark" runat="server" Text='<%# Eval("MaxMark") %>'></asp:Label>
                                     
                                                
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                         
 


                                            <asp:TemplateField   >

                                                <ItemTemplate>
                                                   
                                                    <img src='images/<%# Eval("Stauts_img1") %>'   width="20px" />

                                                </ItemTemplate>
                                            </asp:TemplateField>











                                            
                                          <asp:TemplateField HeaderText=" Mark "   >
                                              
                                                <ItemTemplate>
                                                     <asp:TextBox ID="txt_MarkNo" runat="server" Text='<%# Eval("MarkNo") %>' MaxLength="3"
                                                         class="form-control font1 b_textbox"   Width="100px"   onfocus = "this.select();"  
                   onkeypress="return(KeyPressOrder(this,event))"  OnTextChanged="txt_MarkNo_TextChanged"  autocomplete="off" ></asp:TextBox>


                                                </ItemTemplate>
                                            </asp:TemplateField>
 
                                                      

      
                                            <asp:TemplateField HeaderText="" >
                                                <ItemTemplate>
    
                                           
 


             <asp:LinkButton ID="lnk_Delete" runat="server"  
                                           OnClientClick="return confirm('Are you sure you want to delete this record?');" TabIndex="-1"
ToolTip="Delete"  CommandName="Delete"><i  style="font-size:18px !important; color:red"  class="m-r-10 mdi mdi-delete-circle" > </i> </asp:LinkButton>



                                                </ItemTemplate>
                                            </asp:TemplateField>

 

                                        </Columns>

                           <HeaderStyle    CssClass="header_Grid"/>
                        <PagerStyle CssClass="pagination-ys" />
                        <RowStyle   CssClass="row_Grid"   />
                        <AlternatingRowStyle BackColor="#eeeeee"   /> 
                                    </asp:GridView>


                                </div>







  
 <%--====================================================================--%>                          

        <div class="col-md-2">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label5" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 

                            

                          <asp:LinkButton ID="Lnk_Update" runat="server" class="btn btn-success" 
    ValidationGroup="grpRegistration" OnClick="Lnk_Update_Click"   CausesValidation="True"
    OnClientClick="return Validate();" ><i class="fa fa-check"></i> Save</asp:LinkButton>
 
                           
               <script type="text/javascript">
                                                    function Validate() {
                                                        if (Page_ClientValidate()) {
                                                            return confirm(' Are you sure to save?');
                                                        }
                                                        return false;
                                                    }
                                              </script>

 
                             
                                       
                
                 
                
                 </div>

 

                 </div>




                            </div>
                        </div>
                    </div>
                </div>



            </div>
        </div>
 


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
                  
      <%--            </ContentTemplate>

 
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





    <asp:SqlDataSource ID="sds_ExamMark" runat="server"
        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
        SelectCommand="ExamMark_Select" DeleteCommand="ExamMark_Delete"
        DeleteCommandType="StoredProcedure" InsertCommand="ExamMark_Insert_Update"
        InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure"
        UpdateCommand="ExamMark_Update" UpdateCommandType="StoredProcedure"
      
        OnInserted="sds_ExamMark_Inserted"
        OnUpdated="sds_ExamMark_Updated"
        OnDeleted="sds_ExamMark_Deleted"
        >


        <DeleteParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="0000" ConvertEmptyStringToNull="true" />
        <asp:Parameter Name="Mark_ID" Type="Int32" />
             <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </DeleteParameters>
        <InsertParameters>

<asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="0000" ConvertEmptyStringToNull="true" />
<asp:ControlParameter  ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />

<asp:Parameter Name="Mark_ID" Type="Int32" />
<asp:Parameter Name="MarkNo" Type="Decimal" />


<asp:Parameter Name="Student_ID" Type="Int32" />

            


<asp:ControlParameter  ControlID="ddl_ExamMasterSub" Name="ExamMasterSub_Fkey" Type="Int32" />
<asp:ControlParameter  ControlID="ddl_Subjects" Name="Subjects_Fkey" Type="String" />
<asp:ControlParameter  ControlID="ddl_Section" Name="Section_Fkey" Type="String" />
<asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />


        </InsertParameters>

               
            <SelectParameters>
         <asp:ControlParameter  ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />

<%-- <asp:ControlParameter  ControlID="ddl_Class" Name="Class_Fkey" Type="Int32" />--%>

  <asp:ControlParameter  ControlID="ddl_ExamMasterSub" Name="ExamMasterSub_Fkey" Type="Int32" />

 <asp:ControlParameter  ControlID="ddl_Section" Name="Section_Fkey" Type="String" />
      <asp:ControlParameter  ControlID="ddl_Subjects" Name="Subjects_Fkey" Type="String" />

                

 
            </SelectParameters>

               
        <UpdateParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="0000" ConvertEmptyStringToNull="true" />
        <asp:Parameter Name="Mark_ID" Type="Int32" />
<%--         <asp:ControlParameter  ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />--%>
        <asp:Parameter Name="MarkNo" Type="Decimal" />
      <%--<asp:Parameter Name="Subjects_Fkey" Type="Int32" />
            <asp:Parameter Name="Section_Fkey" Type="Int32" />
            <asp:Parameter Name="Student_Fkey" Type="Int32" />--%>
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


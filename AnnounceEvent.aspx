<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="AnnounceEvent" Codebehind="AnnounceEvent.aspx.cs" %>

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

              .RadComboBox input
        {

 height:24px !important;
        }

    </style>



    <link href="css/pageStyle.css" rel="stylesheet" />
    <link href="css/ResultMsg/result.css" rel="stylesheet" />
                
    
     <link href="bootstrap/assets/libs/toastr/build/toastr.min.css" rel="stylesheet" />
    





 

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


     <link href="bootstrap/assets/libs/daterangepicker/daterangepicker.css" rel="stylesheet" />



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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text=" Event"></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000"  Visible="False"></asp:Label>
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
                            
          





                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label6" runat="server" Text=" Educational Board" ForeColor="Black" CssClass="lbl_style"></asp:Label><label class="text-danger m-0">*</label>
</label>

 

      <telerik:RadComboBox RenderMode="Lightweight" ID="ddl_EducationalBoard" runat="server" 
                     DataSourceID="sds_EducationalBoard" DataTextField="EducationalBoardName"
                    DataValueField="EducationalBoard_ID"     class="form-control b_textbox"     Height="200px"
                    CheckBoxes="true" EnableCheckAllItemsCheckBox="true"  Width="100%" Localization-CheckAllString="All" EmptyMessage="Choose"
                             Localization-AllItemsCheckedString="All School" Localization-ItemsCheckedString=" checked">
                </telerik:RadComboBox>



<asp:SqlDataSource ID="sds_EducationalBoard" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT        EducationalBoard_ID, EducationalBoardName
FROM            tblSetting_EducationalBoard">
 

</asp:SqlDataSource>
         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="ddl_EducationalBoard" runat="server" ID="RequiredFieldValidator4" 
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" />

                  <asp:Label ID="lbl_EducationalBoard_ID_multi" runat="server" Text="0"       Visible="false"  ></asp:Label>
     

                   </div> 
     
                              <%--====================================================================--%>
                   






                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label7" runat="server" Text="Department" ForeColor="Black" CssClass="lbl_style"></asp:Label><label class="text-danger m-0">*</label>
</label>

 

      <telerik:RadComboBox RenderMode="Lightweight" ID="ddl_Department" runat="server"   EmptyMessage="Choose"
                     DataSourceID="sds_Department" DataTextField="DepartmentName"
                    DataValueField="Department_ID"     class="form-control b_textbox"  Height="200px"
                    CheckBoxes="true" EnableCheckAllItemsCheckBox="true"  Width="100%" Localization-CheckAllString="All"
                             Localization-AllItemsCheckedString="All Department" Localization-ItemsCheckedString=" checked">
                </telerik:RadComboBox>

<%-- where TypeDepartment=2--%>

<asp:SqlDataSource ID="sds_Department" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT        Department_ID, DepartmentName
FROM            tblSetting_Department ">
 

</asp:SqlDataSource>
         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="ddl_EducationalBoard" runat="server" ID="RequiredFieldValidator5" 
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" />

                  <asp:Label ID="lbl_Department_ID_multi" runat="server" Text="0"     Visible="false"  ></asp:Label>
     

                   </div> 
     
                              <%--====================================================================--%>
                   













                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label2" runat="server" Text=" Title  " ForeColor="Black" CssClass="lbl_style"></asp:Label><label class="text-danger m-0">*</label>
</label>

            
 <asp:TextBox ID="txt_ETitle" runat="server" class="form-control font1 b_textbox" MaxLength="100"  autocomplete="off"></asp:TextBox>
    


         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txt_ETitle" runat="server" ID="RequiredFieldValidator2" 
                                    ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div> 
                              <%--====================================================================--%>




                            
 
                              <%--====================================================================--%>


                            
                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label8" runat="server" Text=" Date Range " ForeColor="Black" CssClass="lbl_style"></asp:Label>
</label>


 

                                   <div class='input-group'>
                           

<asp:TextBox ID="txt_DateRange" runat="server" class="form-control datetime"  Text=""></asp:TextBox>

                                    <div class="input-group-append">
                                        <span class="input-group-text">
                                            <span class="ti-calendar"></span>
                                        </span>
                                    </div>
                                </div>


    
     </div>


                              <%--====================================================================--%>

 
                        <div class="col-md-4 mb-3" style="display:none;" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Date / From" ForeColor="Black" CssClass="lbl_style"></asp:Label>
</label>

            
 <asp:TextBox ID="txt_DateFrom" runat="server" class="form-control font1 b_textbox"   TextMode="DateTimeLocal"  autocomplete="off"></asp:TextBox>
    


<%--         <asp:RequiredFieldValidator ControlToValidate="txt_DateFrom" runat="server" ID="RequiredFieldValidator1" 
                                    ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />--%>

                             

                   </div> 
                              <%--====================================================================--%>
                   
                               
                       <div class="col-md-4 mb-3"  style="display:none;">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label3" runat="server" Text="Date / To  " ForeColor="Black" CssClass="lbl_style"></asp:Label>
</label>

            
 <asp:TextBox ID="txt_DateTo" runat="server" class="form-control font1 b_textbox"    TextMode="DateTimeLocal"  autocomplete="off"></asp:TextBox>
    


<%--         <asp:RequiredFieldValidator ControlToValidate="txt_DateTo" runat="server" ID="RequiredFieldValidator3" 
                                    ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />--%>

                             

                   </div> 
                              <%--====================================================================--%>
                       
                             

                     <div class="col-md-4 mb-3"  style="display:none;">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label4" runat="server" Text="Photo  " ForeColor="Black" CssClass="lbl_style"></asp:Label>
</label>

            
                          <asp:FileUpload ID="FileUpload1" runat="server"  Width="100%" />

                         <asp:Label ID="lbl_EPhoto" runat="server" Text=""></asp:Label>
 
                             

                   </div> 
                              <%--====================================================================--%>
                       
                             
                     <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label5" runat="server" Text="Note  " ForeColor="Black" CssClass="lbl_style"></asp:Label>
</label>

            
 <asp:TextBox ID="txt_Details" runat="server" class="form-control font1 b_textbox" MaxLength="500"  autocomplete="off" TextMode="MultiLine" Height="34px"></asp:TextBox>
    

 
                             

                   </div> 
                              <%--====================================================================--%>
                       
                             

                            

        <div class="col-md-12">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label16" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 

    
                 <asp:LinkButton ID="Lnk_Insert" runat="server" class="btn btn-success"  ValidationGroup="grpRegistration" CausesValidation="True"
    OnClick="btn_insert_Click" ><i class="fa fa-check"></i> Save</asp:LinkButton>


                <asp:LinkButton ID="Lnk_Update" runat="server" class="btn btn-success" 
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
                    CssClass="btn  btn-danger " OnClick="btn_delete_Click" 
                    CausesValidation="False"   OnClientClick="return Validate_delete();"   Visible="False">Delete</asp:LinkButton>


                                  

                         <script type="text/javascript">
                                                    function Validate_delete() {
                                                        if (Page_ClientValidate()) {
                                                            return confirm('  are you sure delete   ?');
                                                        }
                                                        return false;
                                                    }
                                              </script> 
 
                                    <asp:LinkButton ID="Lnk_clear" runat="server" 
                    CssClass="btn  btn-info  " OnClick="btn_clear_Click"  ValidationGroup="clear"
                    CausesValidation="false"        >Clear</asp:LinkButton>

                 </div>

   <asp:Label ID="lbl_Event_ID" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>
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
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="Event_ID"
                                        DataSourceID="sds_AnnounceEvent" Width="100%" GridLines="None" PageSize="30">



                                        <Columns>
                                            <asp:TemplateField ShowHeader="False"  HeaderStyle-Width="100px">
                                                <ItemTemplate>
                            
    <asp:LinkButton ID="lnk_Edit" runat="server" OnClick="Lnk_Edit_Click" ToolTip="Edit" 
                                                        formnovalidate ><i style="font-size:16px !important; color:#000"  class="m-r-10 mdi mdi-grease-pencil"></i></asp:LinkButton>
                                                   



                                                </ItemTemplate>
                                              
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Event_ID" InsertVisible="False"  Visible="False">

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_Event_ID_GV" runat="server" Text='<%# Eval("Event_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                 <asp:TemplateField HeaderText="Title"   HeaderStyle-Width="350px"  >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelETitle" runat="server" Text='<%# Eval("ETitle") %>' 
                                                        style="width:200px; line-height:20px;"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                      
                                                 <asp:TemplateField HeaderText=" From"   HeaderStyle-Width="200px" >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelDateFrom" runat="server" Text='<%# Eval("DateFrom") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                         
 
                                                 <asp:TemplateField HeaderText="To"    HeaderStyle-Width="200px">
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelDateTo" runat="server" Text='<%# Eval("DateTo") %>'  ></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            
<%--                                                           <asp:TemplateField HeaderText="DateRange"    HeaderStyle-Width="200px">
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelDateRange" runat="server" Text='<%# Eval("DateRange") %>'  ></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>


                                            
                                            
                                                 <asp:TemplateField HeaderText="Details"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelDetails" runat="server" Text='<%# Eval("Details") %>' style="width:300px; line-height:20px;"></asp:Label>
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
 

                  
                  </ContentTemplate>

 
    </asp:UpdatePanel>

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

         <script src="bootstrap/assets/libs/toastr/build/toastr.min.js"></script>

<%--    <script src="bootstrap/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>--%>


        <script src="bootstrap/assets/libs/moment/moment.js"></script>

         
 <script src="bootstrap/assets/libs/daterangepicker/daterangepicker.js"></script>

      <script>
    /*******************************************/
 

     $('.datetime').daterangepicker({
         timePicker: true,
          i: true,
        timePickerIncrement: 30,
        locale: {
            format: 'YYYY/MM/DD h:mm A  '
        }
    });

 
 
    </script>


    <asp:SqlDataSource ID="sds_AnnounceEvent" runat="server"
        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
        SelectCommand="AnnounceEvent_Select" DeleteCommand="AnnounceEvent_Delete"
        DeleteCommandType="StoredProcedure" InsertCommand="AnnounceEvent_Insert"
        InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure"
        UpdateCommand="AnnounceEvent_Update" UpdateCommandType="StoredProcedure"
        
        
       oninserted="sds_AnnounceEvent_Inserted"
        OnUpdated="sds_AnnounceEvent_Updated"
        OnDeleted="sds_AnnounceEvent_Deleted"
        
        >
        <SelectParameters>

               <asp:ControlParameter ControlID="lbl_AcademicYear_ID"  Name="AcademicYear_Fkey" Type="Int32" />

            
        </SelectParameters>

        <DeleteParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
   <asp:ControlParameter ControlID="lbl_Event_ID"  Name="Event_ID" Type="Int32" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </DeleteParameters>
        <InsertParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
   <asp:ControlParameter ControlID="txt_ETitle"  Name="ETitle" Type="String" />
<%--     <asp:ControlParameter ControlID="txt_DateFrom"  Name="DateFrom" Type="DateTime" />
    <asp:ControlParameter ControlID="txt_DateTo"  Name="DateTo" Type="DateTime" />--%>


          <asp:ControlParameter ControlID="txt_DateRange"  Name="DateRange" Type="String" />


            
          <asp:ControlParameter ControlID="lbl_EPhoto"  Name="EPhoto" Type="String" />
         <asp:ControlParameter ControlID="txt_Details" Name="Details" Type="String" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />

            
 <asp:ControlParameter ControlID="lbl_EducationalBoard_ID_multi" Name="VEducationalBoard_Fkey" Type="String" DefaultValue="0" />
 <asp:ControlParameter ControlID="lbl_Department_ID_multi" Name="VDepartment_Fkey" Type="String" DefaultValue="0" />

            

        </InsertParameters>

               
        <UpdateParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
   <asp:ControlParameter ControlID="lbl_Event_ID"  Name="Event_ID" Type="Int32" />
   <asp:ControlParameter ControlID="txt_ETitle"  Name="ETitle" Type="String" />
<%--     <asp:ControlParameter ControlID="txt_DateFrom"  Name="DateFrom" Type="DateTime" />
    <asp:ControlParameter ControlID="txt_DateTo"  Name="DateTo" Type="DateTime" />--%>

                <asp:ControlParameter ControlID="txt_DateRange"  Name="DateRange" Type="String" />

           <asp:ControlParameter ControlID="lbl_EPhoto"  Name="EPhoto" Type="String" />
         <asp:ControlParameter ControlID="txt_Details" Name="Details" Type="String" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />



 <asp:ControlParameter ControlID="lbl_EducationalBoard_ID_multi" Name="VEducationalBoard_Fkey" Type="String" DefaultValue="0" />
 <asp:ControlParameter ControlID="lbl_Department_ID_multi" Name="VDepartment_Fkey" Type="String" DefaultValue="0" />


            
             
 
 


        </UpdateParameters>
        </asp:SqlDataSource>








 

  



 
</asp:Content>


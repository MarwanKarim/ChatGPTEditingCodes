<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="AnnounceNotice" Codebehind="AnnounceNotice.aspx.cs" %>

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
    </style>


    <link href="css/pageStyle.css" rel="stylesheet" />
    <link href="css/ResultMsg/result.css" rel="stylesheet" />
                
    
    
    
    
    <link href="bootstrap/assets/libs/toastr/build/toastr.min.css" rel="stylesheet" />
    
        <link rel="stylesheet" type="text/css" href="bootstrap/assets/libs/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">


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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text=" Notice"></asp:Label>
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
                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label2" runat="server" Text=" Title" ForeColor="Black" CssClass="lbl_style"></asp:Label><label class="text-danger m-0">*</label>
</label>

            
 <asp:TextBox ID="txt_NTitle" runat="server" class="form-control font1 b_textbox" MaxLength="1000"  autocomplete="off"></asp:TextBox>
    


         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txt_NTitle" runat="server" ID="RequiredFieldValidator2" 
                                    ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div> 
                              <%--====================================================================--%>
                   
                       
                       <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Date" ForeColor="Black" CssClass="lbl_style"></asp:Label><label class="text-danger m-0">*</label>
</label>

            
<%-- <asp:TextBox ID="txt_NDate" runat="server" class="form-control font1 b_textbox"   TextMode="Date"  autocomplete="off"></asp:TextBox>--%>
         <div class="input-group">
                                              

              <asp:TextBox ID="txtNDate" runat="server"    class="datepicker-autoclose form-control font1 b_textbox" placeholder="yyyy-mm-dd"  autocomplete="off"></asp:TextBox>

                                                <div class="input-group-append">
                                                    <span class="input-group-text"><i class="icon-calender"></i></span>
                                                </div>
                                            </div>


         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txtNDate" runat="server" ID="RequiredFieldValidator1" 
                                    ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

  

                   </div> 
                              <%--====================================================================--%>
                   
  
                             
  
                             
                     <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label5" runat="server" Text="Notice" ForeColor="Black" CssClass="lbl_style"></asp:Label>
</label>

            
 <asp:TextBox ID="txt_Notice" runat="server" class="form-control font1 b_textbox" MaxLength="500"  autocomplete="off" TextMode="MultiLine" Height="34px"></asp:TextBox>
    

 
                             

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

   <asp:Label ID="lbl_Notice_ID" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>
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
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="Notice_ID"
                                        DataSourceID="sds_Notice" Width="100%" GridLines="None" PageSize="30">



                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    &nbsp;
                         <asp:LinkButton ID="lnk_Edit" runat="server" OnClick="Lnk_Edit_Click" ToolTip="Edit" 
                                                        formnovalidate ><i style="font-size:16px !important; color:#000"  class="m-r-10 mdi mdi-grease-pencil"></i></asp:LinkButton>
                                                   

                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Event_ID" InsertVisible="False"  Visible="False">

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_Notice_ID_GV" runat="server" Text='<%# Eval("Notice_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                 <asp:TemplateField HeaderText="Title"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelNTitle" runat="server" Text='<%# Eval("NTitle") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                      
                                                 <asp:TemplateField HeaderText="Date" ItemStyle-Width="110px"  >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelNDate" runat="server" Text='<%# Eval("NDate") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                         
 
                                                 <asp:TemplateField HeaderText="Notice"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelNotice" runat="server" Text='<%# Eval("Notice") %>'></asp:Label>
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



            <script src="bootstrap/assets/libs/moment/moment.js"></script>
        <script src="bootstrap/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>



    <script>
    // Date Picker
        jQuery('.mydatepicker, #datepicker, .input-group.date').datepicker();

 

    jQuery('.datepicker-autoclose').datepicker({
        autoclose: true,
        todayHighlight: true,
        format: 'yyyy-mm-dd',
        minDate: new Date(),
        startDate: new Date()

 
  
    });
 

 

    </script>
 

                            
 

    <asp:SqlDataSource ID="sds_Notice" runat="server"
        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
        SelectCommand="AnnounceNotice_Select" DeleteCommand="AnnounceNotice_Delete"
        DeleteCommandType="StoredProcedure" InsertCommand="AnnounceNotice_Insert"
        InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure"
        UpdateCommand="AnnounceNotice_Update" UpdateCommandType="StoredProcedure"
        
        oninserted="sds_Notice_Inserted"
        onupdated="sds_Notice_Updated"
        ondeleted="sds_Notice_Deleted"
        
        
        >

        <SelectParameters>
<asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />

        </SelectParameters>
        <DeleteParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
   <asp:ControlParameter ControlID="lbl_Notice_ID" Name="Notice_ID" Type="Int32" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </DeleteParameters>
        <InsertParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
     <asp:ControlParameter ControlID="txt_NTitle" Name="NTitle" Type="String" />
              <asp:ControlParameter ControlID="txtNDate" Name="NDate" DbType="Date" />
           <asp:ControlParameter ControlID="txt_Notice" Name="Notice" Type="String" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </InsertParameters>

               
        <UpdateParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
   <asp:ControlParameter ControlID="lbl_Notice_ID" Name="Notice_ID" Type="Int32" />
     <asp:ControlParameter ControlID="txt_NTitle" Name="NTitle" Type="String" />
              <asp:ControlParameter ControlID="txtNDate" Name="NDate" DbType="Date" />
           <asp:ControlParameter ControlID="txt_Notice" Name="Notice" Type="String" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </UpdateParameters>
        </asp:SqlDataSource>




 

 
 
</asp:Content>


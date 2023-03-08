<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEducation.master" AutoEventWireup="true" Inherits="Activities2" Codebehind="2Activities.aspx.cs" %>

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
            font-size: 13pt !important;
        }

        .RadComboBox, .RadComboBoxDropDown ul li rcbItem,
        .RadComboBoxDropDown_Default_rtl {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
        }
                .RadComboBox input{
            padding:12px 0px !important;
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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="فۆرمی چالاکیەکان"></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" style="display:none !important;"></asp:Label>

                        
                  <asp:Label ID="lbl_AcademicYear_ID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>



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


     
                              <%--====================================================================--%>
                   
                       
                 <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label6" runat="server" Text="بۆرد  " CssClass="lbl_style"></asp:Label>
</label>

 



  

                          <asp:DropDownList ID="ddl_Board" runat="server" class="form-control font1 b_textbox"
     
         DataSourceID="sds_EducationalBoard"
         DataTextField="EducationalBoardName"
         DataValueField="EducationalBoard_ID"

         AppendDataBoundItems="True">


                           <asp:ListItem Text="هەڵبژێرە" Value="0"  />

   
                     
                   </asp:DropDownList>
 
         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="ddl_Board" runat="server" ID="RequiredFieldValidator1" 
                                    ValidationGroup="grpRegistration"    InitialValue="0"   Text="Required" ForeColor="Red" CssClass="font1" />

         <asp:SqlDataSource ID="sds_EducationalBoard" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="Setting_EducationalBoard_Select_ddl" SelectCommandType="StoredProcedure">
    <SelectParameters>
              <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>             


                   

                   </div> 




     
                              <%--====================================================================--%>
                   
                       
                 <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label4" runat="server" Text="جۆری چالاکی" CssClass="lbl_style"></asp:Label>
</label>

            
     <asp:DropDownList ID="ddl_activityType" runat="server" class="form-control font1 b_textbox"
     
         DataSourceID="sds_activityType_ddl"
         DataTextField="activityTypeName"
         DataValueField="activityType_ID"

         AppendDataBoundItems="True">


                           <asp:ListItem Text="هەڵبژێرە" Value="0"  />

   
                     
                   </asp:DropDownList>

 
         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="ddl_activityType" runat="server" ID="RequiredFieldValidator3" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

               
                        <asp:SqlDataSource ID="sds_activityType_ddl" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                  SelectCommand="  SELECT        activityType_ID, activityTypeName
                                   FROM          tbl2ActivityType
                      
                  "></asp:SqlDataSource>               
                   

                   </div> 




                              <%--====================================================================--%>



                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label2" runat="server" Text="شوێنی ئەنجامدانی" CssClass="lbl_style"  ></asp:Label>
</label>

            
 <asp:TextBox ID="txt_activityLocation" runat="server" class="form-control font1 b_textbox" autoComplete="off" MaxLength="500"></asp:TextBox >
    


         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txt_activityLocation" runat="server" ID="RequiredFieldValidator2" 
                         ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div> 




                              <%--====================================================================--%>

                            
                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label5" runat="server" Text="کەسی ئەنجامدەر" CssClass="lbl_style"  ></asp:Label>
</label>

            
 <asp:TextBox ID="txt_activityOrganizer" runat="server" class="form-control font1 b_textbox" autoComplete="off" MaxLength="500"></asp:TextBox >
    


         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txt_activityOrganizer" runat="server" ID="RequiredFieldValidator5" 
                         ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div> 




                              <%--====================================================================--%>


                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label3" runat="server" Text=" بەروار" CssClass="lbl_style"></asp:Label>
</label>

            
 <asp:TextBox ID="txt_activityDate" runat="server" class="form-control font1 b_textbox" autoComplete="off"  TextMode="Date"></asp:TextBox>
    
                  <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txt_activityDate" runat="server" ID="RequiredFieldValidator4" 
                         ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

                          

                   </div> 
 
  

                            
                            
                            <%--====================================================================--%>
               
                            
                       




                 <div class="col-md-4 mb-3"     >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label8" runat="server" Text="ناوی چالاکی" CssClass="lbl_style"></asp:Label>
</label>

          <asp:TextBox ID="txt_activityName" runat="server" class="form-control font1 b_textbox"  autoComplete="off" MaxLength="1000"></asp:TextBox>
    
        </div>     
                            
  <%--====================================================================--%>
               


    
 
                 <div class="col-md-4 mb-3"     >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="ئامانج لەم چالاکییە" CssClass="lbl_style"></asp:Label>
</label>

          <asp:TextBox ID="txt_activityGoal" runat="server" class="form-control font1 b_textbox" autoComplete="off"  MaxLength="1000"></asp:TextBox>
    
        </div>     
                            
  <%--====================================================================--%>
               


             
                        </div> 




                      <%--====================================================================--%>             
                      <%--====================================================================--%>             


       <div class="form-row">
                         

        <div class="col-md-4">
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

   <asp:Label ID="lbl_activity_ID" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>
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
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="activity_ID"
                                        DataSourceID="sds_Activities" Width="100%" GridLines="None" PageSize="30">



                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    &nbsp;
                          


                                        <asp:LinkButton ID="lnk_Edit" runat="server" OnClick="Lnk_Edit_Click" ToolTip="Edit" 
                                                        formnovalidate ><i style="font-size:16px !important; color:#000"  class="m-r-10 mdi mdi-grease-pencil"></i></asp:LinkButton>
                                                   



                                                </ItemTemplate>
                                            </asp:TemplateField>

 <asp:TemplateField HeaderText="#">   
         <ItemTemplate>
                 <%# Container.DataItemIndex + 1 %>   
         </ItemTemplate>
     </asp:TemplateField>


                                           
 

                                            <asp:TemplateField HeaderText="Qualification_ID" InsertVisible="False" SortExpression="CatNo" Visible="False">

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_activity_ID_GV" runat="server" Text='<%# Eval("activity_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                <asp:TemplateField HeaderText="بۆرد  "   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_Board" runat="server" Text='<%# Eval("EducationalBoardName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>



                                                 <asp:TemplateField HeaderText="جۆری چالاکی"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_activityTypeName" runat="server" Text='<%# Eval("activityTypeName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            
                                                 <asp:TemplateField HeaderText="شوێنی ئەنجامدانی"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_activityLocation" runat="server" Text='<%# Eval("activityLocation") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                             <asp:TemplateField HeaderText="کەسی ئەنجامدەر"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_activityOrganizer" runat="server" Text='<%# Eval("activityOrganizer") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                          <asp:TemplateField HeaderText="رۆژ و بەروار"    >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_activityDate" runat="server" Text='<%# Eval("activityDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>



                                                  <asp:TemplateField HeaderText="ناوی چالاکی"    >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_activityName" runat="server" Text='<%# Eval("activityName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                                       <asp:TemplateField HeaderText="ئامانج لەم چالاکییە"    >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_activityGoal" runat="server" Text='<%# Eval("activityGoal") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                                                                                                             
                 <asp:TemplateField HeaderText=" داخڵ کردن"    >

                                                  <ItemTemplate>
                                                    <asp:Label ID="lbl_StaffName" runat="server" Text='<%# Eval("StaffName") %>'></asp:Label>
                                                      <br />
 <asp:Label ID="lbl_date_insert" runat="server" Text='<%# Eval("date_insert") %>'></asp:Label>

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


 

           <!--   <script src="bootstrap/assets/libs/toastr/build/toastr.min.js"></script>-->

    <asp:SqlDataSource ID="sds_Activities" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand="2Activities_select" DeleteCommand="2Activities_Delete"
        DeleteCommandType="StoredProcedure" InsertCommand="2Activities_Insert" 
        InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure" 
        UpdateCommand="2Activities_Update" UpdateCommandType="StoredProcedure">
                       <SelectParameters>

                          <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />


                </SelectParameters>


            <DeleteParameters>
                <asp:ControlParameter ControlID="lbl_activity_ID" Name="activity_ID" Type="Int32" />

            </DeleteParameters>
            <InsertParameters>
               <asp:ControlParameter ControlID="txt_activityGoal"  Name="activityGoal" Type="String" />
                  <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />
                <asp:ControlParameter ControlID="ddl_Board" Name="EducationalBoard_Fkey" Type="Int32" />
                 <asp:ControlParameter ControlID="ddl_activityType"  Name="activityType_Fkey" Type="Int32" />
                <asp:ControlParameter ControlID="txt_activityLocation" Name="activityLocation" Type="String" />
                 <asp:ControlParameter ControlID="txt_activityOrganizer"  Name="activityOrganizer" Type="String" />
                <asp:ControlParameter ControlID="txt_activityDate"  Name="activityDate" DbType="Date" />
               <asp:ControlParameter ControlID="txt_activityName"  Name="activityName" Type="String" />
                <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />        

            </InsertParameters>
            <UpdateParameters>
                

                <asp:ControlParameter ControlID="lbl_activity_ID" Name="activity_ID" Type="Int32" />
                   <asp:ControlParameter ControlID="txt_activityGoal"  Name="activityGoal" Type="String" />
                <asp:ControlParameter ControlID="ddl_Board" Name="EducationalBoard_Fkey" Type="Int32" />
                 <asp:ControlParameter ControlID="ddl_activityType"  Name="activityType_Fkey" Type="Int32" />
                <asp:ControlParameter ControlID="txt_activityLocation" Name="activityLocation" Type="String" />
                 <asp:ControlParameter ControlID="txt_activityOrganizer"  Name="activityOrganizer" Type="String" />
                <asp:ControlParameter ControlID="txt_activityDate"  Name="activityDate" DbType="Date" />
               <asp:ControlParameter ControlID="txt_activityName"  Name="activityName" Type="String" />
                <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />        

            </UpdateParameters>

        </asp:SqlDataSource>

 
         
     

    
       


 

    <!-- ============================================================== -->


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

        <!-- ============================================================== -->


    
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


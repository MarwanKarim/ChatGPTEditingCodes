<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEducation.master" AutoEventWireup="true" Inherits="GuideWeekActivity3" Codebehind="3GuideWeekActivity.aspx.cs" %>

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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="چالاکییەکانی ڕێنماییکار لەم هەفتەیەدا"></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" style="display:none !important;"></asp:Label>

                        
                  <asp:Label ID="lbl_AcademicYear_ID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>



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


     
                              <%--====================================================================--%>
                   


     
                              <%--====================================================================--%>
 

     
                              <%--====================================================================--%>            
                            



                            
                 <div class="col-md-4 mb-3"     >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label5" runat="server" Text="جۆری چالاکی" CssClass="lbl_style"></asp:Label>
</label>

          <asp:TextBox ID="txt_guideActivityType" runat="server" class="form-control font1 b_textbox" autoComplete="off"  MaxLength="1000"></asp:TextBox>
    
                        <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txt_guideActivityType" runat="server" ID="RequiredFieldValidator1" 
                         ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

        </div>     
                            
  <%--====================================================================--%>

                              <%--====================================================================--%>



                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label2" runat="server" Text="بەروار لە" CssClass="lbl_style"></asp:Label>
</label>

            
 <asp:TextBox ID="txt_dateFrom" runat="server" class="form-control font1 b_textbox" autoComplete="off"  TextMode="Date"></asp:TextBox>
    
                  <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txt_dateFrom" runat="server" ID="RequiredFieldValidator2" 
                         ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />
                             

                   </div> 




                              <%--====================================================================--%>


                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label3" runat="server" Text="بەروار بۆ" CssClass="lbl_style"></asp:Label>
</label>

            
 <asp:TextBox ID="txt_dateTo" runat="server" class="form-control font1 b_textbox" autoComplete="off"  TextMode="Date"></asp:TextBox>
    
                  <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txt_dateTo" runat="server" ID="RequiredFieldValidator4" 
                         ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

                          

                   </div> 
 
  

                            
                            
                            <%--====================================================================--%>
               
                       
    
 
                 <div class="col-md-4 mb-3"     >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label7" runat="server" Text="ئاماجی چالاکی" CssClass="lbl_style"></asp:Label>
</label>

          <asp:TextBox ID="txt_note1" runat="server" class="form-control font1 b_textbox" autoComplete="off"  MaxLength="1000"></asp:TextBox>
    
                       

        </div>     
                            
  <%--====================================================================--%>
               
                            
    
             
                        </div> 




                      <%--====================================================================--%>             
                      <%--====================================================================--%>             


       <div class="form-row">
                         

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

   <asp:Label ID="lbl_guideWeekActivity_ID" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>
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
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="guideWeekActivity_ID"
                                        DataSourceID="sds_GuideWeekActivitys" Width="100%" GridLines="None" PageSize="30">



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


                                           
 

                                            <asp:TemplateField HeaderText="Qualification_ID" InsertVisible="False" Visible="false">

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_guideWeekActivity_ID_GV" runat="server" Text='<%# Eval("guideWeekActivity_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                              



                                             <asp:TemplateField HeaderText="جۆری چالاکی"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_guideActivityType" runat="server" Text='<%# Eval("guideActivityType") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>






                                               <asp:TemplateField HeaderText="بەروار لە"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_dateFrom" runat="server" Text='<%# Eval("dateFrom","{0:yyyy-MM-dd}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>




                                          <asp:TemplateField HeaderText="بەروار بۆ"    >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_dateTo" runat="server" Text='<%# Eval("dateTo","{0:yyyy-MM-dd}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            
                                                

                                            
                                                  <asp:TemplateField HeaderText="ئامانجی چالاکی"    >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_note1" runat="server" Text='<%# Eval("note1") %>'></asp:Label>
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

    <asp:SqlDataSource ID="sds_GuideWeekActivitys" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 



            SelectCommand="3GuideWeekActivity_Select"
        SelectCommandType="StoredProcedure"


        DeleteCommand="3GuideWeekActivity_Delete" 
        DeleteCommandType="StoredProcedure" 


        InsertCommand="3GuideWeekActivity_Insert"
                InsertCommandType="StoredProcedure" 


        UpdateCommand="3GuideWeekActivity_Update"
        UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:ControlParameter ControlID="lbl_guideWeekActivity_ID" Name="guideWeekActivity_ID" Type="Int32" />


               


            </DeleteParameters>
            <InsertParameters>

                     <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />
               

               
                <asp:ControlParameter ControlID="txt_guideActivityType" Name="guideActivityType" Type="String" />

                  <asp:ControlParameter ControlID="txt_dateFrom"  Name="dateFrom" DbType="Date" />
                <asp:ControlParameter ControlID="txt_dateTo"  Name="dateTo" DbType="Date" />
            
                 


                 <asp:ControlParameter ControlID="txt_note1"  Name="note1" Type="String" />
               
                 
                <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />    
                

            </InsertParameters>
            <UpdateParameters>
                

              <asp:ControlParameter ControlID="lbl_guideWeekActivity_ID" Name="guideWeekActivity_ID" Type="Int32" />

         
             

              
                  <asp:ControlParameter ControlID="txt_guideActivityType" Name="guideActivityType" Type="String" />
         
                    <asp:ControlParameter ControlID="txt_dateFrom"  Name="dateFrom" DbType="Date" />
                <asp:ControlParameter ControlID="txt_dateTo"  Name="dateTo" DbType="Date" />
              
                  

                 <asp:ControlParameter ControlID="txt_note1"  Name="note1" Type="String" />
                
                 
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


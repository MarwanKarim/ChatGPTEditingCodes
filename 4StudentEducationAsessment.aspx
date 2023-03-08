<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEducation.master" AutoEventWireup="true" Inherits="StudentEducationAsessment4" Codebehind="4StudentEducationAsessment.aspx.cs" %>

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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="هەڵسەنگاندنی پەروەردەیی قوتابیانی قوتابخانە"></asp:Label>
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
                   
                       
                 <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label6" runat="server" Text="ناوی قوتابی" CssClass="lbl_style"></asp:Label>
</label>

 



      <telerik:RadComboBox RenderMode="Lightweight" ID="ddl_Student" runat="server"   
                                    Label=""        DataSourceID = "sds_Student_ddl"
        DataTextField = "StudentNameK"
        DataValueField = "Student_ID" EmptyMessage="هەڵبژێرە"
                                       Height="200px"        MarkFirstMatch="True"  
                                 Width="100%"  AppendDataBoundItems="true"   Filter="Contains">
      </telerik:RadComboBox>


 
         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="ddl_Student" runat="server" ID="RequiredFieldValidator1" 
                                    ValidationGroup="grpRegistration"     Text="Required" ForeColor="Red" CssClass="font1" />

              <asp:SqlDataSource ID="sds_Student_ddl" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                  SelectCommand="  SELECT        Student_ID, StudentNameK
                                   FROM           
                                   tblStudent"
                      
                  
                  
               
                  
                  ></asp:SqlDataSource>               


                   

                   </div> 








                            
                              <%--====================================================================--%>


                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label3" runat="server" Text="رۆژ و بەروار" CssClass="lbl_style"></asp:Label>
</label>

            
 <asp:TextBox ID="txt_dateOfAsessment" runat="server" class="form-control font1 b_textbox" autoComplete="off"  TextMode="Date"></asp:TextBox>
    
                  <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txt_dateOfAsessment" runat="server" ID="RequiredFieldValidator4" 
                         ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

                          

                   </div> 
 
  

                            
                            
                            <%--====================================================================--%>

     
                              <%--====================================================================--%>
                   
                       
                 <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label4" runat="server" Text="وەرزی هەڵسەنگاندن" CssClass="lbl_style"></asp:Label>
</label>

 
                       <%--  DataSourceID = "sds_noOfLesson_ddl"--%>
    <%--    DataTextField = "StaffName"
        DataValueField = "Staff_ID"--%>

                       <%--    
                  SelectCommand="  SELECT        Staff_ID, StaffName
                                   FROM           
                                   tblStaff"
                      --%>
                  


      <telerik:RadComboBox RenderMode="Lightweight" ID="ddl_seasonOfAsessment" runat="server"   
                                    Label=""    
                                       Height="200px"        MarkFirstMatch="True"  
                                 Width="100%"  AppendDataBoundItems="true"   Filter="Contains">
                                    <Items>
                                     
                                        <telerik:RadComboBoxItem Value="1" Text="‌هەڵسەنگاندنی وەرزی یەکەم" />
                                         <telerik:RadComboBoxItem Value="2" Text="هەڵسەنگاندنی وەرزی دووەم" />
                                         
                                    </Items>
      </telerik:RadComboBox>


 
         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="ddl_seasonOfAsessment" runat="server" ID="RequiredFieldValidator5" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

     


                   

                   </div> 




     
                              <%--====================================================================--%>                

                                                          <%--====================================================================--%>



                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label2" runat="server" Text="گرفتە پەروەردەییەکانی" CssClass="lbl_style"  ></asp:Label>
</label>

            
 <asp:TextBox ID="txt_note1" runat="server" class="form-control font1 b_textbox" autoComplete="off" MaxLength="500"></asp:TextBox >
    


         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txt_note1" runat="server" ID="RequiredFieldValidator2" 
                         ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div> 




                              <%--====================================================================--%>



                                                                                 <%--====================================================================--%>



                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="جۆری کارکردن" CssClass="lbl_style"  ></asp:Label>
</label>

            
 <asp:TextBox ID="txt_note2" runat="server" class="form-control font1 b_textbox" autoComplete="off" MaxLength="500"></asp:TextBox >
    


         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txt_note2" runat="server" ID="RequiredFieldValidator3" 
                         ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div> 




                              <%--====================================================================--%>



                                                          <%--====================================================================--%>
                   
                       
                 <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label5" runat="server" Text="ئاستی پەروەردەیی لەم وەرزەدا" CssClass="lbl_style"></asp:Label>
</label>

 
                       <%--  DataSourceID = "sds_noOfLesson_ddl"--%>
    <%--    DataTextField = "StaffName"
        DataValueField = "Staff_ID"--%>

                       <%--    
                  SelectCommand="  SELECT        Staff_ID, StaffName
                                   FROM           
                                   tblStaff"
                      --%>
                  


      <telerik:RadComboBox RenderMode="Lightweight" ID="ddl_studentSeasonGrade" runat="server"   
                                    Label=""    EmptyMessage="هەڵبژێرە"
                                       Height="200px"        MarkFirstMatch="True"  
                                 Width="100%"  AppendDataBoundItems="true"   Filter="Contains">
                                    <Items>
                                        <telerik:RadComboBoxItem Value="1" Text="‌پەسەند" />
                                         <telerik:RadComboBoxItem Value="2" Text="باش" />
                                           <telerik:RadComboBoxItem Value="3" Text="مامناوەند" />
                                         
                                    </Items>
      </telerik:RadComboBox>


 
         <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="ddl_studentSeasonGrade" runat="server" ID="RequiredFieldValidator6" 
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" />

     


                   

                   </div> 




     
                              <%--====================================================================--%>     

                            
                            <%--====================================================================--%>
               
                            
                    






                      <%--====================================================================--%>             
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

   <asp:Label ID="lbl_studentEducationAsessment_ID" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>
   <asp:Label ID="lbl_result_msg" runat="server" Text="Date Added succesfully ." Visible="False"></asp:Label>
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
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="studentEducationAsessment_ID"
                                        DataSourceID="sds_studentEducationAsessment" Width="100%" GridLines="None" PageSize="30">



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


                                           
 

                                            <asp:TemplateField HeaderText="Qualification_ID" InsertVisible="False" >

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_studentEducationAsessment_ID_GV" runat="server" Text='<%# Eval("studentEducationAsessment_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                <asp:TemplateField HeaderText="Student Name"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_Student" runat="server" Text='<%# Eval("StudentNameK") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText="وەرزی هەڵسەنگاندن"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_seasonOfAsessment" runat="server" Text='<%# Eval("seasonOfAsessment") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                     <asp:TemplateField HeaderText="رۆژ و بەروار"    >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_dateOfAsessment" runat="server" Text='<%# Eval("dateOfAsessment","{0:yyyy-MM-dd}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                                <asp:TemplateField HeaderText="گرفتە پەروەردەییەکانی"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_note1" runat="server" Text='<%# Eval("note1") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                                 <asp:TemplateField HeaderText="جۆری کارکردن"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_note2" runat="server" Text='<%# Eval("note2") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                        
                                                 <asp:TemplateField HeaderText="ئاستی پەروەردەیی لەم وەرزەدا"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_studentSeasonGrade" runat="server" Text='<%# Eval("studentSeasonGrade") %>'></asp:Label>
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

    <asp:SqlDataSource ID="sds_studentEducationAsessment" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 



            SelectCommand="4StudentEducationAsessment_Select"
        SelectCommandType="StoredProcedure"


        DeleteCommand="4StudentEducationAsessment_Delete" 
        DeleteCommandType="StoredProcedure" 


        InsertCommand="4StudentEducationAsessment_Insert"
                InsertCommandType="StoredProcedure" 


        UpdateCommand="4StudentEducationAsessment_Update"
        UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:ControlParameter ControlID="lbl_studentEducationAsessment_ID" Name="studentEducationAsessment_ID" Type="Int32" />


               


            </DeleteParameters>
            <InsertParameters>

                     <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />
                <asp:ControlParameter ControlID="ddl_Student" Name="Student_Fkey" Type="Int32" />

                  <asp:ControlParameter ControlID="ddl_seasonOfAsessment" Name="seasonOfAsessment" Type="Int32" />
                 <asp:ControlParameter ControlID="txt_dateOfAsessment"  Name="dateOfAsessment" DbType="Date" />
                     <asp:ControlParameter ControlID="txt_note1"  Name="note1" Type="String" />
                    <asp:ControlParameter ControlID="txt_note2"  Name="note2" Type="String" />

                   <asp:ControlParameter ControlID="ddl_studentSeasonGrade" Name="studentSeasonGrade" Type="Int32" />


            
                 
                <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />    
                

            </InsertParameters>
            <UpdateParameters>
                

                <asp:ControlParameter ControlID="lbl_studentEducationAsessment_ID" Name="studentEducationAsessment_ID" Type="Int32" />

           <%--   <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />--%>
                     <asp:ControlParameter ControlID="ddl_Student" Name="Student_Fkey" Type="Int32" />

                  <asp:ControlParameter ControlID="ddl_seasonOfAsessment" Name="seasonOfAsessment" Type="Int32" />
                 <asp:ControlParameter ControlID="txt_dateOfAsessment"  Name="dateOfAsessment" DbType="Date" />
                     <asp:ControlParameter ControlID="txt_note1"  Name="note1" Type="String" />
                    <asp:ControlParameter ControlID="txt_note2"  Name="note2" Type="String" />

                   <asp:ControlParameter ControlID="ddl_studentSeasonGrade" Name="studentSeasonGrade" Type="Int32" />


            
                 
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


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="ExamScheduleNew" Codebehind="ExamScheduleNew.aspx.cs" %>

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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Exam Schedule"></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" style="display:none !important;"></asp:Label>
 <asp:Label ID="lbl_AcademicYear_ID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"   Visible="False" Text="0"></asp:Label>
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
                 <div class="row">
                        <div class="col-12">
                <div class="card">
                    <div class="card-body">
             



           <div class="alert alert-info alert-dismissible fade show" role="alert">
                            <span class="badge badge-info"><i class="fas fa-info"></i></span>
                            <strong>Note: Create exam, class, section & subject before you create a new exam schedule </strong>
                      

                                
                                
                        </div>



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
ValidationGroup="grp22"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />   
 
  </div> 
 

 

            <%--====================================================================--%>

                      <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Class " CssClass="lbl_style"></asp:Label>
</label>

            
     <asp:DropDownList ID="ddl_Class" runat="server" class="form-control font1 b_textbox"
 
         OnSelectedIndexChanged="ddl_Class_SelectedIndexChanged"
         AppendDataBoundItems="True" AutoPostBack="False">

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
                                    ValidationGroup="grp22"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div> 

            <%--====================================================================--%>
        
        
                                     <div class="col-md-3 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label6" runat="server" Text="Exam Group " CssClass="lbl_style"></asp:Label>
</label>

            
     <asp:DropDownList ID="ddl_ExamMaster" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_ExamMasterSub_ddl"  DataTextField="ExamMasterSubName"  DataValueField="ExamMasterSub_ID"
       AppendDataBoundItems="True"    >

                           <asp:ListItem Text="Choose" Value="0"  />
                      
                     
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_ExamMasterSub_ddl" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="ExamMasterSub_ddl" SelectCommandType="StoredProcedure">
 </asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_ExamMaster" runat="server" ID="RequiredFieldValidator22" 
                                    ValidationGroup="grp22"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div> 
            <%--====================================================================--%>

        
        
    <%--====================================================================--%>

       <div class="col-md-2">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label16" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 

                                  
                                  
                <asp:LinkButton ID="Lnk_Search" runat="server" class="btn btn-dark  waves-effect waves-light" OnClick="Lnk_Search_Click" ValidationGroup="grp22">
                    <i class="mdi mdi-search-web"></i>Search</asp:LinkButton>                          


                 </div>

                  </div>


                            </div>
                        </div>
                    </div>
                            </div>
                        </div>
           

            <!-- Start Page Content -->
            <!-- ============================================================== -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                      
                         





                       


                                <div class="table-responsive font1" style="overflow-x: scroll">

                                    <asp:GridView ID="Gridview1"
                                        runat="server" AutoGenerateColumns="False"
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="ExamScheduleNew_ID"
                                     Width="100%" GridLines="None" PageSize="30"
                                        OnRowDataBound="Gridview1_RowDataBound"
                                        >



                                        <Columns>

<asp:TemplateField>
    <ItemTemplate>
        <%# Container.DataItemIndex + 1 %>
    </ItemTemplate>
        <HeaderStyle Width="50px" />
</asp:TemplateField>
                                            <asp:TemplateField HeaderText="ExamSchedule_ID" InsertVisible="False"   Visible="false">

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_ExamScheduleNew_ID_GV" runat="server" Text='<%# Eval("ExamScheduleNew_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                    <%--         <asp:TemplateField HeaderText="Exam Name"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelExamName" runat="server" Text='<%# Eval("ExamName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                            
 
                                                 <asp:TemplateField HeaderText="Class "    Visible="false">
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelClassName" runat="server" Text='<%# Eval("ClassName") %>'></asp:Label>
                                                
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                              

                                          <asp:TemplateField HeaderText=" Subject "   >
                                              
                                                <ItemTemplate>
 <asp:Label ID="lbl_Subjects_ID" runat="server" Text='<%# Eval("Subjects_ID") %>' Visible="false"></asp:Label>


                                                    <asp:Label ID="LabelSubjectsName" runat="server" Text='<%# Eval("SubjectsName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                         
 

             <asp:TemplateField HeaderText="  Date"   >
                                              
                                                <ItemTemplate>
                                                    

                                                    <asp:TextBox ID="txt_ExamDate" runat="server"  class="form-control font1 b_textbox" TextMode="Date" 
                                                        Text='<%# Eval("ExamDate","{0:yyyy-MM-dd}") %>'></asp:TextBox>

                                                             <asp:RequiredFieldValidator ControlToValidate="txt_ExamDate" runat="server" ID="RequiredFieldValidator2df" 
                         ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1"  SetFocusOnError="true"/>

                                                </ItemTemplate>
                                            </asp:TemplateField>


            <asp:TemplateField HeaderText="Time From"   >
                                              
                                                <ItemTemplate>
                                                 

                 <asp:DropDownList ID="ddlTimeFrom" runat="server" class="form-control font1 b_textbox"   
                     Width="150px" OnSelectedIndexChanged="ddlTimeFrom_SelectedIndexChanged" 
                     AutoPostBack="false"></asp:DropDownList>

 <asp:HiddenField ID="hdn_TimeFrom" runat="server" Value='<%# Eval("TimeFrom") %>' />
              <asp:RequiredFieldValidator ControlToValidate="ddlTimeFrom" runat="server" ID="RequiredFieldValidator2dfda"  InitialValue="0"
                         ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1"  SetFocusOnError="true"/>

                                                </ItemTemplate>
                                            </asp:TemplateField>

                                <asp:TemplateField HeaderText="Duration"   >
                                              
                                                <ItemTemplate>
                     <asp:DropDownList ID="ddl_Duration" runat="server" class="form-control font1 b_textbox"  
                         Width="150px"  OnSelectedIndexChanged="ddlTimeFrom_SelectedIndexChanged" AutoPostBack="false" Selectedvalue='<%# Eval("Dutation")%>'>

                         <asp:ListItem Value="0" Text="--Select--" />
                           <asp:ListItem Value="30" Text="00:30" />
                           <asp:ListItem Value="45" Text="00:45" />
                           <asp:ListItem Value="60" Text="01:00" />
                           <asp:ListItem Value="90" Text="01:30" />
                           <asp:ListItem Value="120" Text="02:00" />
                           <asp:ListItem Value="150" Text="02:30" />
                          <asp:ListItem Value="180" Text="03:00" />

                     </asp:DropDownList>

         <asp:RequiredFieldValidator ControlToValidate="ddl_Duration" runat="server" ID="RequiredFieldValidator2sdfwa"  InitialValue="0"
                         ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1"  SetFocusOnError="true"/>

       </ItemTemplate>
                                            </asp:TemplateField>



                                                        <asp:TemplateField HeaderText="Time To"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelTimeTo" runat="server" Text='<%# Eval("TimeTo","{0:hh:mm tt}") %>'></asp:Label>




                                                </ItemTemplate>
                                            </asp:TemplateField>

            <asp:TemplateField HeaderText=" Room"   >
                                              
                                                <ItemTemplate>
 <asp:TextBox ID="txt_ExamRoom" runat="server"  class="form-control font1 b_textbox" Text='<%# Eval("ExamRoom") %>' AutoPostBack="false"   ></asp:TextBox>

                                                </ItemTemplate>
                                            </asp:TemplateField>

 

                                        </Columns>


                                        <HeaderStyle    CssClass="header_Grid"/>
                        <PagerStyle CssClass="pagination-ys" />
                        <RowStyle   CssClass="row_Grid"   />
                        <AlternatingRowStyle BackColor="#eeeeee"   />  
                                    </asp:GridView>


                         
                        </div>
                

          <!-- ============================================================== -->

                        <div class="form-row">
                             <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
 
</label>
             <asp:LinkButton ID="Lnk_Update" runat="server" class="btn btn-success" 
    ValidationGroup="grpRegistration" OnClick="Lnk_Update_Click"   CausesValidation="True"
    OnClientClick="return Validate();" ><i class="fa fa-check"></i> Save</asp:LinkButton>
   </div>  

                        </div>
          <!-- ============================================================== -->
                </div>






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





<asp:SqlDataSource ID="sds_ExamSchedule" runat="server"
ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
SelectCommand="ExamScheduleNew_Select" 
InsertCommand="ExamScheduleNew_Insert_Update"
InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure"
OnInserted="sds_ExamSchedule_Inserted"  
        
        
        >

        <SelectParameters>
               <asp:ControlParameter  ControlID="ddl_Class" Name="Class_Fkey" Type="Int32" DefaultValue="0" /> 
 <asp:ControlParameter  ControlID="ddl_ExamMaster"  Name="ExamMasterSub_Fkey" Type="Int32" />
 <asp:ControlParameter  ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />
 
        </SelectParameters>



        <DeleteParameters>
<asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="0000" ConvertEmptyStringToNull="true" />
<asp:ControlParameter  ControlID="lbl_ExamSchedule_ID" Name="ExamSchedule_ID" Type="Int32"  DefaultValue="0"  />
<asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </DeleteParameters>

        <InsertParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="0000" ConvertEmptyStringToNull="true" />

                <asp:Parameter     Name="ExamScheduleNew_ID" Type="Int32" DefaultValue="0" />

                <asp:ControlParameter  ControlID="ddl_ExamMaster"  Name="ExamMasterSub_Fkey" Type="Int32" />
                <asp:ControlParameter  ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />
                <asp:ControlParameter  ControlID="ddl_Class" Name="Class_Fkey" Type="Int32" />



            <asp:Parameter   Name="Subjects_Fkey" Type="Int32"  DefaultValue="0"/> 
            <asp:Parameter Name="ExamDate"   DbType="Date" />
            <asp:Parameter   Name="TimeFrom" Type="String" />
            <asp:Parameter   Name="Dutation" Type="Int32" />
            <asp:Parameter    Name="ExamRoom" Type="String" />



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


     <%--==============================================================================--%>

    
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




 </asp:Content>


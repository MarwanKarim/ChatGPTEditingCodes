<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="ATStudentReg" Codebehind="ATStudentReg.aspx.cs" %>

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


              .font_lbl {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
        }


        .font_header1 {
            font-family: 'Conv_Chawder-Bold' !important;
               font-size: 14pt !important;
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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Students registration"></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000"   Visible="False"></asp:Label>

                      <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>
                          <asp:Label ID="lbl_AcademicYear_ID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"   Visible="False"   ></asp:Label>
                        
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

                                       <h4 class="card-title font_header1" style="background-color:#137EFF ; color:#fff;   ">  
<div class="btn-group btn-group-lg" role="group" aria-label="Basic example">
 
    <asp:LinkButton ID="Lnk_English" runat="server"  class="btn btn-info" OnClick="Lnk_Language_Click">English</asp:LinkButton>
        <asp:LinkButton ID="Lnk_Kurdish" runat="server"  class="btn btn-info" OnClick="Lnk_Language_Click">Kurdish</asp:LinkButton>
        <asp:LinkButton ID="Lnk_Arabic" runat="server"  class="btn btn-dark" OnClick="Lnk_Language_Click">Arabic</asp:LinkButton>

 

    
</div>
                                    </h4>




                    <div class="card-body">

             
                               <h4 class="card-title  font_header1"   runat="server" id="lbl_Personal_Info" >Personal Info</h4>
                                                     <div class="form-group row" style="display:none;">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label font_lbl" runat="server" id="lbl_Language">  Language</label>
                                        <div class="col-sm-9">
 <asp:DropDownList ID="ddl_Language" runat="server" class="form-control font1 b_textbox" ValidateRequestMode="Disabled"  CausesValidation="false"
     AutoPostBack="true" OnSelectedIndexChanged="ddl_Language_SelectedIndexChanged"   >
     <asp:ListItem Value="1" Text="English" />
       <asp:ListItem Value="2" Text="Kurdish" />
       <asp:ListItem Value="3" Text="Arabic" />
</asp:DropDownList>

 
 

                                        </div>
                                    </div>



<%--====================================================================--%>
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label font_lbl" runat="server" id="lbl_AcadamicYear">Acadamic Year</label>
                                        <div class="col-sm-9">
 <asp:DropDownList ID="ddl_AcadamicYear" runat="server" class="form-control font1 b_textbox" 
         DataSourceID="sds_AcadamicYear"  DataTextField="Year1"  DataValueField="AcademicYear_ID" 
   >

</asp:DropDownList>

<asp:SqlDataSource ID="sds_AcadamicYear" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand=" SELECT        AcademicYear_ID,convert(varchar(20), year(StartDate)) +' - '+ convert(varchar(20), year(EndDate)) as Year1
FROM            tblSetting_AcademicYear where  CurrentYear=1 ">

</asp:SqlDataSource>

                                        </div>
                                    </div>


                                    



                                    
<%--====================================================================--%>




              <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_fullname" >Full name</label>
                                        <div class="col-sm-9">
                                           <asp:TextBox ID="txt_StudentNameE" runat="server" class="form-control font1 b_textbox" MaxLength="100" autocomplete="off"></asp:TextBox>
   
         <asp:RequiredFieldValidator ControlToValidate="txt_StudentNameE" runat="server" ID="RequiredFieldValidator4"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" /> 
                                        </div>
                                    </div>

<%--====================================================================--%>


                            
<%--====================================================================--%>

                                      <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_Gender" >Gender</label>
                                        <div class="col-sm-9">
                                         <asp:DropDownList ID="ddl_Gender" runat="server" class="form-control font1 b_textbox" AppendDataBoundItems="True"   >

                           <asp:ListItem Text="Choose" Value="0"  />
                      <asp:ListItem Text="Male" Value="1"  />
                     <asp:ListItem Text="Female" Value="2"  />
                   </asp:DropDownList>
      
         <asp:RequiredFieldValidator ControlToValidate="ddl_Gender" runat="server" ID="RequiredFieldValidator6"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />     
 
                                        </div>
                                    </div>

<%--====================================================================--%>

                                      <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"   runat="server" id="lbl_DateOfBirth">Date Of Birth</label>
                                        <div class="col-sm-9">
                                         <asp:TextBox ID="txt_DateOfBirth" runat="server" class="form-control font1 b_textbox" TextMode="Date" autocomplete="off"  ></asp:TextBox>
   
        <asp:RequiredFieldValidator ControlToValidate="txt_DateOfBirth" runat="server" ID="RequiredFieldValidator7"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" />  
                                        </div>
                                    </div>



                         


<%--====================================================================--%>


                          



              <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_Which_school_kindergarten">  Which school /kindergarten she/he is from? </label>
                                        <div class="col-sm-9">
                                         <asp:TextBox ID="txt_WhichSchoolkindergarten" runat="server" 
                                             class="form-control font1 b_textbox" MaxLength="1000" autocomplete="off"></asp:TextBox>
   
         <asp:RequiredFieldValidator ControlToValidate="txt_WhichSchoolkindergarten" runat="server" ID="RequiredFieldValidator8"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" />  
                                        </div>
                                    </div>





                        <%--====================================================================--%>

                                      <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"   runat="server" id="lbl_What_school_kindergarten">What type of school/kindergarten she/he was at previously? </label>
                                        <div class="col-sm-9">
    <asp:DropDownList ID="ddl_WhatLangTypeSchoolKindergarten" runat="server" class="form-control font1 b_textbox" AppendDataBoundItems="True"  ValidateRequestMode="Disabled"  >

                           <asp:ListItem Text="Choose" Value="0"  />
                      <asp:ListItem value="1" Text="English"  />
                     <asp:ListItem value="2" Text="Kurdish"  />
                              <asp:ListItem value="3" Text="Arabic"  />
                       
                   </asp:DropDownList>
 <asp:RequiredFieldValidator ControlToValidate="ddl_WhatLangTypeSchoolKindergarten" runat="server" ID="RequiredFieldValidator2"  SetFocusOnError="true"
 ValidationGroup="grpRegistration"   InitialValue="0"   Text="Required" ForeColor="Red" CssClass="font1" /> 

                                        </div>
                                    </div>


<%--====================================================================--%>

              <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  
                                            runat="server" id="lbl_Current_Grade"> Current Grade?</label>
                                        <div class="col-sm-9">
                        <asp:DropDownList ID="ddl_CurrentGrade" runat="server" class="form-control font1 b_textbox" AppendDataBoundItems="True" 
                            OnSelectedIndexChanged="ddl_CurrentGrade_SelectedIndexChanged" AutoPostBack="true">

                           <asp:ListItem Text="Choose" Value="0"  />
                      <asp:ListItem Text="1" Value="1"  />
                     <asp:ListItem Text="2" Value="2"  />
                              <asp:ListItem Text="3" Value="3"  />
                              <asp:ListItem Text="4" Value="4"  />
                              <asp:ListItem Text="5" Value="5"  />
                              <asp:ListItem Text="6" Value="6"  />
                              <asp:ListItem Text="7" Value="7"  />
                              <asp:ListItem Text="8" Value="8"  />
                              <asp:ListItem Text="9" Value="9"  />
                              <asp:ListItem Text="10" Value="10"  />
                              <asp:ListItem Text="11" Value="11"  />
                              <asp:ListItem Text="12" Value="12"  />
                   </asp:DropDownList>            

 <asp:RequiredFieldValidator ControlToValidate="ddl_CurrentGrade" runat="server" ID="RequiredFieldValidator1"  SetFocusOnError="true"
 ValidationGroup="grpRegistration"   InitialValue="0"   Text="Required" ForeColor="Red" CssClass="font1" /> 
                                        </div>
                                    </div>


<%--====================================================================--%>




                                      <div class="form-group row"  runat="server" id="div_ATStudentPostion" visible="false">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"   runat="server" id="lbl_Location_Test">Location | Test </label>
                                        <div class="col-sm-9">


     <asp:DropDownList ID="ddl_ATStudentPostion" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_ATStudentPostion"  DataTextField="PName"  DataValueField="PN_ID"
         AppendDataBoundItems="True"  AutoPostBack="true" OnSelectedIndexChanged="ddl_ATStudentPostion_SelectedIndexChanged">

                           <asp:ListItem Text="Choose" Value="0"  />
                      </asp:DropDownList>

<asp:SqlDataSource ID="sds_ATStudentPostion" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT        PN_ID, PName FROM            tblATStudentPostion WHERE        (PNActive = 1)">

</asp:SqlDataSource>

         <asp:RequiredFieldValidator ControlToValidate="ddl_ATStudentPostion" runat="server" ID="rfv_ATStudentPostion"  Enabled="false"
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />



                                        </div>
                                    </div>


<%--====================================================================--%>
                         <div class="form-group row"  runat="server" id="div_AdmissionDateTest" visible="false">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_Date_Test"> Date | Test </label>
                                        <div class="col-sm-9">


     <asp:DropDownList ID="ddl_AdmissionDateTest" runat="server" class="form-control font1 b_textbox"
      AppendDataBoundItems="True"  >

  <asp:ListItem Text="Choose" Value="0"  />
                      
                     
                   </asp:DropDownList>
<span style="color:red"></span>
<asp:SqlDataSource ID="sds_AdmissionDateTest" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="ATStudentDate_select_ddl" SelectCommandType="StoredProcedure"> 
    <SelectParameters>
        <asp:ControlParameter ControlID="ddl_ATStudentPostion" Name="PN_Fkey"  Type="Int32" PropertyName="SelectedValue" DefaultValue="0" />
                <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey"  Type="Int32"   DefaultValue="0" />

        
    </SelectParameters>

</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_AdmissionDateTest" runat="server" ID="rfv_AdmissionDateTest"  Enabled="false"
 ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />



                                        </div>
                                    </div>















<%--====================================================================--%>
 
    </div>


<%--======================================================--%>
<%--======================================================--%>
<%--======================================================--%>
<%--======================================================--%>
    
                    <hr />
                    
                    <div class="card-body">
                                    <h4 class="card-title  font_header1" runat="server" id="lbl_Parent_Information">Parent Information</h4>


                        
             




            



            <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"    runat="server" id="lbl_Father_job">Father`s job   </label>
                                        <div class="col-sm-9">
  <asp:TextBox ID="txt_FatherOccupation" runat="server" class="form-control font1 b_textbox" MaxLength="500" autocomplete="off"></asp:TextBox>
     
 <asp:RequiredFieldValidator ControlToValidate="txt_FatherOccupation" runat="server" ID="RequiredFieldValidator3" 
 ValidationGroup="grpRegistration"     Text="Required" ForeColor="Red" CssClass="font1" />
                                        </div>
                                    </div>






            <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"    runat="server" id="lbl_Father_phone_number" >Father`s phone number </label>
                                        <div class="col-sm-9">
 <asp:TextBox ID="txt_FatherPhoneNo" runat="server" class="form-control font1 b_textbox" MaxLength="30" autocomplete="off"></asp:TextBox>

 <asp:RequiredFieldValidator ControlToValidate="txt_FatherPhoneNo" runat="server" ID="RequiredFieldValidator11" 
 ValidationGroup="grpRegistration"     Text="Required" ForeColor="Red" CssClass="font1" />


                                        </div>
                                    </div>













         <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"    runat="server" id="lbl_Motherjob">Mother`s job     </label>
                                        <div class="col-sm-9">
  <asp:TextBox ID="txt_MotherOccupation" runat="server" class="form-control font1 b_textbox" MaxLength="50" autocomplete="off"></asp:TextBox>
 <asp:RequiredFieldValidator ControlToValidate="txt_MotherOccupation" runat="server" ID="RequiredFieldValidator12" 
 ValidationGroup="grpRegistration"     Text="Required" ForeColor="Red" CssClass="font1" />
                                        </div>
                                    </div>




         <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"    runat="server" id="lbl_Mother_phone_number">Mother`s phone number </label>
                                        <div class="col-sm-9">
 <asp:TextBox ID="txt_MotherPhoneNo" runat="server" class="form-control font1 b_textbox" MaxLength="70" autocomplete="off"></asp:TextBox>
 <asp:RequiredFieldValidator ControlToValidate="txt_MotherPhoneNo" runat="server" ID="RequiredFieldValidator13" 
 ValidationGroup="grpRegistration"     Text="Required" ForeColor="Red" CssClass="font1" />
                                        </div>
                                    </div>







         <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"   runat="server" id="lbl_Adress">Adress    </label>
                                        <div class="col-sm-9">
 <asp:TextBox ID="txt_Adress" runat="server" class="form-control font1 b_textbox" MaxLength="1000" autocomplete="off"></asp:TextBox>
 <asp:RequiredFieldValidator ControlToValidate="txt_Adress" runat="server" ID="RequiredFieldValidator14" 
 ValidationGroup="grpRegistration"     Text="Required" ForeColor="Red" CssClass="font1" />
                                        </div>
                                    </div>

 
        <%--======================================================--%>
 <%--==================end class="card-body"====================================--%>



          </div>



<hr />

            





            <div class="card-body">



                     
    <div class="form-row">



        <div class="col-md-4">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label16" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 



                
<asp:LinkButton ID="Lnk_Insert" runat="server" class="btn btn-success font_lbl"  ValidationGroup="grpRegistration" CausesValidation="True"
    OnClick="lnk_insert_Click"  OnClientClick="return Validate_insert();"><i class="fa fa-check"></i> Save</asp:LinkButton>



        <script type="text/javascript">
                                                    function Validate_insert() {
                                                        if (Page_ClientValidate()) {
                                                            return confirm(' Are you sure to save?');
                                                        }
                                                        return false;
                                                    }
                                              </script>

  
                                  
 
                                      <%-- OnClientClick="return confirm('Are sure want to close this tab ?');"--%>
                
                    <asp:LinkButton ID="Lnk_clear" runat="server"
                    CssClass="btn  btn-info font_lbl " OnClick="Lnk_clear_Click"  ValidationGroup="clear"
                    CausesValidation="true"  Visible="false"       >Back</asp:LinkButton>



                 </div>

   <asp:Label ID="lbl_Student_ID" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>
   <asp:Label ID="lbl_result_msg" runat="server" Text="Date Added succesfully ." Visible="False"></asp:Label>
                 </div>

                        </div>
                 
        <%--======================================================--%>
 <%--==================end class="card-body"====================================--%>



                       </div>

 






 

                        <%--======================================================--%>
                          </div>
                    </div>
                </div>



        



          
 

                  
     <%--             </ContentTemplate>
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

          <!--   <script src="bootstrap/assets/libs/toastr/build/toastr.min.js"></script>-->



   <asp:SqlDataSource ID="sds_ATStudentReg" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                           
                              InsertCommand="ATStudentReg_Insert" InsertCommandType="StoredProcedure" 
                              DeleteCommand="ATStudentReg_Delete" DeleteCommandType="StoredProcedure" 
                              SelectCommand="ATStudentReg_Select" SelectCommandType="StoredProcedure"
                              UpdateCommand="ATStudentReg_update" UpdateCommandType="StoredProcedure" 

       OnInserted="sds_ATStudentReg_Inserted"

 
                           >
                           
                    
                           
                              <InsertParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
                        
                                  


                 <asp:ControlParameter ControlID="ddl_AdmissionDateTest"  Name="ATDate_Fkey" Type="Int32" PropertyName="SelectedValue" />

                <asp:ControlParameter ControlID="txt_StudentNameE"  Name="StudentNameE" Type="String" />
                <asp:ControlParameter ControlID="txt_DateOfBirth"  Name="DateOfBirth" DbType="Date" />
                <asp:ControlParameter ControlID="ddl_Gender"  Name="Gender" Type="Byte" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txt_WhichSchoolkindergarten"  Name="WhichSchoolkindergarten" Type="String" />
                <asp:ControlParameter ControlID="ddl_CurrentGrade"  Name="CurrentGrade" Type="Int16"  PropertyName="SelectedValue"/>
                <asp:ControlParameter ControlID="ddl_WhatLangTypeSchoolKindergarten"  Name="WhatLangTypeSchoolKindergarten" Type="Int16"  PropertyName="SelectedValue"/>
                <asp:ControlParameter ControlID="txt_FatherOccupation"  Name="FatherOccupation" Type="String" />
                <asp:ControlParameter ControlID="txt_FatherPhoneNo"  Name="FatherPhoneNo" Type="String" />
                <asp:ControlParameter ControlID="txt_MotherOccupation"  Name="MotherOccupation" Type="String" />
                <asp:ControlParameter ControlID="txt_MotherPhoneNo"  Name="MotherPhoneNo" Type="String" />
                <asp:ControlParameter ControlID="txt_Adress"  Name="Adress1" Type="String" />

                    <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" />
                              </InsertParameters>
                  
                              
                      
        </asp:SqlDataSource>



     




                           <%--    +++++++++++++++++++++++++++++++++++++++++++++++++++++++--%>


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


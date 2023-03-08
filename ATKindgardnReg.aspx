<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="ATKindgardnReg"  Codebehind="ATKindgardnReg.aspx.cs" %>

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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Kindgradn Registration"></asp:Label>
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
                                                     <div class="form-group row"  style="display:none;">
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




              <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_LicenceNo" >ID Number No</label>
                                        <div class="col-sm-9">
                                           <asp:TextBox ID="txt_LicenceNo" runat="server" class="form-control font1 b_textbox" MaxLength="100" autocomplete="off"></asp:TextBox>
   
         <asp:RequiredFieldValidator ControlToValidate="txt_LicenceNo" runat="server" ID="RequiredFieldValidator5"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" /> 
                                        </div>
                                    </div>


                                    
<%--====================================================================--%>




              <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_LicenceNoDate" >    ID Issuance date</label>
                                        <div class="col-sm-9">
                                           <asp:TextBox ID="txt_LicenceNoDate" runat="server" class="form-control font1 b_textbox" MaxLength="100" autocomplete="off" TextMode="Date"></asp:TextBox>
   
         <asp:RequiredFieldValidator ControlToValidate="txt_LicenceNoDate" runat="server" ID="RequiredFieldValidator9"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" /> 
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
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_LoactionBirth" >  Place of Birth</label>
                                        <div class="col-sm-9">
                                           <asp:TextBox ID="txt_LoactionBirth" runat="server" class="form-control font1 b_textbox" MaxLength="500" autocomplete="off"></asp:TextBox>
   
         <asp:RequiredFieldValidator ControlToValidate="txt_LoactionBirth" runat="server" ID="RequiredFieldValidator10"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" /> 
                                        </div>
                                    </div>


                        
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



     <div class="form-group row"    >
 <label for="fname" class="col-sm-3 text-right control-label col-form-label font_lbl" runat="server" id="lbl_Nationality">Nationality</label>
                                        <div class="col-sm-9">
                                 
     <asp:DropDownList ID="ddl_Nationality" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_Nationality"  DataTextField="NationalityName"  DataValueField="Nationality_ID"
         AppendDataBoundItems="True"    >
  <asp:ListItem Text="Choose" Value="0"  />
   </asp:DropDownList>

<asp:SqlDataSource ID="sds_Nationality" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT        Nationality_ID, NationalityName
FROM            tblSetting_Nationality">

</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_Nationality" runat="server" ID="RequiredFieldValidator15"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />     
                                         </div>
                                    </div>

                         



                                  <%--====================================================================--%>

                                      <div class="form-group row">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"   runat="server" id="lbl_LangMother"> mother tongue   </label>
                                        <div class="col-sm-9">
    <asp:DropDownList ID="ddl_LangMother" runat="server" class="form-control font1 b_textbox" AppendDataBoundItems="True"  ValidateRequestMode="Disabled"  >

                           <asp:ListItem Text="Choose" Value="0"  />
                      <asp:ListItem value="1" Text="Kurdish"  />
                     <asp:ListItem value="2" Text="English"  />
                              <asp:ListItem value="3" Text="Arabic"  />
                       
                   </asp:DropDownList>
 <asp:RequiredFieldValidator ControlToValidate="ddl_LangMother" runat="server" ID="RequiredFieldValidator2"  SetFocusOnError="true"
 ValidationGroup="grpRegistration"   InitialValue="0"   Text="Required" ForeColor="Red" CssClass="font1" /> 

                                        </div>
                                    </div>


<%--====================================================================--%>


                          



              <div class="form-group row" style="display:none;">
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_PassportName"> Passport      </label>
                                        <div class="col-sm-9">
                                         <asp:TextBox ID="txt_PassportName" runat="server"  Text="0"
                                             class="form-control font1 b_textbox" MaxLength="500" autocomplete="off"></asp:TextBox>
   
<%--         <asp:RequiredFieldValidator ControlToValidate="txt_PassportName" runat="server" ID="RequiredFieldValidator8"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" /> --%> 
                                        </div>
                                    </div>





<%--====================================================================--%>

<div class="form-group row">
 <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_KolanNo">   Street No  </label>
                                        <div class="col-sm-9">
 <asp:TextBox ID="txt_KolanNo" runat="server" class="form-control font1 b_textbox" MaxLength="100" autocomplete="off"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txt_KolanNo" runat="server" ID="RequiredFieldValidator3"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" />  
 </div>
 </div>

<%--====================================================================--%>
<div class="form-group row">
 <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_GarkNo">   Qtr. No  </label>
                                        <div class="col-sm-9">
 <asp:TextBox ID="txt_GarkNo" runat="server" class="form-control font1 b_textbox" MaxLength="100" autocomplete="off"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txt_GarkNo" runat="server" ID="RequiredFieldValidator13"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" />  
 </div>
 </div>

<%--====================================================================--%>


<div class="form-group row">
 <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_XanwNo">   House No </label>
                                        <div class="col-sm-9">
 <asp:TextBox ID="txt_XanwNo" runat="server" class="form-control font1 b_textbox" MaxLength="100" autocomplete="off"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txt_XanwNo" runat="server" ID="RequiredFieldValidator14"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" />  
 </div>
 </div>

               


                 <%--====================================================================--%>


       <div class="form-group row"    >
 <label for="fname" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_BloodGroup"> Blood Group </label>
                                        <div class="col-sm-9">
                                 
     <asp:DropDownList ID="ddl_BloodGroup" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_BloodGroup"  DataTextField="BloodGroupName"  DataValueField="BloodGroup_ID"
         AppendDataBoundItems="True"    >

                           <asp:ListItem Text="Choose" Value="0"  />
                      
                     
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_BloodGroup" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT        BloodGroup_ID, BloodGroupName
FROM            tblSetting_BloodGroup">

</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_BloodGroup" runat="server" ID="RequiredFieldValidator16"   SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />   
                                         </div>
                                    </div>
                        
 <%--====================================================================--%>





<div class="form-group row">
 <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_HealthNote">   Health Status </label>
                                        <div class="col-sm-9">
 <asp:TextBox ID="txt_HealthNote" runat="server" class="form-control font1 b_textbox" MaxLength="500" autocomplete="off"></asp:TextBox>

         <asp:RequiredFieldValidator ControlToValidate="txt_HealthNote" runat="server" ID="RequiredFieldValidator17"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" />  

 </div>
 </div>


 <%--====================================================================--%>





<div class="form-group row">
 <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_CaseNote">  If the student has a special need or case, please clarify.  </label>
                                        <div class="col-sm-9">
 <asp:TextBox ID="txt_CaseNote" runat="server" class="form-control font1 b_textbox" MaxLength="500" autocomplete="off"></asp:TextBox>

 

 </div>
 </div>


<%--====================================================================--%>

                        
               <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_FatherName">Father Name</label>
                                        <div class="col-sm-9">
 <asp:TextBox ID="txt_FatherName" runat="server" class="form-control font1 b_textbox" MaxLength="70" autocomplete="off"></asp:TextBox>

                                                     <asp:RequiredFieldValidator ControlToValidate="txt_FatherName" runat="server" ID="RequiredFieldValidator18"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" />  
                                        </div>
                                    </div>
<%--====================================================================--%>


            <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl "    runat="server" id="lbl_Father_phone_number" >Father`s phone number </label>
                                        <div class="col-sm-9">
 <asp:TextBox ID="txt_FatherPhoneNo" runat="server" class="form-control font1 b_textbox" MaxLength="30" autocomplete="off"></asp:TextBox>

 <asp:RequiredFieldValidator ControlToValidate="txt_FatherPhoneNo" runat="server" ID="RequiredFieldValidator11" 
 ValidationGroup="grpRegistration"     Text="Required" ForeColor="Red" CssClass="font1" />


                                        </div>
                                    </div>
 
                        
                        <%--====================================================================--%>


            <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_FatherJob">Fathers Occupation   </label>
                                        <div class="col-sm-9">
  <asp:TextBox ID="txt_FatherJob" runat="server" class="form-control font1 b_textbox" MaxLength="200" autocomplete="off"></asp:TextBox>

 <asp:RequiredFieldValidator ControlToValidate="txt_FatherJob" runat="server" ID="RequiredFieldValidator19"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" />  
                                        </div>
                                    </div>

<%--====================================================================--%>
         <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_FatherJobLoaction">Fathers place of work </label>
                                        <div class="col-sm-9">
  <asp:TextBox ID="txt_FatherJobLoaction" runat="server" class="form-control font1 b_textbox" MaxLength="200" autocomplete="off"></asp:TextBox>


                                        </div>
                                    </div>
               


<%--====================================================================--%>

         <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_KartiZanyariNo">Father's information card number</label>
                                        <div class="col-sm-9">
  <asp:TextBox ID="txt_KartiZanyariNo" runat="server" class="form-control font1 b_textbox" MaxLength="200" autocomplete="off"></asp:TextBox>

                                             <asp:RequiredFieldValidator ControlToValidate="txt_KartiZanyariNo" runat="server" ID="RequiredFieldValidator20"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" /> 
                                        </div>
                                    </div>





 



<%--====================================================================--%>

         <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_KartiZanyariDate"> Information card date</label>
                                        <div class="col-sm-9">
  <asp:TextBox ID="txt_KartiZanyariDate" runat="server" class="form-control font1 b_textbox" MaxLength="200" autocomplete="off" TextMode="Date"></asp:TextBox>
         
                                            <asp:RequiredFieldValidator ControlToValidate="txt_KartiZanyariDate" runat="server" ID="RequiredFieldValidator21"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" /> 
                                        </div>
                                    </div>



<%--====================================================================--%>

<div class="form-group row"   >
<label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_KartiZanyariLoaction">Information card issuance location</label>
<div class="col-sm-9">
  <asp:TextBox ID="txt_KartiZanyariLoaction" runat="server" class="form-control font1 b_textbox" MaxLength="200" autocomplete="off"  ></asp:TextBox>

       <asp:RequiredFieldValidator ControlToValidate="txt_KartiZanyariLoaction" runat="server" ID="RequiredFieldValidator22"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" /> 
   </div>
 </div>









<%--====================================================================--%>

                        
               <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_MotherName">Mother Name</label>
                                        <div class="col-sm-9">
 <asp:TextBox ID="txt_MotherName" runat="server" class="form-control font1 b_textbox" MaxLength="70" autocomplete="off"></asp:TextBox>
       <asp:RequiredFieldValidator ControlToValidate="txt_MotherName" runat="server" ID="RequiredFieldValidator23"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" /> 
                                        </div>
                                    </div>
<%--====================================================================--%>


            <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"     runat="server" id="lbl_MotherPhoneNo">Mother`s phone number </label>
                                        <div class="col-sm-9">
 <asp:TextBox ID="txt_MotherPhoneNo" runat="server" class="form-control font1 b_textbox" MaxLength="30" autocomplete="off"></asp:TextBox>

 <asp:RequiredFieldValidator ControlToValidate="txt_MotherPhoneNo" runat="server" ID="RequiredFieldValidator1" 
 ValidationGroup="grpRegistration"     Text="Required" ForeColor="Red" CssClass="font1" />


                                        </div>
                                    </div>
 
                        
                        <%--====================================================================--%>


            <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_MotherJob">Mothers Occupation   </label>
                                        <div class="col-sm-9">
  <asp:TextBox ID="txt_MotherJob" runat="server" class="form-control font1 b_textbox" MaxLength="200" autocomplete="off"></asp:TextBox>

                                        </div>
                                    </div>




               <%--====================================================================--%>


            <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_MotherJobLoaction">  Mother place of work</label>
                                        <div class="col-sm-9">
  <asp:TextBox ID="txt_MotherJobLoaction" runat="server" class="form-control font1 b_textbox" MaxLength="200" autocomplete="off"></asp:TextBox>

                                        </div>
                                    </div>

 


 




<%--====================================================================--%>


<div class="form-group row">
 <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_FMTogether">    Parent's live together?  </label>
                                        <div class="col-sm-9">
 <asp:DropDownList ID="ddl_FMTogether" runat="server" class="form-control font1 b_textbox"
         AppendDataBoundItems="True"   AutoPostBack="true" OnSelectedIndexChanged="ddl_FMTogether_SelectedIndexChanged" >

          <asp:ListItem Text="Choose" Value="0"  />
        <asp:ListItem Text="Yes" Value="1"  />
          <asp:ListItem Text="No" Value="2"  />
                   </asp:DropDownList>  
       <asp:RequiredFieldValidator ControlToValidate="ddl_FMTogether" runat="server" ID="RequiredFieldValidator24"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" InitialValue="0" /> 
 </div>
 </div>







<%--====================================================================--%>


<div class="form-group row" runat="server" ID="div_WhichLifeFM" visible="false">
 <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_WhichLifeFM">   Student lives with father or mother?  </label>
                                        <div class="col-sm-9">
 <asp:DropDownList ID="ddl_WhichLifeFM" runat="server" class="form-control font1 b_textbox"
     
         AppendDataBoundItems="True"   >

                           <asp:ListItem Text="Choose" Value="0"  />
        <asp:ListItem Text="Father" Value="1"  />
              <asp:ListItem Text="Mother" Value="2"  />
                   </asp:DropDownList>  
       <asp:RequiredFieldValidator ControlToValidate="ddl_WhichLifeFM" runat="server" ID="rfv_ddl_WhichLifeFM"  SetFocusOnError="true" Enabled="false"
                                    ValidationGroup="grpRegistration"      Text="Required" ForeColor="Red" CssClass="font1" InitialValue="0" /> 
 </div>
 </div>

          <%--====================================================================--%>


            <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_SBNo">  No of Sister & Brother</label>
                                        <div class="col-sm-9">
  <asp:TextBox ID="txt_SBNo" runat="server" class="form-control font1 b_textbox" MaxLength="50" autocomplete="off"></asp:TextBox>

                                        </div>
                                    </div>

              <%--====================================================================--%>


            <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_SqunceBetweenSB">  Students sequence among brothers and sisters</label>
                                        <div class="col-sm-9">
  <asp:TextBox ID="txt_SqunceBetweenSB" runat="server" class="form-control font1 b_textbox" MaxLength="50" autocomplete="off"></asp:TextBox>

                                        </div>
                                    </div>






              <%--====================================================================--%>


            <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_Dream">  Student Hobbies</label>
                                        <div class="col-sm-9">
  <asp:TextBox ID="txt_Dream" runat="server" class="form-control font1 b_textbox" MaxLength="200" autocomplete="off"></asp:TextBox>

                                        </div>
                                    </div>


<%--====================================================================--%>


<div class="form-group row">
 <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_AvaRoom">   Does the student has his/her own room.  </label>
                                        <div class="col-sm-9">
 <asp:DropDownList ID="ddl_AvaRoom" runat="server" class="form-control font1 b_textbox"
     
         AppendDataBoundItems="True"   >

                           <asp:ListItem Text="Choose" Value="0"  />
        <asp:ListItem Text="Yes" Value="1"  />
              <asp:ListItem Text="No" Value="2"  />
                   </asp:DropDownList>  
 
 </div>
 </div>


 <%--====================================================================--%>





     <div class="form-group row"    >
 <label for="fname" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_Religion">Religion</label>
                                        <div class="col-sm-9">
                                 
     <asp:DropDownList ID="ddl_Religion" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_Religion"  DataTextField="ReligionName"  DataValueField="Religion_ID"
         AppendDataBoundItems="True"    >

                           <asp:ListItem Text="Choose" Value="0"  />
                      
                     
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_Religion" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT        Religion_ID, ReligionName
FROM            tblSetting_Religion">

</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_Religion" runat="server" ID="RequiredFieldValidator12"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />   
     
                                         </div>
                                    </div>

<%--====================================================================--%>


<div class="form-group row">
 <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_Stage">   Stage  </label>
                                        <div class="col-sm-9">
 <asp:DropDownList ID="ddl_Stage" runat="server" class="form-control font1 b_textbox"
     
         AppendDataBoundItems="True"   >

        <asp:ListItem Text="Choose" Value="0"  />
        <asp:ListItem Text="1" Value="1"  />
              <asp:ListItem Text="2" Value="2"  />
                   </asp:DropDownList>  
    <asp:RequiredFieldValidator ControlToValidate="ddl_Stage" runat="server" ID="RequiredFieldValidator26"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />  
 </div>
 </div>


<%--====================================================================--%>


<div class="form-group row">
 <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_TypeKindgardn">   Previous Kindergarten | Language  </label>
                                        <div class="col-sm-9">
 <asp:DropDownList ID="ddl_TypeKindgardn" runat="server" class="form-control font1 b_textbox"
     
         AppendDataBoundItems="True"   >

 <asp:ListItem Text="Choose" Value="0"  />
        <asp:ListItem Text="English" Value="1"  />
              <asp:ListItem Text="Kurdish" Value="2"  />
         <asp:ListItem Text="Arabic" Value="3"  />
                   </asp:DropDownList>  


    <asp:RequiredFieldValidator ControlToValidate="ddl_TypeKindgardn" runat="server" ID="RequiredFieldValidator27"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1"   />  


 </div>
 </div>



              <%--====================================================================--%>


            <div class="form-group row"   >
                                        <label for="cono1" class="col-sm-3 text-right control-label col-form-label font_lbl"  runat="server" id="lbl_PerivousKindgardn">  Previous Kindergarten</label>
                                        <div class="col-sm-9">
  <asp:TextBox ID="txt_PerivousKindgardn" runat="server" class="form-control font1 b_textbox" MaxLength="200" autocomplete="off"></asp:TextBox>

                                        </div>
                                    </div>





    </div>


<%--======================================================--%>
<%--======================================================--%>
<%--======================================================--%>
<%--======================================================--%>
    
                  
                    





            





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

 

 
                                      
                
                    <asp:LinkButton ID="Lnk_clear" runat="server" OnClientClick="return confirm('Are sure want to close this tab ?');"
                    CssClass="btn  btn-info font_lbl " OnClick="Lnk_clear_Click"  ValidationGroup="clear"
                    CausesValidation="true"      Visible="false"   >Back</asp:LinkButton>



                 </div>

   <asp:Label ID="lbl_OrderKindgardn_ID" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>
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

    <asp:SqlDataSource ID="sds_Student_Order_Kindgardn" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                           
                              InsertCommand="Student_Order_Kindgardn_Insert" InsertCommandType="StoredProcedure" 
                              DeleteCommand="Student_Order_Kindgardn_Delete" DeleteCommandType="StoredProcedure" 
                              SelectCommand="Student_Order_Kindgardn_SelectID" SelectCommandType="StoredProcedure"
                              UpdateCommand="Student_Order_Kindgardn_Update" UpdateCommandType="StoredProcedure" 

        OnInserted="sds_Student_Order_Kindgardn_Inserted"

                           >
                           
               
                           
                              <InsertParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
                              <asp:ControlParameter ControlID="txt_StudentNameE"  Name="StudentNameE" Type="String" />
                                          <asp:ControlParameter ControlID="txt_LicenceNo"  Name="LicenceNo" Type="String" />
                                          <asp:ControlParameter ControlID="txt_LicenceNoDate"  DbType="Date" Name="LicenceNoDate" />
                                          <asp:ControlParameter ControlID="txt_DateOfBirth"  DbType="Date" Name="DateOfBirth" />
                                          <asp:ControlParameter ControlID="txt_LoactionBirth"  Name="LoactionBirth" Type="String" />
                                          <asp:ControlParameter ControlID="ddl_Gender"  Name="Gender" Type="Byte" />
                                          <asp:ControlParameter ControlID="ddl_Nationality"  Name="Nationality_Fkey" Type="Int32" />
                                          <asp:ControlParameter ControlID="ddl_LangMother"  Name="LangMother" Type="Byte" />
                                          <asp:ControlParameter ControlID="txt_PassportName"  Name="PassPortName" Type="String" />
                                          <asp:ControlParameter ControlID="txt_KolanNo"  Name="GarkNo" Type="String" />
                                          <asp:ControlParameter ControlID="txt_GarkNo"  Name="KolanNo" Type="String" />
                                          <asp:ControlParameter ControlID="txt_XanwNo"  Name="XanwNo" Type="String" />
                                          <asp:ControlParameter ControlID="ddl_BloodGroup"  Name="BloodGroup_Fkey" Type="Int32" />
                                          <asp:ControlParameter ControlID="txt_HealthNote"  Name="HealthNote" Type="String" />
                                          <asp:ControlParameter ControlID="txt_CaseNote"  Name="CaseNote" Type="String" />
                                          <asp:ControlParameter ControlID="txt_FatherName"  Name="FatherName" Type="String" />
                                          <asp:ControlParameter ControlID="txt_FatherPhoneNo"  Name="FatherPhoneNo" Type="String" />
                                          <asp:ControlParameter ControlID="txt_FatherJob"  Name="FatherJob" Type="String" />
                                          <asp:ControlParameter ControlID="txt_FatherJobLoaction"  Name="FatherJobLoaction" Type="String" />
                                          <asp:ControlParameter ControlID="txt_KartiZanyariNo"  Name="KartiZanyariNo" Type="String" />
                                          <asp:ControlParameter ControlID="txt_KartiZanyariDate"  DbType="Date" Name="KartiZanyariDate" />
                                          <asp:ControlParameter ControlID="txt_KartiZanyariLoaction"  Name="KartiZanyariLoaction" Type="String" />
                                          <asp:ControlParameter ControlID="txt_MotherName"  Name="MotherName" Type="String" />
                                          <asp:ControlParameter ControlID="txt_MotherPhoneNo"  Name="MotherPhoneNo" Type="String" />
                                          <asp:ControlParameter ControlID="txt_MotherJob"  Name="MotherJob" Type="String" />
                                          <asp:ControlParameter ControlID="txt_MotherJobLoaction"  Name="MotherJobLoaction" Type="String" />
                                          <asp:ControlParameter ControlID="ddl_FMTogether"  Name="FMTogether" Type="Byte" />
                                          <asp:ControlParameter ControlID="ddl_WhichLifeFM"  Name="WhichLifeFM" Type="String" />
                                          <asp:ControlParameter ControlID="txt_SBNo"  Name="SBNo" Type="String" />
                                          <asp:ControlParameter ControlID="txt_SqunceBetweenSB"  Name="SqunceBetweenSB" Type="String" />
                                          <asp:ControlParameter ControlID="txt_Dream"  Name="Dream" Type="String" />
                                          <asp:ControlParameter ControlID="ddl_AvaRoom"  Name="AvaRoom" Type="Byte" />
                                          <asp:ControlParameter ControlID="ddl_Religion"  Name="Religion_Fky" Type="Int32" />
                                          <asp:ControlParameter ControlID="ddl_Stage"  Name="Stage" Type="Byte" />
                                          <asp:ControlParameter ControlID="ddl_TypeKindgardn"  Name="TypeKindgardn" Type="Byte" />
                                          <asp:ControlParameter ControlID="txt_PerivousKindgardn"  Name="PerivousKindgardn" Type="String" />
                    <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" />
                              </InsertParameters>
                      
            
                      
        </asp:SqlDataSource>

   



     




 <%-- ===================================================================================--%>


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

 <%-- ===================================================================================--%>


    
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


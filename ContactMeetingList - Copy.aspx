<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" Inherits="ContactMeetingList_Copy" Codebehind="ContactMeetingList_Copy.aspx.cs" %>

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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Meeting List"></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" style="display:none !important;"></asp:Label>

                      <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>

                    </h6>
                </div>

            </div>
        </div>

        <br />

     <%--      <asp:UpdatePanel runat="server" ID="Upnl" >
        <ContentTemplate>--%>

        <div class="container-fluid">
            <!-- ============================================================== -->



            <!-- Start Page Content -->

            <div class="col-12">
                <div class="card">




 <%--====================================================================--%>
 <%--====================================================================--%>


        <div class="card-body">
                                    <h4 class="card-title">Schedule a Meeting</h4>
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Topic</label>
                                        <div class="col-sm-9">
 

 <asp:TextBox ID="txt_Topic" runat="server" class="form-control font1 b_textbox" MaxLength="100"  autocomplete="off"  Text="Topic" ></asp:TextBox>
                                              <asp:RequiredFieldValidator ControlToValidate="txt_Topic" runat="server" ID="RequiredFieldValidator2" 
                                    ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" SetFocusOnError="true" />


                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Description (Optional)</label>
                                        <div class="col-sm-9">
 
                                             <asp:TextBox ID="txt_agenda" runat="server" class="form-control font1 b_textbox" MaxLength="250" autocomplete="off"  
                                                 Text="Description Description Description" 
                                                 ></asp:TextBox>


                                        </div>
                                    </div>
                            
                             
                                </div>
                                <hr>




                     <%--====================================================================--%>
 <%--====================================================================--%>





                            <div class="card-body">
                                        <h4 class="card-title">Time  </h4>
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">When</label>
                                        <div class="col-sm-9">
 
 <asp:TextBox ID="txt_start_time" runat="server" class="form-control font1 b_textbox"  
         TextMode="DateTimeLocal" 
     autocomplete="off"   ></asp:TextBox>
    


         <asp:RequiredFieldValidator ControlToValidate="txt_start_time" runat="server" ID="RequiredFieldValidator3" SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />


                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label"> Duration</label>
                                        <div class="col-sm-9">
 
            
 <asp:TextBox ID="txt_Duration" runat="server" class="form-control font1 b_textbox" MaxLength="3"
           onkeypress="return(KeyPressOrder(this,event))"     Text="30" 
     autocomplete="off" onfocus = "this.select();"  ></asp:TextBox>
    


         <asp:RequiredFieldValidator ControlToValidate="txt_Duration" runat="server" ID="RequiredFieldValidator1"  SetFocusOnError="true"
                                    ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                                        </div>
                                    </div>
                            
                             
                                </div>
                       <hr>
 <%--====================================================================--%>
 <%--====================================================================--%>







                            <div class="card-body">
                                  <h4 class="card-title"> Video  </h4>
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">    Host</label>
                                        <div class="col-sm-9">
 
   
                 <asp:DropDownList ID="ddl_host_video" runat="server"  class="form-control font1 b_textbox">
                     <asp:ListItem  Value="false" Text="OFF" />
                       <asp:ListItem  Value="true" Text="ON" />
                 </asp:DropDownList>

                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label"> Participant</label>
                                        <div class="col-sm-9">
 
            <asp:DropDownList ID="ddl_participant_video" runat="server"  class="form-control font1 b_textbox">
                     <asp:ListItem  Value="false" Text="OFF" />
                       <asp:ListItem  Value="true" Text="ON" />
                 </asp:DropDownList>

                             

                                        </div>
                                    </div>
                            
                             
                                </div>


                       <hr>
 <%--====================================================================--%>




                    
                            <div class="card-body">
                                  <h4 class="card-title"> audio  </h4>
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">    Type</label>
                                        <div class="col-sm-9">
 
   
                  <asp:DropDownList ID="ddl_audio" runat="server"  class="form-control font1 b_textbox">
                     <asp:ListItem  Value="both" Text="both" />
                       <asp:ListItem  Value="telephony" Text="telephony" />
                       <asp:ListItem  Value="computer Audio" Text="computer Audio" />
                 </asp:DropDownList>

                                        </div>
                                    </div>
                     
                            
                             
                                </div>

                       <hr>

                    
                     <%--====================================================================--%>
 <%--====================================================================--%>


                             
                            <div class="card-body">
                                  <h4 class="card-title"> Meeting Options  </h4>
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">    join before host</label>
                                        <div class="col-sm-9">
 
          <asp:DropDownList ID="ddl_join_before_host" runat="server"  class="form-control font1 b_textbox">
                  
                       <asp:ListItem  Value="false" Text="Disable " />
                       <asp:ListItem  Value="true" Text="Enable " />
                 </asp:DropDownList>

                                        </div>
                                    </div>
                     
                            

               <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">   participants upon entry</label>
                                        <div class="col-sm-9">
 
           <asp:DropDownList ID="ddl_participants_upon_entry" runat="server"  class="form-control font1 b_textbox">
                  
                       <asp:ListItem  Value="false" Text="Mute " />
                       <asp:ListItem  Value="true" Text="Unmute " />
                 </asp:DropDownList>

                                        </div>
                                    </div>



                                       <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Record the meeting automatically  </label>
                                        <div class="col-sm-9">
 
       <asp:DropDownList ID="ddl_auto_recording" runat="server"  class="form-control font1 b_textbox">
                  
                       <asp:ListItem  Value="none" Text="None " />
                       <asp:ListItem  Value="local" Text="Local " />
                  <%--    <asp:ListItem  Value="cloud" Text="Cloud " />--%>
                 </asp:DropDownList>

                                        </div>
                                    </div>
                             
                                </div>



   <hr>



 <%--====================================================================--%>




                    <div class="card-body">


                         
                    <div class="form-row">              

        <div class="col-md-3">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label16" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 

                                           <asp:Button ID="btn_Insert" runat="server" Text="Add" CssClass="btn  waves-light btn-success font1"
                                               OnClick="btn_insert_Click" CausesValidation="True" ValidationGroup="grpRegistration"  />


                                        <asp:Button ID="btn_Update" runat="server" Text=" Save"   CssClass="btn  btn-warning font1" 
                                            OnClick="btn_Update_Click" CausesValidation="True" ValidationGroup="grpRegistration" 
                                               OnClientClick="return Validate();" Visible="False" />
 


                
                           
               <script type="text/javascript">
                                                    function Validate() {
                                                        if (Page_ClientValidate()) {
                                                            return confirm(' Are you sure to save?');
                                                        }
                                                        return false;
                                                    }
                                              </script>


                                        <asp:Button ID="btn_Delete" runat="server" Text="Delete"   CssClass="btn   waves-light btn-danger font1"
                                            OnClick="btn_delete_Click" CausesValidation="False" formnovalidate  
                                          OnClientClick="return Validate_delete();" Visible="False" />
                       <script type="text/javascript">
                                                    function Validate_delete() {
                                                        if (Page_ClientValidate()) {
                                                            return confirm('  are you sure delete   ?');
                                                        }
                                                        return false;
                                                    }
                                              </script>

                                         <asp:Button ID="btn_clear" runat="server" Text="Clear" CssClass="btn  waves-light btn-info font1"
                                             OnClick="btn_clear_Click" formnovalidate CausesValidation="False"     />


                 </div>

   <asp:Label ID="lbl_Meeting_ID" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>


   <asp:Label ID="lbl_ZooMeeting_Id_online" runat="server" Font-Bold="True" ForeColor="Black"  ></asp:Label>
            
   <asp:Label ID="lbl_result_msg" runat="server" Text="Date Added succesfully ." Visible="False"></asp:Label>

   <asp:Label ID="lbl_inserted_Api" runat="server" Text=""  Visible="False" ></asp:Label>


             <asp:Label ID="lbl_Api_print" runat="server" Text=""  ForeColor="Red"  Visible="False" ></asp:Label>



                 </div>

                        </div>

                     
  <%--======================================================--%>
 

               </div>       
                    </div>
                </div>



                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">










                                <div class="table-responsive font1" style="overflow-x: scroll">


<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField DataField="topic" HeaderText="topic" />
            <asp:BoundField DataField="id" HeaderText="id" />
            
        </Columns>
    </asp:GridView>








                                    <asp:GridView ID="Gridview1" DataSourceID="sds_ContactMeetingZoom"
                                        runat="server" AutoGenerateColumns="False" DataKeyNames="Meeting_ID"
                                        CellPadding="0" CssClass=" " AllowPaging="True"  
                                        Width="100%" GridLines="None" PageSize="30">



                                        <Columns>   
                                            
                                            <asp:TemplateField ShowHeader="False"  >
                                                <ItemTemplate>
                                                    &nbsp;
                             

                                             <div class="btn-group">
    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="ti-settings"></i>
    </button>
    <div class="dropdown-menu animated flipInY">
        <a class="dropdown-item" href="FeeVoucharPayment.aspx?FeeVoucher_ID=<%# Eval("id") %>">payment</a>

      
        <a class="dropdown-item" href="FeeVoucharPaymentDiscount.aspx?FeeVoucher_ID=<%# Eval("id") %>"> Discount </a>
        <a class="dropdown-item" href="javascript:void(0)">Invoice  </a>
<%--        <div class="dropdown-divider"></div>
        <a class="dropdown-item" href="javascript:void(0)">Separated</a>--%>
    </div>
</div>
 
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                              


                                       <asp:LinkButton ID="lnk_update" runat="server" OnClick="lnk_update_Click" ToolTip="Edit"><i style="font-size:24px" class="fa" >&#xf044;</i> </asp:LinkButton>

                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Meeting_ID" >
                                                <ItemTemplate>
                                                     <asp:Label ID="lbl_Meeting_ID_GV" runat="server" Text='<%# Eval("Meeting_ID") %>'></asp:Label>


                                                    

                                                </ItemTemplate>
                                            </asp:TemplateField>




                                                               <asp:TemplateField HeaderText="ID" >
                                                <ItemTemplate>
                                                     <asp:Label ID="lbl_ID_GV" runat="server" Text='<%# Eval("id") %>'></asp:Label>


                                                    

                                                </ItemTemplate>
                                            </asp:TemplateField>


                                              
                                               <asp:TemplateField HeaderText="topic"   >
                                              
                                                <ItemTemplate>
                                                     <asp:Label ID="lbl_Topic" runat="server" Text='<%# Eval("Topic") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                  <asp:TemplateField HeaderText="Descrption"   >
                                              
                                                <ItemTemplate>
               <asp:Label ID="lbl_agenda" runat="server" Text='<%# Eval("agenda") %>'></asp:Label>

                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                  <asp:TemplateField HeaderText="StartTime"   >
                                              
                                                <ItemTemplate>
                                                     

                <asp:Label ID="lbl_StartTime" runat="server" Text='<%# Eval("start_time") %>'></asp:Label>

                                                </ItemTemplate>
                                            </asp:TemplateField>


                                                   <asp:TemplateField HeaderText="Duration"   >
                                              
                                                <ItemTemplate>
                                                 
                          <asp:Label ID="lbl_Duration" runat="server" Text='<%# Eval("duration") %>'></asp:Label>

                                                    
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            

                                                  <asp:TemplateField HeaderText="start_url"   Visible="false"  >
                                              
                                                <ItemTemplate>
 <asp:Label ID="lbl_start_url" runat="server" Text='<%# Eval("start_url") %>'></asp:Label>

                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                       <asp:TemplateField HeaderText="join_url"   >
                                              
                                                <ItemTemplate>
                                                     <asp:Label ID="lbl_join_url" runat="server" Text='<%# Eval("join_url") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                              
                         


                                                <asp:TemplateField HeaderText="host_video"   >
                                              
                                                <ItemTemplate>
                                                     <asp:Label ID="lbl_host_video" runat="server" Text='<%# Eval("host_video") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                           
                                              <asp:TemplateField HeaderText="approval_type"   >
                                              
                                                <ItemTemplate>
                                                     <asp:Label ID="lbl_approval_type" runat="server" Text='<%# Eval("approval_type") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                               
                                              <asp:TemplateField HeaderText="audio"   >
                                              
                                                <ItemTemplate>
                                                     <asp:Label ID="lbl_audio" runat="server" Text='<%# Eval("audio") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                               <asp:TemplateField HeaderText="auto_recording"   >
                                              
                                                <ItemTemplate>
                                                     <asp:Label ID="lbl_auto_recording" runat="server" Text='<%# Eval("auto_recording") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>



                                            
                                                     <asp:TemplateField HeaderText=" "   >
                                              
                                                <ItemTemplate>
                                                     
                                     <a target="_blank"  href="ContactMeetingList_API_Show_NewVersion.aspx?id=<%# Eval("id") %>">Start </a>
                                                 </ItemTemplate>
                                            </asp:TemplateField>


                                        </Columns>


                                        <HeaderStyle CssClass="header_Grid" BackColor="#233242" />

                                        <PagerStyle CssClass="pagination-ys" />
                                        <RowStyle Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" BorderColor="#999999" BorderStyle="None" />
                                        <AlternatingRowStyle BackColor="#eeeeee" Height="40px" />
                                    </asp:GridView>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
   
        <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="4000" OnTick="Timer1_Tick"></asp:Timer>


          <%--        
                  </ContentTemplate>
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



 <asp:SqlDataSource ID="sds_ContactMeetingZoom" runat="server"
        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
        SelectCommand="ContactMeetingZoom_Select" DeleteCommand="ContactMeetingZoom_Delete"
        DeleteCommandType="StoredProcedure" InsertCommand="ContactMeetingZoom_Insert"
        InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure"
        UpdateCommand="ContactMeetingZoom_Update" UpdateCommandType="StoredProcedure"
     
     OnInserted="sds_ContactMeetingZoom_Inserted"
     OnUpdated="sds_ContactMeetingZoom_Updated"
     OnDeleted="sds_ContactMeetingZoom_Deleted"
     
     
     
     >
        <DeleteParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
     <asp:ControlParameter ControlID="lbl_Meeting_ID"  Name="Meeting_ID" Type="Int32" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </DeleteParameters>
        <InsertParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
        
            <asp:Parameter Name="uuid" Type="String" />
            <asp:Parameter Name="id" Type="String" />
            <asp:Parameter Name="host_id1" Type="String" />
            <asp:Parameter Name="Topic" Type="String" />
            <asp:Parameter Name="type1" Type="String" />

            <asp:Parameter Name="status1" Type="String" />
            <asp:Parameter Name="start_time" Type="DateTime" />
            <asp:Parameter Name="Duration" Type="Int32" />
            <asp:Parameter Name="timezone" Type="String" />
            <asp:Parameter Name="agenda" Type="String" />

            <asp:Parameter Name="created_at" Type="String" />
            <asp:Parameter Name="start_url" Type="String" />
            <asp:Parameter Name="join_url" Type="String" />
            <asp:Parameter Name="host_video" Type="String" />
            <asp:Parameter Name="participant_video" Type="String" />

            <asp:Parameter Name="cn_meeting" Type="String" />
            <asp:Parameter Name="in_meeting" Type="String" />
            <asp:Parameter Name="join_before_host" Type="String" />
            <asp:Parameter Name="mute_upon_entry" Type="String" />
            <asp:Parameter Name="watermark" Type="String" />

            <asp:Parameter Name="use_pmi" Type="String" />
            <asp:Parameter Name="approval_type" Type="String" />
            <asp:Parameter Name="audio" Type="String" />
            <asp:Parameter Name="auto_recording" Type="String" />
            <asp:Parameter Name="enforce_login" Type="String" />

            <asp:Parameter Name="enforce_login_domains" Type="String" />
            <asp:Parameter Name="alternative_hosts" Type="String" />
            <asp:Parameter Name="close_registration" Type="String" />
            <asp:Parameter Name="registrants_confirmation_email" Type="String" />
            <asp:Parameter Name="waiting_room" Type="String" />

            <asp:Parameter Name="registrants_email_notification" Type="String" />
            <asp:Parameter Name="meeting_authentication" Type="String" />

           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </InsertParameters>
     

      
               
        <UpdateParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
     <asp:ControlParameter ControlID="lbl_Meeting_ID"  Name="Meeting_ID" Type="Int32" />
   
            <asp:Parameter Name="uuid" Type="String" />
            <asp:Parameter Name="id" Type="String" />
            <asp:Parameter Name="host_id1" Type="String" />
            <asp:Parameter Name="Topic" Type="String" />
            <asp:Parameter Name="type1" Type="String" />

            <asp:Parameter Name="status1" Type="String" />
            <asp:Parameter Name="start_time" Type="DateTime" />
            <asp:Parameter Name="Duration" Type="Int32" />
            <asp:Parameter Name="timezone" Type="String" />
            <asp:Parameter Name="agenda" Type="String" />

            <asp:Parameter Name="created_at" Type="String" />
            <asp:Parameter Name="start_url" Type="String" />
            <asp:Parameter Name="join_url" Type="String" />
            <asp:Parameter Name="host_video" Type="String" />
            <asp:Parameter Name="participant_video" Type="String" />

            <asp:Parameter Name="cn_meeting" Type="String" />
            <asp:Parameter Name="in_meeting" Type="String" />
            <asp:Parameter Name="join_before_host" Type="String" />
            <asp:Parameter Name="mute_upon_entry" Type="String" />
            <asp:Parameter Name="watermark" Type="String" />

            <asp:Parameter Name="use_pmi" Type="String" />
            <asp:Parameter Name="approval_type" Type="String" />
            <asp:Parameter Name="audio" Type="String" />
            <asp:Parameter Name="auto_recording" Type="String" />
            <asp:Parameter Name="enforce_login" Type="String" />

            <asp:Parameter Name="enforce_login_domains" Type="String" />
            <asp:Parameter Name="alternative_hosts" Type="String" />
            <asp:Parameter Name="close_registration" Type="String" />
            <asp:Parameter Name="registrants_confirmation_email" Type="String" />
            <asp:Parameter Name="waiting_room" Type="String" />


            <asp:Parameter Name="registrants_email_notification" Type="String" />
            <asp:Parameter Name="meeting_authentication" Type="String" />

            
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </UpdateParameters>
        </asp:SqlDataSource>

 
 
 

 


 
                           <%-- ======================================================--%>


     <script>

         function KeyPressOrder(fld, e) {

             var strCheck = '0123456789';
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


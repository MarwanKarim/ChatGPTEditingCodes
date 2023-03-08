<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTeacher.master" AutoEventWireup="true" Inherits="ContactMeetingList_API" Codebehind="ContactMeetingList_API.aspx.cs" %>

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
 

 <asp:TextBox ID="txt_Topic" runat="server" class="form-control font1 b_textbox" MaxLength="100"  autocomplete="off"   ></asp:TextBox>
                                              <asp:RequiredFieldValidator ControlToValidate="txt_Topic" runat="server" ID="RequiredFieldValidator2" 
                                    ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" SetFocusOnError="true" />


                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label">Description (Optional)</label>
                                        <div class="col-sm-9">
 
                                             <asp:TextBox ID="txt_agenda" runat="server" class="form-control font1 b_textbox" MaxLength="250" autocomplete="off"   ></asp:TextBox>


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
           onkeypress="return(KeyPressOrder(this,event))"
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
                     <asp:ListItem  Value="false" Text="off" />
                       <asp:ListItem  Value="true" Text="on" />
                 </asp:DropDownList>

                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="lname" class="col-sm-3 text-right control-label col-form-label"> Participant</label>
                                        <div class="col-sm-9">
 
            <asp:DropDownList ID="ddl_participant_video" runat="server"  class="form-control font1 b_textbox">
                     <asp:ListItem  Value="false" Text="off" />
                       <asp:ListItem  Value="true" Text="on" />
                 </asp:DropDownList>

                             

                                        </div>
                                    </div>
                            
                             
                                </div>


                       <hr>
                     <%--====================================================================--%>
 <%--====================================================================--%>




                    
                            <div class="card-body">
                                  <h4 class="card-title"> audio  </h4>
                                    <div class="form-group row">
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">    Type</label>
                                        <div class="col-sm-9">
 
   
                  <asp:DropDownList ID="ddl_audio" runat="server"  class="form-control font1 b_textbox">
                     <asp:ListItem  Value="both" Text="both" />
                       <asp:ListItem  Value="telephony" Text="telephony" />
                       <asp:ListItem  Value="Computer Audio" Text="Computer Audio" />
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
                                        <label for="fname" class="col-sm-3 text-right control-label col-form-label">Record the meeting automatically on the local computer</label>
                                        <div class="col-sm-9">
 
       <asp:DropDownList ID="ddl_auto_recording" runat="server"  class="form-control font1 b_textbox">
                  
                       <asp:ListItem  Value="none" Text="none " />
                       <asp:ListItem  Value="local" Text="local " />
                      <asp:ListItem  Value="cloud" Text="cloud " />
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
   <asp:Label ID="lbl_result_msg" runat="server" Text="Date Added succesfully ." Visible="False"></asp:Label>
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








                                    <asp:GridView ID="Gridview1"
                                        runat="server" AutoGenerateColumns="False"
                                        CellPadding="0" CssClass=" " AllowPaging="True"  
                                        Width="100%" GridLines="None" PageSize="30">



                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                              


                                       <asp:LinkButton ID="lnk_update" runat="server" OnClick="lnk_update_Click" ToolTip="Edit"><i style="font-size:24px" class="fa" >&#xf044;</i> </asp:LinkButton>

                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="id" >

                                                <ItemTemplate>
 

                                                      <%# ((Meeting)Container.DataItem).id %>

                                                </ItemTemplate>
                                            </asp:TemplateField>

                                               

                                                   <asp:TemplateField HeaderText="host_id"   >
                                              
                                                <ItemTemplate>
                                                        <%# ((Meeting)Container.DataItem).host_id %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                               <asp:TemplateField HeaderText="topic"   >
                                              
                                                <ItemTemplate>
                                                       <%# ((Meeting)Container.DataItem).topic %>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                  <asp:TemplateField HeaderText="type"   >
                                              
                                                <ItemTemplate>
                                                       <%# ((Meeting)Container.DataItem).type %>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                  <asp:TemplateField HeaderText="start_time"   >
                                              
                                                <ItemTemplate>
                                                    <%--   <%# ((Meeting)Container.DataItem).start_time %>--%>

                                                    <%#DataBinder.Eval(((Meeting)Container.DataItem), "start_time","{0:yyyy-MM-dd hh:mm tt}")%>

                                                </ItemTemplate>
                                            </asp:TemplateField>


                                                   <asp:TemplateField HeaderText="timezone"   >
                                              
                                                <ItemTemplate>
                                                 
                                                       <%# ((Meeting)Container.DataItem).timezone %>
                                                    
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            

                                                  <asp:TemplateField HeaderText="duration"   >
                                              
                                                <ItemTemplate>
                                                       <%# ((Meeting)Container.DataItem).duration %>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                       <asp:TemplateField HeaderText="created_at"   >
                                              
                                                <ItemTemplate>
                                                       <%# ((Meeting)Container.DataItem).created_at %>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                       <asp:TemplateField HeaderText="join_url"   >
                                              
                                                <ItemTemplate>
                                                       <%# ((Meeting)Container.DataItem).join_url %>
                                                </ItemTemplate>
                                            </asp:TemplateField>



                                                  <asp:TemplateField HeaderText="Password"   >
                                              
                                                <ItemTemplate>
                                                       <%# ((Meeting)Container.DataItem).Password %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="start_url"   >
                                              
                                                <ItemTemplate>
                                                       <%# ((Meeting)Container.DataItem).start_url %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                           

                                                     <asp:TemplateField HeaderText="agenda"   >
                                              
                                                <ItemTemplate>
                                                     
                                     <a target="_blank"  href="ContactMeetingList_API_Show.aspx?id=<%# ((Meeting)Container.DataItem).id %>">Start </a>
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



 <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
        SelectCommand="ContactMeetingZoom_Select" DeleteCommand="ContactMeetingZoom_Delete"
        DeleteCommandType="StoredProcedure" InsertCommand="ContactMeetingZoom_Insert"
        InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure"
        UpdateCommand="ContactMeetingZoom_Update" UpdateCommandType="StoredProcedure">
        <DeleteParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
        <asp:Parameter Name="Meeting_ID" Type="Int32" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </DeleteParameters>
        <InsertParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
            <asp:Parameter Name="Topic" Type="String" />
            <asp:Parameter Name="Descrption" Type="String" />
            <asp:Parameter Name="StartTime" Type="DateTime" />
            <asp:Parameter Name="Duration" Type="Int32" />
            <asp:Parameter Name="VideoHost" Type="Byte" />
            <asp:Parameter Name="VideoParticipant" Type="Byte" />
            <asp:Parameter Name="AudioType" Type="Byte" />
            <asp:Parameter Name="JoinBeforeHost" Type="Byte" />
            <asp:Parameter Name="ParticipantsUponEntry" Type="Byte" />
            <asp:Parameter Name="Record" Type="Byte" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </InsertParameters>

               
        <UpdateParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
        <asp:Parameter Name="Meeting_ID" Type="Int32" />
            <asp:Parameter Name="Topic" Type="String" />
            <asp:Parameter Name="Descrption" Type="String" />
            <asp:Parameter Name="StartTime" Type="DateTime" />
            <asp:Parameter Name="Duration" Type="Int32" />
            <asp:Parameter Name="VideoHost" Type="Byte" />
            <asp:Parameter Name="VideoParticipant" Type="Byte" />
            <asp:Parameter Name="AudioType" Type="Byte" />
            <asp:Parameter Name="JoinBeforeHost" Type="Byte" />
            <asp:Parameter Name="ParticipantsUponEntry" Type="Byte" />
            <asp:Parameter Name="Record" Type="Byte" />
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


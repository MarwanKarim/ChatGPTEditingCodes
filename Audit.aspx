<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="Audit" Codebehind="Audit.aspx.cs" %>
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


        .row_Grid  {
            height: 15px !important;
            text-align: center !important;
            font-family: 'Conv_Chawder-Bold';
            line-height: 8px !important;
            vertical-align: central !important;
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

        .RadComboBox  ,.RadComboBoxDropDown  ul li rcbItem ,
        .RadComboBoxDropDown_Default_rtl
        {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
        }



        .b_textbox{
                border:1px solid #d3cfcf !important;

}

    </style>       
    

    <link href="css/pageStyle.css" rel="stylesheet" />
    <link href="css/ResultMsg/result.css" rel="stylesheet" />
 <link rel="stylesheet" type="text/css" href="bootstrap/assets/libs/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

     





            <div class="page-wrapper">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="page-breadcrumb" style="margin:7px 0px !important;">
                    <div class="row">
                        <div class="col-5 align-self-center"  >
                            <h6 class="page-title" style="width:350px!important">&nbsp;&nbsp;
                             <asp:Label ID="lbl_header_str" runat="server"  CssClass="font_header1"   Text="  بەراورکردنی حــساب "   ></asp:Label>


                            </h6>
                        </div>
                  
                     
                    </div>
                </div>    
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Container fluid  -->
                <!-- ============================================================== -->
 
        <asp:UpdatePanel runat="server" ID="Upnl" >
        <ContentTemplate>
              
                <div class="container-fluid">
                    <!-- ============================================================== -->
 
                    <asp:Label ID="lbl_Places_Fkey" runat="server" Text=" " Visible="False"></asp:Label>
                    <asp:Label ID="lbl_UserID" runat="server" Text=" " Visible="False"></asp:Label>
                    <!-- Start Page Content -->
                    <!-- ============================================================== -->
                 
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <%--  <h4 class="card-title">Validation Form</h4>--%>

                                <style>
                                    .rcbInput{height:25px !important; }
                                </style>

                                <div class="form-row">
                                    <div class="col-md-3 mb-3">
                                        <label for="validationCustom01">
                                            &nbsp; &nbsp;
                                            <asp:Label ID="lbl_name_str" runat="server" Text="  هەژمارەکان " CssClass="lbl_style"></asp:Label>
                                        </label>
                                                     <telerik:RadComboBox RenderMode="Lightweight" ID="ddl_Account" runat="server"   
                                    Label="" DataSourceID="sds_Account" DataTextField="AccountName"
                                       Height="200px"   style="   "
                                     HighlightTemplatedItems="true"
                                     EmptyMessage="هەڵبژیرە"  
                                
                                    DataValueField="AccountNumber" MarkFirstMatch="True"  
                                    AppendDataBoundItems="True" Width="100%" 
                                    Filter="Contains">
      </telerik:RadComboBox>
 

                                <asp:SqlDataSource ID="sds_Account" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                                    SelectCommand="SELECT AccountNumber,code3+' _ '+ AccountName as AccountName FROM tblAccount "></asp:SqlDataSource>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="ddl_Account"
                     ValidationGroup="grpRegistration" ForeColor="#FF3300"  CssClass="font1"
                runat="server"   SetFocusOnError="True" Text="Required"></asp:RequiredFieldValidator>
                                    </div>
               
                                  
                             

 
                                 

                            <div class="col-md-3 mb-3">
                                        <label for="validationCustom02">
                                              &nbsp; &nbsp;
                                            <asp:Label ID="lbl_dateFrom_str" runat="server" Text="لە  " CssClass="lbl_style"></asp:Label>


                                        </label>
                                        <asp:TextBox ID="txt_DateFrom" runat="server" class="form-control font1 b_textbox"    TextMode="Date"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txt_DateFrom"
                     ValidationGroup="grpRegistration" ForeColor="#FF3300"  CssClass="font1"
                runat="server"   SetFocusOnError="True" Text="Required"></asp:RequiredFieldValidator>

                                    </div>





                               
                                      <div class="col-md-3 mb-3">
                                        <label for="validationCustom03">
                                              &nbsp; &nbsp;

                                            <asp:Label ID="lbl_dateto_str" runat="server" Text="بــۆ  " CssClass="lbl_style"></asp:Label>

                                        </label>

                                        <asp:TextBox ID="txt_DateTo" runat="server" class="form-control font1 b_textbox"  TextMode="Date"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txt_DateTo"
                     ValidationGroup="grpRegistration" ForeColor="#FF3300"  CssClass="font1"
                runat="server"   SetFocusOnError="True" Text="Required"></asp:RequiredFieldValidator>
                                          
                                      </div>
                                       </div>

                                <%--=================================================================================--%>

                                <div class="form-row">
                            
                                    <div class="col-md-6 mb-3">
                                        <label for="validationCustom03">

                                              &nbsp; &nbsp;
                                            <asp:Label ID="lbl_note_str" runat="server" Text="تـێـبینی" CssClass="lbl_style"></asp:Label>

                                        </label>

                                        <asp:TextBox ID="txt_comment" runat="server" class="form-control font1 b_textbox" placeholder="تـێـبینی" MaxLength="200"></asp:TextBox>
                                    </div>
                                </div>



 












 


                                <div class="col-lg-12 col-xlg-6">
                                    <div class="card">
                                        <div class="card-body">

                                            <div class="button-group">
 

 
 

                                        <asp:Button ID="btn_Insert" runat="server" Text="زیاد کردن" CssClass="btn  waves-light btn-success font1" OnClick="btn_insert_Click" CausesValidation="True" ValidationGroup="grpRegistration"  />
                                        <asp:Button ID="btn_Update" runat="server" Text=" گۆڕانکاری"   CssClass="btn  btn-warning font1" OnClick="btn_Update_Click" CausesValidation="True" ValidationGroup="grpRegistration" Visible="False" />
 
                                        <asp:Button ID="btn_Delete" runat="server" Text="سڕینەوە"    CssClass="btn   waves-light btn-danger font1" OnClick="btn_delete_Click" CausesValidation="False" formnovalidate  Visible="False" />
                                         <asp:Button ID="btn_clear" runat="server" Text="پاشگەزبونەوە" CssClass="btn  waves-light btn-info font1" OnClick="btn_clear_Click" formnovalidate CausesValidation="False"     />

 

                                            </div>

                                        </div>                        
                                        <asp:Label ID="lbl_Audit_ID" runat="server" Text="0"  Visible="False"></asp:Label>
                                          
                                        <div style="height:20px;">
                                        <asp:Label ID="lbl_result_msg" runat="server" Text="سەرکەتوبوو داخڵ کردنەکەت."  Visible="False"></asp:Label>
                                       </div>
                                    </div>
                                </div>


                                <%--======================================================--%>
                      
       
                               
                                <%-- ======================================================--%>
                            </div>
                        </div>



                        <div class="row">
   <div class="col-12">
   <div class="card">
    <div class="card-body">
             
    









                                          <div class="table-responsive font1" style="overflow-x:scroll">
 
                                            <asp:GridView ID="Gridview1"  Style="width: 100%"
                                                runat="server" AutoGenerateColumns="False" GridLines="None"
                                                DataKeyNames="Audit_ID"  
                                                CellPadding="0"

                                                 CssClass=""  
                                                CellSpacing="0"  OnPageIndexChanging="OnPageIndexChanging"
                                                DataSourceID="sds_Audit" PageSize="12" AllowPaging="True"  >
                                                 <Columns>
                         <asp:TemplateField ShowHeader="False">
                             <ItemTemplate>
                              
                                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/editt.png" OnClick="ImageButton1_Click" Width="35px" />
                                
                                      &nbsp;
                             </ItemTemplate>
                                      <HeaderStyle Width="80px" />
                             <ItemStyle Width="80px" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText=" " InsertVisible="False" SortExpression=" " Visible="False">
                           
                             <ItemTemplate>
    <asp:Label ID="lbl_id" runat="server" Text='<%# Bind("Audit_ID") %>'></asp:Label>                      

                             </ItemTemplate>

                               
                         </asp:TemplateField>
                          
                                 <asp:BoundField DataField="AccountName" HeaderText="نـــاو" SortExpression="AccountName" >
                             <HeaderStyle Width="250px" />
                             <ItemStyle Width="250px" />
                         </asp:BoundField>
                         <asp:BoundField DataField="DateFrom" HeaderText="لــە" SortExpression="DateFrom" >
                             <HeaderStyle Width="120px" />
                             <ItemStyle Width="120px" />
                         </asp:BoundField>
                         <asp:BoundField DataField="DateTo" HeaderText="بــۆ" SortExpression="DateTo">
                             <HeaderStyle Width="120px" />
                             <ItemStyle Width="120px" />
                         </asp:BoundField>
     <asp:BoundField DataField="MoneyDate" HeaderText="پارەی نێوان بەروار" SortExpression="MoneyDate" >
                             <HeaderStyle Width="120px" />
                             <ItemStyle Width="120px" />
                         </asp:BoundField>
                         <asp:BoundField DataField="MoneyLast" HeaderText="پارەی کۆتای" SortExpression="MoneyLast" >
                             <HeaderStyle Width="120px" />
                             <ItemStyle Width="120px" />
                         </asp:BoundField>
                        <asp:BoundField DataField="Comment" HeaderText="تێبینی" SortExpression="Comment" />
 
                          
                          
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
                         
                         <asp:SqlDataSource ID="sds_Audit" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
                        DeleteCommand="Audit_Delete" 
                        InsertCommand="Audit_Insert"
                         SelectCommand="Audit_Select"  SelectCommandType="StoredProcedure"                                                                                                                                                                                 
                        UpdateCommand="Audit_Update" DeleteCommandType="StoredProcedure" InsertCommandType="StoredProcedure" UpdateCommandType="StoredProcedure"  >
                     
                             
                                      <SelectParameters >
                               <asp:ControlParameter ControlID="ddl_Account" Name="AccountNumber" PropertyName="SelectedValue" Type="Int32"  DefaultValue="0"/>
                        </SelectParameters>
                             
                             <DeleteParameters>
                            <asp:ControlParameter ControlID="lbl_Audit_ID" Name="Audit_ID" PropertyName="Text" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                                    

                               <asp:ControlParameter ControlID="ddl_Account" Name="AccountNumber" PropertyName="SelectedValue" Type="Int32" />
                               <asp:ControlParameter ControlID="txt_DateFrom" DbType="Date" Name="DateFrom" PropertyName="Text" />
                               <asp:ControlParameter ControlID="txt_DateTo" DbType="Date" Name="DateTo" PropertyName="Text" />
                               <asp:ControlParameter ControlID="txt_comment" Name="Comment" PropertyName="Text" Type="String" />
 

                                 
                               <asp:ControlParameter ControlID="lbl_UserID" Name="user_insert" PropertyName="Text" Type="Int32" />
  

                                 
                        </InsertParameters>
                         
                 
                 
                        <UpdateParameters>
 
                                  <asp:ControlParameter ControlID="lbl_Audit_ID" Name="Audit_ID" PropertyName="Text" Type="Int32" />
                                  <asp:ControlParameter ControlID="ddl_Account" Name="AccountNumber" PropertyName="SelectedValue" Type="Int32" />
                                  <asp:ControlParameter ControlID="txt_DateFrom" DbType="Date" Name="DateFrom" PropertyName="Text" />
                                  <asp:ControlParameter ControlID="txt_DateTo" DbType="Date" Name="DateTo" PropertyName="Text" />
                                  <asp:ControlParameter ControlID="txt_comment" Name="Comment" PropertyName="Text" Type="String" />
 
 

 

 

                                   <asp:ControlParameter ControlID="lbl_UserID" Name="user_update" PropertyName="Text" Type="Int32" />
 
 

 

 

                        </UpdateParameters>
                         
                 
                       
                         
                 
                </asp:SqlDataSource>

                    </div>
                </div>
                <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="4000" OnTick="Timer1_Tick"></asp:Timer>


                       
                  </ContentTemplate>

 
    </asp:UpdatePanel>


            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->








            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
           <%--     All Rights Reserved by Nice admin. Designed and Developed by
                <a href="https://wrappixel.com">WrapPixel</a>.--%>
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

<%-- 

    <script src="bootstrap/dist/js/app.min.js"></script>
    <script src="bootstrap/dist/js/app.init.js"></script>
       <script src="bootstrap/dist/js/app-style-switcher.js"></script>--%>




    <!-- slimscrollbar scrollbar JavaScript -->
    <!--     <script src="bootstrap/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>-->
    <!--      <script src="bootstrap/assets/extra-libs/sparkline/sparkline.js"></script> -->
    <!--Wave Effects -->
    <!--     <script src="bootstrap/dist/js/waves.js"></script> -->
    <!--Menu sidebar -->
    <!--     <script src="bootstrap/dist/js/sidebarmenu.js"></script> -->
    <!--Custom JavaScript -->  
  

    <!--    <script src="bootstrap/dist/js/custom.min.js"></script>-->

  <script src="bootstrap/assets/libs/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
 




 
      
 



    
       

 
    <style>

                  .header_Grid   th
                  {
            padding:5px 0px !important;
        }

        .header_Grid th[scope=col]  {
            background-color: #233242 !important;
            color: #fff !important;
           text-align: right !important;
            font-family: 'Conv_Chawder-Bold';
            font-size:10pt !important;
        }
 

       .row_Grid  {
           
                 height: 30px !important;
          }
 
    
        .row_Grid td {
             text-align: right !important;
            font-family: 'Conv_Chawder-Bold';
            padding:2px 5px;
           font-size:10pt !important;
        }
 
 

    </style>
    
 
</asp:Content>


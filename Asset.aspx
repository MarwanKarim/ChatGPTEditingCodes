<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="Asset" Codebehind="Asset.aspx.cs" %>

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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Asset "></asp:Label>
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
                    <div class="card-body">
             


                        <div class="form-row">
 
                            
                            <div class="col-md-3 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label2" runat="server" Text="Serial" CssClass="lbl_style"></asp:Label>
</label>
 
 <asp:TextBox ID="txt_Serial" runat="server" class="form-control font1 b_textbox" MaxLength="50"></asp:TextBox>
    <asp:RequiredFieldValidator ControlToValidate="txt_Serial" runat="server" ID="RequiredFieldValidator2" 
                                    ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div> 
                              <%--====================================================================--%>
                   
                       

      <div class="col-md-3 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Title" CssClass="lbl_style"></asp:Label>
</label>

            
 <asp:TextBox ID="txt_Title" runat="server" class="form-control font1 b_textbox" MaxLength="100"></asp:TextBox>
  <asp:RequiredFieldValidator ControlToValidate="txt_Title" runat="server" ID="RequiredFieldValidator1" 
                                    ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />
 
                   </div> 
                              <%--====================================================================--%>
                             



                      

                                           <div class="col-md-3 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label3" runat="server" Text="Category" CssClass="lbl_style"></asp:Label>
</label>

            
     <asp:DropDownList ID="ddl_Category" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_Category_ddl"  DataTextField="CategoryName"  DataValueField="Category_ID"
          ValidationGroup="grpRegistration" 
          AppendDataBoundItems="True" >

                       <asp:ListItem Text="Choose" Value="0"  />
                      
                     
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_Category_ddl" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT        Category_ID, CategoryName FROM            tblAssetCategory">

</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_Category" runat="server" ID="RequiredFieldValidator3" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                   </div> 
                              <%--====================================================================--%>
                         

                      

                                           <div class="col-md-3 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label4" runat="server" Text="Location" CssClass="lbl_style"></asp:Label>
</label>

            
     <asp:DropDownList ID="ddl_Location" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_Location"  DataTextField="LocationName"  DataValueField="Location_ID"
          ValidationGroup="grpRegistration" 
          AppendDataBoundItems="True" >

                       <asp:ListItem Text="Choose" Value="0"  />
                      
                     
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_Location" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT        Location_ID, LocationName FROM            tblAssetLocation">

</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_Location" runat="server" ID="RequiredFieldValidator4" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                   </div> 
                              <%--====================================================================--%>
   
                      

         <div class="col-md-3 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label5" runat="server" Text="Status " CssClass="lbl_style"></asp:Label>
</label>

            
 
     <asp:DropDownList ID="ddl_Status" runat="server" class="form-control font1 b_textbox"
       
          ValidationGroup="grpRegistration" 
          AppendDataBoundItems="True" >

                       <asp:ListItem Text="choose" Value="0"  />
         <asp:ListItem Value="1" Text="Checked Out" />
                   <asp:ListItem Value="2" Text="In Storage" />       
                     
                   </asp:DropDownList>
 
 
         <asp:RequiredFieldValidator ControlToValidate="ddl_Location" runat="server" ID="RequiredFieldValidator5" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                   </div> 
                              <%--====================================================================--%>
                                               
                  
                                           <div class="col-md-3 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label6" runat="server" Text="Condition " CssClass="lbl_style"></asp:Label>
</label>

            
 
     <asp:DropDownList ID="ddl_Condition" runat="server" class="form-control font1 b_textbox"
       
          ValidationGroup="grpRegistration" 
          AppendDataBoundItems="True" >

                       <asp:ListItem Text="choose" Value="0"  />
         <asp:ListItem Value="1" Text="New" />
                   <asp:ListItem Value="2" Text="Used" />       
                     
                   </asp:DropDownList>
 
 
         <asp:RequiredFieldValidator ControlToValidate="ddl_Condition" runat="server" ID="RequiredFieldValidator6" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />

                   </div> 
                              <%--====================================================================--%>
                                             

        <div class="col-md-2">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label16" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 

                                           <asp:Button ID="btn_Insert" runat="server" Text="Add" CssClass="btn  waves-light btn-success font1" OnClick="btn_insert_Click" CausesValidation="True" ValidationGroup="grpRegistration"  />
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

   <asp:Label ID="lbl_Asset_ID" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>
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
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="Asset_ID"
                                        DataSourceID="sds_Asset" Width="100%" GridLines="None" PageSize="30">



                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                    &nbsp;
                                 <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/editt.png"
                                     formnovalidate
                                     OnClick="ImageButton1_Click1" ToolTip="Edit" Width="40px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Location_ID" InsertVisible="False" SortExpression="Category_ID" Visible="False">

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_Asset_ID_GV" runat="server" Text='<%# Eval("Asset_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                 <asp:TemplateField HeaderText="Location "   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelLocationName" runat="server" Text='<%# Eval("LocationName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                 <asp:TemplateField HeaderText="CategoryName"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelCategoryName" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                         
                                   <asp:TemplateField HeaderText="Serial"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelSerial" runat="server" Text='<%# Eval("Serial") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>



                                                   <asp:TemplateField HeaderText="Title"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelCTitle" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
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


    <asp:SqlDataSource ID="sds_Asset" runat="server"
        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
        SelectCommand="Asset_Select" DeleteCommand="Asset_Delete"
        DeleteCommandType="StoredProcedure" InsertCommand="Asset_Insert"
        InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure"
        UpdateCommand="Asset_Update" UpdateCommandType="StoredProcedure"
        
        
        oninserted="sds_Asset_Inserted"
        OnUpdated="sds_Asset_Updated"
        OnDeleted="sds_Asset_Deleted"
        
        >
        <DeleteParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
       <asp:ControlParameter ControlID="lbl_Asset_ID"  Name="Asset_ID" Type="Int32" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </DeleteParameters>
        <InsertParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
              <asp:ControlParameter ControlID="ddl_Category"  Name="Category_Fkey" Type="Int32" />
          <asp:ControlParameter ControlID="ddl_Location"  Name="Location_Fkey" Type="Int32" />
               <asp:ControlParameter ControlID="txt_Serial"  Name="Serial" Type="String" />
           <asp:ControlParameter ControlID="txt_Title"  Name="Title" Type="String" />
          <asp:ControlParameter ControlID="ddl_Status"  Name="Status1" Type="Int32" />
          <asp:ControlParameter ControlID="ddl_Condition"  Name="Condition" Type="Int32" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </InsertParameters>
        






               
        <UpdateParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
       <asp:ControlParameter ControlID="lbl_Asset_ID"  Name="Asset_ID" Type="Int32" />
              <asp:ControlParameter ControlID="ddl_Category"  Name="Category_Fkey" Type="Int32" />
          <asp:ControlParameter ControlID="ddl_Location"  Name="Location_Fkey" Type="Int32" />
               <asp:ControlParameter ControlID="txt_Serial"  Name="Serial" Type="String" />
           <asp:ControlParameter ControlID="txt_Title"  Name="Title" Type="String" />
          <asp:ControlParameter ControlID="ddl_Status"  Name="Status1" Type="Int32" />
          <asp:ControlParameter ControlID="ddl_Condition"  Name="Condition" Type="Int32" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
        </UpdateParameters>
        </asp:SqlDataSource>
 
     

 


 
                           <%-- ======================================================--%>


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


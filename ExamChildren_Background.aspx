<%@ Page Language="C#" AutoEventWireup="true" Inherits="ExamChildren_Background" MasterPageFile="~/MasterPage_Group_Top.master" Codebehind="ExamChildren_Background.aspx.cs" %>

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
            height: 45px !important;
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
            font-size: 11pt !important;
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
                    .btn-group-lg>.btn, .btn-lg {
                font-family: 'Conv_Chawder-Bold' !important;
                font-size: 10pt !important;
            }


        .RadComboBox input{
            padding:12px 0px !important;
        }
                    .rcbItem {
                font-family: 'Conv_Chawder-Bold' !important;
                font-size: 10pt !important;
            }

               .rcbHovered   {
                font-family: 'Conv_Chawder-Bold' !important;
                font-size: 10pt !important;
            }

                    
    </style>


    <link href="css/ResultMsg/result.css" rel="stylesheet" />

        <link href="bootstrap/assets/libs/toastr/build/toastr.min.css" rel="stylesheet" />
    


  <%--    <script src="bootstrap/assets/extra-libs/toastr/toastr-init.js"></script>--%>

    <script type="text/javascript">
        function warning(txt_warning) {
            toastr.warning(txt_warning);
        }

        function info() {
            toastr.info('!');
        }



        function success_Inserted(txt_success) {
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
<%--        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-5 align-self-center">
                    <h6 class="page-title" style="width: 350px!important">&nbsp;&nbsp;
              

                    </h6>
                </div>

            </div>
        </div>--%>

      <%--  <br />--%>

   <%--        <asp:UpdatePanel runat="server" ID="Upnl" >
        <ContentTemplate>--%>

        <div class="container-fluid">
            <!-- ============================================================== -->

               <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Background | Certification Kindergarten|" ForeColor="Red"></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" style="display:none !important;"></asp:Label>
                                                <asp:Label ID="lbl_AcademicYear_ID" runat="server" Text="0" ForeColor="Red"  Visible="False"></asp:Label>

                      <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>
                   

            <!-- Start Page Content -->
 
     
            <!-- ============================================================== -->



            <!-- Start Page Content -->

            <div class="col-12">
                <div class="card">    
 
 




                    <div class="card-body">
             


                        <div class="form-row">
                             <div class="col-md-4 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label2" runat="server" Text="  Educational Board Name" CssClass="lbl_style"></asp:Label>
</label>

            
 <asp:TextBox ID="txt_EducationalBoardName" runat="server" class="form-control font1 b_textbox" MaxLength="50" autoComplete="off" ReadOnly="true"></asp:TextBox>
    


         <asp:RequiredFieldValidator ControlToValidate="txt_EducationalBoardName" runat="server" ID="RequiredFieldValidator2" 
                                    ValidationGroup="grpRegistration"    Text="Required" ForeColor="Red" CssClass="font1" />

                             

                   </div> 
 



 <%--====================================================================--%>
                
<div class="col-md-3 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label4" runat="server" Text="Background 1130 px * 808 px" CssClass="lbl_style"></asp:Label>
</label>
                            <div class="input-group mb-3">
                                      
<div class="custom-file"> 
<asp:FileUpload ID="FileUpload1" runat="server"  class="custom-file-input" Width="100%" capture="camera" accept="image/*"/>
<label class="custom-file-label" for="inputGroupFile01">Choose file</label>

</div>                      
      </div>   
     <asp:Label ID="lbl_SPhoto" runat="server" Text="0"   ForeColor="Red"  Visible="false"></asp:Label>

</div>

 <%--====================================================================--%>




        <div class="col-md-3">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label16" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 

                  
                                          
 

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

                            
                                  

               
                                    <asp:LinkButton ID="Lnk_clear" runat="server" 
                    CssClass="btn  btn-info  " OnClick="btn_clear_Click"  ValidationGroup="clear"
                    CausesValidation="false"        >Clear</asp:LinkButton>






                 </div>

   <asp:Label ID="lbl_EducationalBoard_ID" runat="server" Font-Bold="True" ForeColor="Black" Visible="False"></asp:Label>
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
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="EducationalBoard_ID"
                                        DataSourceID="sds_Setting_EducationalBoard" Width="100%" GridLines="None" PageSize="30">



                                        <Columns>
                                            <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                                                

    <asp:LinkButton ID="lnk_Edit" runat="server" OnClick="Lnk_Edit_Click" ToolTip="Edit" 
              formnovalidate ><i style="font-size:16px !important; color:#000"  class="m-r-10 mdi mdi-grease-pencil"></i></asp:LinkButton>
                                                   





                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="EducationalBoard_ID" InsertVisible="False" SortExpression="CatNo" Visible="False">

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_EducationalBoard_ID_GV" runat="server" Text='<%# Eval("EducationalBoard_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                 <asp:TemplateField HeaderText="  Educational Board "   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelEducationalBoardName" runat="server" Text='<%# Eval("EducationalBoardName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                             



      <asp:TemplateField HeaderText=" "   >
                                              
                                                <ItemTemplate>
                                                    <a href='images/<%# Eval("CertificateBg") %>' target="_blank">
<img src='images/<%# Eval("CertificateBg") %>'  width="120px"   />


                                                    </a>

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


                  
       <%--           </ContentTemplate>

 
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


 <!--   <script src="bootstrap/assets/libs/toastr/build/toastr.min.js"></script>-->




  

        <asp:SqlDataSource ID="sds_Setting_EducationalBoard" runat="server"
   ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 


           SelectCommand="Setting_EducationalBoard_Select_CertificateBg" 
    SelectCommandType="StoredProcedure"
    UpdateCommand="Setting_EducationalBoard_Update_CertificateBg" UpdateCommandType="StoredProcedure"
 

    OnUpdated="sds_Setting_EducationalBoard_Updated"
     
    >
 
 
       <UpdateParameters>
           

           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
           <asp:ControlParameter ControlID="lbl_EducationalBoard_ID"  Name="EducationalBoard_ID" Type="Int32" />
                   <asp:ControlParameter ControlID="lbl_SPhoto" Name="CertificateBg" Type="String" DefaultValue="0" />

           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
       </UpdateParameters>
        
        </asp:SqlDataSource>



 

     <%-- ============================================================================--%>


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

    </asp:Content>
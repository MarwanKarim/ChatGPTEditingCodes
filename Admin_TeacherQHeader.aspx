<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="Admin_TeacherQHeader" validateRequest="false" Codebehind="Admin_TeacherQHeader.aspx.cs" %>



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
            height: 20px !important;
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
                font-size: 14pt !important;
        }
              .RadComboBox input
                    {

                    height:25px !important;
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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Assignment  "></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000"  Visible="False"></asp:Label>

                      <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>

                    </h6>
                </div>

            </div>
        </div>

        <br />

           <asp:UpdatePanel runat="server" ID="Upnl" >
        <ContentTemplate>

        <div class="container-fluid">
            <!-- ============================================================== -->



            <!-- Start Page Content -->

            <div class="col-12">
                <div class="card">

<%-- <h4 class="card-title font_header1" style="background-color:#137EFF ; color:#fff;   ">  
 

  <div class="btn-group" style="z-index:9999999 !important;" runat="server"  id="div_AddQuestion">
    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="ti-settings"> Question</i>
    </button>
    <div class="dropdown-menu animated lightSpeedIn font1">
 

               
                  

                       <a href='TeacherQHeaderTrueFalse.aspx?Assignment_ID=<%= Request.QueryString["Assignment_ID"].ToString() %>'    
                           class="dropdown-item"><i class="ti-eye"></i> True or False </a>

              <a href='TeacherQHeaderMultiChoice.aspx?Assignment_ID=<%= Request.QueryString["Assignment_ID"].ToString() %>'    
                           class="dropdown-item"><i class="ti-eye"></i> Multi Choice </a>
 
 



 
         <a href='TeacherQHeaderMatching.aspx?Assignment_ID=<%= Request.QueryString["Assignment_ID"].ToString() %>'   
                           class="dropdown-item"><i class="ti-eye"></i> Matching </a>



    
              <a href='TeacherQBlanks.aspx?Assignment_ID=<%= Request.QueryString["Assignment_ID"].ToString() %>'    
                           class="dropdown-item"><i class="ti-eye"></i> Fill in the Blanks </a>

 

              <a href='TeacherQHeaderMSA.aspx?Assignment_ID=<%= Request.QueryString["Assignment_ID"].ToString() %>'   
                           class="dropdown-item"><i class="ti-eye"></i> Multiple Select Answers </a>



 
    </div>
</div>


       <div class="btn-group" style="z-index:9999999 !important;" runat="server"  id="div_publishDate">
    <button type="button" class="btn btn-info" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <asp:Label ID="lbl_PublishNow_View" runat="server" Text=""    ForeColor="white"></asp:Label>


    </button>


    <button type="button" class="btn btn-info" >
     <asp:LinkButton ID="Lnk_publishNow" runat="server"    OnClick="Lnk_publishNow_Click" ForeColor="white"
         OnClientClick="return confirm('Are you sure you want to Publish now this Assignment?');"
         ><i class="ti-eye"></i>&nbsp;Publish now</asp:LinkButton>
         </button>
 
           </div>

  
 
                                    </h4>--%>

<div class="card-body" style="min-height:600px">

            <%--     <div class="alert alert-info alert-dismissible fade show" role="alert"   runat="server" id="alert_publishDate" visible="false">
                            <span class="badge badge-info"><i class="fas fa-info"></i></span>
                            <strong> Questions cannot be modified after publishing the assignment.  </strong>  

                 </div> --%>

    






                                <div class="table-responsive font1" style="overflow-x: scroll; padding-bottom:20px;">

                                    <asp:GridView ID="Gridview1"  ClientIDMode="Static" RowStyle-CssClass="GvGrid"
                                        runat="server" AutoGenerateColumns="False"
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="QManagment_ID" OnRowDataBound="Gridview1_RowDataBound"
                                        DataSourceID="sds_TeacherQHeader_by_Assignment" Width="100%" GridLines="None" PageSize="30">



                                        <Columns>

                                        
                                                 <asp:TemplateField HeaderText="#" HeaderStyle-Width="100px">   
         <ItemTemplate>
                 <%# Container.DataItemIndex + 1 %>   
         </ItemTemplate>
     </asp:TemplateField>
                                            <asp:TemplateField HeaderText="QManagment_ID" InsertVisible="False"  Visible="false" >
                                              
                                                <ItemTemplate>
                                                  
                                                    <asp:Label ID="lbl_QManagment_ID_GV" runat="server" Text='<%# Eval("QManagment_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                                   <asp:TemplateField HeaderText="&nbsp;  &nbsp;Question Text"    >
                                              
                                                <ItemTemplate>
                                                    &nbsp;  &nbsp;
                                                    <asp:Label ID="lbl_QText" runat="server" Text='<%# Eval("QText") %>'  style="line-height:20px;"></asp:Label>
                                                </ItemTemplate>
                                                      
                                            </asp:TemplateField>


                                            

                                            <asp:TemplateField HeaderText="Mark" SortExpression="Grade"  >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_QGrade" runat="server" Text='<%# Eval("QGrade") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText=" Level " SortExpression="QLevel_Name"  >
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_QLevel_Name" runat="server" Text='<%# Eval("QLevel_Name") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                          


                                            <asp:TemplateField HeaderText="Type"  >
                                                <ItemTemplate>
                                               <asp:Label ID="lbl_QTypeName" runat="server" Text='<%# Eval("QTypeName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>





                                            <asp:TemplateField HeaderText=""  SortExpression="Edit" >
                                                <ItemTemplate>
    
                                               <asp:Label ID="lbl_QType_ID_GV" runat="server" Text='<%# Eval("QType_ID") %>' Visible="false"></asp:Label>



<%--             <asp:LinkButton ID="lnk_Delete" runat="server"  
                                           OnClientClick="return confirm('Are you sure you want to delete this record?');"
ToolTip="Delete"  CommandName="Delete"><i  style="font-size:18px !important; color:red"  class="m-r-10 mdi mdi-delete-circle" > </i> </asp:LinkButton>
--%>


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


                  
                  </ContentTemplate>
    </asp:UpdatePanel>


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
















 



 <asp:SqlDataSource ID="sds_TeacherQHeader_by_Assignment" runat="server"
   ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 


           SelectCommand="TeacherQHeader_by_Assignment_Select" 
 SelectCommandType="StoredProcedure" 




     >





     <SelectParameters>
         <asp:QueryStringParameter QueryStringField="Assignment_ID" Name="Assignment_Fkey" Type="Int32" />
     </SelectParameters>


        
        </asp:SqlDataSource>


    <!-- ============================================================== -->
    
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
</asp:Content>


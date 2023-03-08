<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="Admin_TeacherCourseMaterialView"  validateRequest="false" Codebehind="Admin_TeacherCourseMaterialView.aspx.cs" %>

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
        <link href="css/SwitchXom.css" rel="stylesheet" />

    
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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text=""></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000"  Visible="False"></asp:Label>

                      <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>
                        <asp:Label ID="lbl_AcademicYear_ID" runat="server" Text="0" ForeColor="Red" Visible="False"></asp:Label>

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
 


                <div class="row" style="width:100%;">
 

                        <div class="card"  style="width:100%;">
                            <div class="card-body"  style="width:100%;">
              
              
                           
                            
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="sds_TeacherCourseMaterial_View_select" >
    <ItemTemplate>

                
                                   

 <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("FileDoc") %>' runat="server" OnClick="DownloadFile"></asp:LinkButton>
      
                            
     <div class="form-row" style="width:100%;">
                         <!-- ============================================================== -->
<%--   <h4 class="card-title">  <%# Eval("CTitle") %>  </h4>--%>
                                <ul class="list-unstyled m-t-40">
                                    <li class="media">

                                        <img class="m-r-15" src="images/thumb.png" width="60" alt="" style="border-radius:10px;">
                                        <div class="media-body">
                                            <h5 class="mt-0 mb-1"><%# Eval("CTitle") %>
                                                <br />
                                                <%# Eval("FullName") %>
                                            </h5> 

                                         Date Created :<%# Eval("date_insert","{0:yyyy-MM-dd hh:MM tt}") %>

                                          
                                        </div>
                                    </li>
                                    <hr/>
                                    </ul>

                      
                                
         </div>




                         
       </ItemTemplate>


</asp:Repeater>
                                       
<asp:SqlDataSource ID="sds_TeacherCourseMaterial_View_select" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT        tblTeacherCourseMaterial.CourseMaterial_ID, tblTeacherCourseMaterial.Preparation_Fkey, 
tblTeacherCourseMaterial.CTitle, tblTeacherCourseMaterial.Descrption, 
                         tblTeacherCourseMaterial.SubtitleFile, tblTeacherCourseMaterial.PublishingDate, 
						'UploadFile/'+ tblTeacherCourseMaterial.FileDoc as FileDoc, tblUsers.FullName  ,tblTeacherCourseMaterial.date_insert
FROM            tblTeacherCourseMaterial INNER JOIN
                         tblUsers ON tblTeacherCourseMaterial.user_Insert = tblUsers.UserId

						 where  tblTeacherCourseMaterial.CourseMaterial_ID=@CourseMaterial_ID">
    <SelectParameters>
 

     <asp:QueryStringParameter QueryStringField="CourseMaterial_ID" Name="CourseMaterial_ID"  Type="String"  DefaultValue="0" /> 
 
 
    </SelectParameters>

</asp:SqlDataSource> 




                             
                            </div>
                        </div>
                

 

                          



  
                     

                  
                    

                


          



            <!-- ============================================================== -->










                </div>



            </div>
        </div>
 

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


   
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true" Inherits="ExamMark_Card_Main_Report_Kurdi" Codebehind="ExamMark_Card_Main_Report_Kurdi.aspx.cs" %>

 
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=14.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
 
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
 <%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/WisLogo.png"/>
    <title> School Management  </title>




    <style>


        @font-face {
            font-family: 'Conv_Chawder-Reg';
            src: url('fonts/Chawder-Reg.eot');
            src: local('â˜º'), url('fonts/Chawder-Reg.woff') format('woff'), url('fonts/Chawder-Reg.ttf') format('truetype'), url('fonts/Chawder-Reg.svg') format('svg');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'Conv_Chawder-Bold';
            src: url('fonts/Chawder-Bold.eot');
            src: local('â˜º'), url('fonts/Chawder-Bold.woff') format('woff'), url('fonts/Chawder-Bold.ttf') format('truetype'), url('fonts/Chawder-Bold.svg') format('svg');
            font-weight: normal;
            font-style: normal;
        }
                .font1_menu {
            /*font-family: 'Conv_Chawder-Bold' !important;*/
            font-size: 10pt !important;
            color:white !important;
           
        }
        </style>
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
         
        .lbl_style {
            font-family: 'Conv_Chawder-Bold';
            font-size: 10pt;
        }

        
.b_textbox{
 border:1px solid #d3cfcf !important;

}

        .font1 {
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

        .RadComboBox{
line-height:24px !important;
        }

        
        .ReportStyle   p ,
        
        .ReportStyle  div,  .ReportStyle div span ,  .ReportStyle table ,
          .ReportStyle tr,  .ReportStyle td  ,  .ReportStyle a ,
        .ReportStyle span,  .ReportStyle tspan,
          .ReportStyle h1,  .ReportStyle h2,   .ReportStyle h3
    
        ,.A840c010946044d9e85f0f7fe7e060c06461  ,
        #Ped1868f976bf493ebe9c5080a4411b5c_1_oReportDiv .A49d267995c17420f8f63f1d06226883e133vtb,
        .A85435323bdfc4148981faa23691c6bfc137vtb 
        
            {  
font-family: 'Conv_Chawder-Reg'    ;
font-weight:600   ;


        }  
        
        
#Ped1868f976bf493ebe9c5080a4411b5c_1_oReportDiv .A49d267995c17420f8f63f1d06226883e133vtb
 
            {  
font-family: 'Conv_Chawder-Reg'  !important   ;
font-weight:600  !important ;


        }  

.canGrowVerticalTextBox div,
cannotShrinkTextBoxInTablix  div{
    font-family: 'Conv_Chawder-Bold' !important;
font-weight:600  !important ;

}
         .btn-group-lg>.btn, .btn-lg {
                font-family: 'Conv_Chawder-Bold' !important;
                font-size: 10pt !important;
            }
    </style>
            <link href="bootstrap/dist/css/style.min.css" rel="stylesheet"/>
              
</head>
<body>
    <form id="form1" runat="server">
    <div class="page-wrapper" style="margin:0 auto !important;">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>  
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-5 align-self-center">
                    <h6 class="page-title" style="width: 350px!important">&nbsp;&nbsp;
                             <asp:Label ID="Label6" runat="server" CssClass="font_header1" Text="  "></asp:Label>
                         <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000"  Visible="false"></asp:Label>
                  <asp:Label ID="lbl_UserID" runat="server" Text="0" Visible="false"></asp:Label>

                    </h6>
                </div>

            </div>
        </div>


        <%--   <asp:UpdatePanel runat="server" ID="Upnl" >
        <ContentTemplate>--%>

        <div class="container-fluid">
            <!-- ============================================================== -->



            <!-- Start Page Content -->

            <div class="col-12">
            


                <div class="row">
                
                        <div class="card">
                            <div class="card-body">
 <h6 class="card-title font_header1" style="background-color:#137EFF ; color:#fff;">  
<div class="btn-group btn-group-lg" role="group" aria-label="Basic example">
 
    <a href="#"  class="btn btn-dark"  >English</a>
   <a href="#" class="btn btn-dark"> کوردی </a>
       
      
    
</div>
        </h6>
           
    <div class="ReportStyle">

                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="1000px" 
                   style="direction:ltr !important; text-align:left;  display:none;"
                 BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" 
                   InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" 
                   LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="Red"
                   PrimaryButtonForegroundColor="Black" PrimaryButtonHoverBackgroundColor=""
                   PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" 
                   SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor=""
                   SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" 
                   ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor=""
                   ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" 
                   ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor=""
                   ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid"
                   ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" 
                   ShowPrintButton="True" CssClass="report_Style"  Width="100%">
     
</rsweb:ReportViewer>
    </div>
                  





 
                            </div>
                        </div>
                   
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

             <script src="bootstrap/assets/libs/jquery/dist/jquery.min.js"></script> 
    <!-- Bootstrap tether Core JavaScript -->

      <script src="bootstrap/assets/libs/popper.js/dist/umd/popper.min.js"></script> 
      <script src="bootstrap/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->


 


    <!-- slimscrollbar scrollbar JavaScript -->
     <script src="bootstrap/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
        <script src="bootstrap/assets/extra-libs/sparkline/sparkline.js"></script> 
    <!--Wave Effects -->
        <script src="bootstrap/dist/js/waves.js"></script> 
    <!--Menu sidebar -->
       <script src="bootstrap/dist/js/sidebarmenu.js"></script> 
    <!--Custom JavaScript -->


       <script src="bootstrap/dist/js/custom.min.js"></script>

       <script src="bootstrap/assets/libs/toastr/build/toastr.min.js"></script>










    </div>
    </form>
</body>
</html>

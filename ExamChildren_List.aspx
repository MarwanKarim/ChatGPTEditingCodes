<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="ExamChildren_List" Codebehind="ExamChildren_List.aspx.cs" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">





    <style>
                  .header_Grid   th
                  {
            padding:5px 0px !important;
        }

        .header_Grid th[scope=col]  {
            background-color: #233242 !important;
            color: #fff !important;
           text-align: center !important;
            font-family: 'Conv_Chawder-Bold';
            font-size:10pt !important;
        }
 

       .row_Grid  {
           
                 height: 40px !important;
          }
 
    
        .row_Grid td {
             text-align: center !important;
            font-family: 'Conv_Chawder-Bold';
            padding:2px 5px;
           font-size:10pt !important;
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
                       font-size: 13pt !important;
        }

        .RadComboBox, .RadComboBoxDropDown ul li rcbItem,
        .RadComboBoxDropDown_Default_rtl {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
        }


        .lbl_Active_green_Style{
            background-color:#2AB934;
            color:white;
            border-radius:5px !important;
 text-align: center !important;
            font-family: 'Conv_Chawder-Bold';
            padding:2px 10px;
           font-size:10pt !important;
        }



        .lbl_Active_red_Style{
            background-color:#CA2222;
            color:white;
            border-radius:5px !important;
 text-align: center !important;
            font-family: 'Conv_Chawder-Bold';
            padding:2px 10px;
           font-size:10pt !important;
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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Certificate List | Kindergarten	  "></asp:Label>
                            <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" Visible="False" ></asp:Label>

                           <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>
                          <asp:Label ID="lbl_AcademicYear_ID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"  ></asp:Label>
                        
                    </h6>
                </div>

            </div>
        </div>

        <br />

  <%--         <asp:UpdatePanel runat="server" ID="Upnl" >
        <ContentTemplate>--%>

        <div class="container-fluid">
            <!-- ============================================================== -->

                                                <%--============================================================================================--%>
              <telerik:RadNotification RenderMode="Lightweight" ID="RadNofiction_Account" runat="server"  
      TitleIcon="info"     Title=" "  OnClientHidden=""
                VisibleOnPageLoad="true" AutoCloseDelay="0" ShowCloseButton="true" ContentIcon=""
               Position="Center" Width="600px"   
                EnableRoundedCorners="true" EnableShadow="true" Visible="false"
      Height="500px" CssClass="invoice_style"   CloseButtonToolTip="" ViewStateMode="Inherit" ShowTitleMenu="True" ContentScrolling="Auto" BorderStyle="Solid">
                <ContentTemplate>
 
             
               
                     <iframe src="ExamStudent_FinalResult.aspx"   
                   style="width:100% !important; height:500px !important;"    ></iframe>
 
                </ContentTemplate>
            </telerik:RadNotification>

                  <%--============================================================================================--%>


            <!-- Start Page Content -->
  <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
             


                        <div class="form-row">

      <%--====================================================================--%>

 <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label2" runat="server" Text="Acadamic Year " CssClass="lbl_style"></asp:Label>
</label>  
                                 
     <asp:DropDownList ID="ddl_AcadamicYear" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_AcadamicYear"  DataTextField="Year1"  DataValueField="AcademicYear_ID"
         >
      
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_AcadamicYear" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand=" SELECT        AcademicYear_ID,convert(varchar(20), year(StartDate)) +' - '+ convert(varchar(20), year(EndDate)) as Year1
FROM            tblSetting_AcademicYear where CurrentYear=1 ">

</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_AcadamicYear" runat="server" ID="RequiredFieldValidator21" 
 ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />
   
          

  </div> 
 <%--====================================================================--%>
                   


 <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Board" CssClass="lbl_style"></asp:Label>
</label>  
                                 
     <asp:DropDownList ID="ddl_EducationalBoard" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_EducationalBoard"  DataTextField="EducationalBoardName"  DataValueField="EducationalBoard_ID"
         AppendDataBoundItems="True"   AutoPostBack="true"  OnSelectedIndexChanged="ddl_EducationalBoard_SelectedIndexChanged"  >
                           <asp:ListItem Text="choose" Value="0"  />
                   </asp:DropDownList>

<asp:SqlDataSource ID="sds_EducationalBoard" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="Setting_EducationalBoard_Select_ddl_BoardType" SelectCommandType="StoredProcedure">
    <SelectParameters>
              <asp:Parameter  Name="BoardTypeID" Type="Int32" DefaultValue="1" />
           <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
         <asp:RequiredFieldValidator ControlToValidate="ddl_EducationalBoard" runat="server" ID="RequiredFieldValidator1" 
                                    ValidationGroup="grpRegistration"  InitialValue="0"    Text="Required" ForeColor="Red" CssClass="font1" />   
 
  </div> 

 <%--====================================================================--%>
                   


 <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label3" runat="server" Text="Class" CssClass="lbl_style"></asp:Label>
</label>  
                                 
     <asp:DropDownList ID="ddl_Class" runat="server" class="form-control font1 b_textbox"
           AppendDataBoundItems="True"  AutoPostBack="true"   OnSelectedIndexChanged="ddl_Class_SelectedIndexChanged" >
            <asp:ListItem Text="All" Value="0"  />
                        </asp:DropDownList>

<asp:SqlDataSource ID="sds_Class" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="SELECT  Class_ID, ClassName
FROM            tblSetting_Class where EducationalBoard_Fkey=@EducationalBoard_Fkey">
    <SelectParameters>
     <asp:ControlParameter ControlID="ddl_EducationalBoard"  Name="EducationalBoard_Fkey" DefaultValue="0" />
    </SelectParameters>
</asp:SqlDataSource>

 
   
 
  </div> 
         
                            

                                   <%--====================================================================--%>
                   


 <div class="col-md-2 mb-3" >
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label4" runat="server" Text="Section" CssClass="lbl_style"></asp:Label>
</label>  
                                 
   <asp:DropDownList ID="ddl_Section" runat="server" class="form-control font1 b_textbox"
         DataSourceID="sds_Section"  
         AppendDataBoundItems="True"   >

                           <asp:ListItem Text="All" Value="0"  />
                      
                     
                   </asp:DropDownList>

        <asp:SqlDataSource ID="sds_Section" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                                    SelectCommand="Setting_SectionAcademicYear_Select_ddl" SelectCommandType="StoredProcedure">
                                    <SelectParameters>

                                        <asp:ControlParameter ControlID="ddl_Class" Name="Class_Fkey" DefaultValue="0" />
 <asp:ControlParameter ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="Int32" />

                                    </SelectParameters>

</asp:SqlDataSource>
    
 
  </div> 
     
                            <%--======================================================--%>
<%--          <div class="col-md-1">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label5" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 
  <asp:LinkButton ID="Lnk_Search" runat="server" class="btn btn-dark"   CausesValidation="True"  ToolTip="Search"
     OnClick="Lnk_Search_Click"
      >         <i class="mdi mdi-search-web"></i> Seacrh</asp:LinkButton>
&nbsp;&nbsp;




                 </div>

                  </div>--%>
    <%--====================================================================--%>



        <div class="col-md-2">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label16" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 

                               
                          <asp:LinkButton ID="Lnk_Search" runat="server" class="btn btn-dark  waves-effect waves-light" 
                              OnClick="Lnk_Search_Click" ValidationGroup="grpRegistration">
                    <i class="mdi mdi-search-web"></i>Search</asp:LinkButton> 

 
 
              
                <a href="ExamChildren_Background.aspx" target="_blank" 
                    class="btn btn-danger  waves-effect waves-light" >Background</a>
 
                             
                                       
                
                 
                
                 </div>

 

                 </div>
    </div>

        <%--======================================================--%>
                          </div>
                    </div>
                </div>



              
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">










                                <div class="table-responsive font1" style="overflow-x: scroll; padding-bottom:100px;">

                                    <asp:GridView ID="Gridview1"
                                        runat="server" AutoGenerateColumns="False"
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="Student_ID"
                                   Width="100%" GridLines="None" PageSize="30"
                                        
                                        OnRowDataBound="Gridview1_RowDataBound">



                                        <Columns>



     <asp:TemplateField ShowHeader="False"  >
                          <ItemTemplate>
                                                    &nbsp;
                             
                            
                                             <div class="btn-group">
    <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     <i class="far fa-id-card"></i>
    </button>
    <div class="dropdown-menu animated flipInY">
        <a   class="dropdown-item"  target="_blank" 
            href="ExamMark_Card_Kindergarten_Report.aspx?Student_ID=<%# Eval("Student_ID") %>&Section_Fkey=<%# Eval("Section_Fkey") %>&AcademicYear_Fkey=<%# Eval("AcademicYear_Fkey") %>">
            <i class="far fa-id-card"></i>
            Certficate  </a>
           
 

      
    </div>
</div>
 
                                                </ItemTemplate>
                                            </asp:TemplateField>


     <asp:TemplateField ShowHeader="False"  >
                          <ItemTemplate>   
                              <%--  <i class="fas fa-comment " style="width:90px"></i>  --%>

                              <asp:LinkButton ID="Lnk_Exam_Note" runat="server" OnClick="Lnk_Exam_Note_Click"
                                   Font-Size="20px" ToolTip="Result" ForeColor="Red"
                          > 

<i class="fas fa-user-graduate"></i>
                        </asp:LinkButton>
                 </ItemTemplate>
                                            </asp:TemplateField>
 <asp:TemplateField HeaderText="" HeaderStyle-Width="40px" ItemStyle-Width="40px">   
         <ItemTemplate>
                 <%# Container.DataItemIndex + 1 %>   
         </ItemTemplate>
     </asp:TemplateField>




                                            

                  <asp:TemplateField HeaderText=" " >

                                                <ItemTemplate>
                                                 

                                                    <img src='UploadFile/<%# Eval("SPhoto") %>' width="50px"   height="50px" style="margin:2px ;"/>
 
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            <asp:TemplateField HeaderText=" " InsertVisible="False"   Visible="False">

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_Student_ID_GV" runat="server" Text='<%# Eval("Student_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                                  <asp:TemplateField HeaderText="Acadamic Year"  Visible="false"  >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelYear1" runat="server" Text='<%# Eval("Year1") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


<%--                                                           <asp:TemplateField HeaderText="File | No"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelBookRegNo" runat="server" Text='<%# Eval("BookRegNo") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                            

                                                 <asp:TemplateField HeaderText=" Student Name E "   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelStudentNameE" runat="server" Text='<%# Eval("StudentNameE") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                           <asp:TemplateField HeaderText=" Student Name K "   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelStudentNameK" runat="server" Text='<%# Eval("StudentNameK") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                           <%--       <asp:TemplateField HeaderText="Date Of Birth   "   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelDateOfBirth" runat="server" Text='<%# Eval("DateOfBirth","{0:yyyy-MM-dd}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>


                              <%--                  <asp:TemplateField HeaderText="Age"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="Labelage" runat="server" Text='<%# Eval("age") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                                    <asp:TemplateField HeaderText="Gender"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                            
 

                                                
                                                  <asp:TemplateField HeaderText="Section "   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelSectionName" runat="server" Text='<%# Eval("SectionName") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            
                                                      <asp:TemplateField HeaderText="Status "  Visible="false"  >
                                              
                                                <ItemTemplate>
                                                     <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("Student_Active_chk") %>' />





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
    
 

                  
 <%--                 </ContentTemplate>

 
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




 

    <asp:SqlDataSource ID="sds_Student" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                             SelectCommand="Exam_Student1_Select_List"   SelectCommandType="StoredProcedure"
                           >
                         
        <SelectParameters>
             <asp:ControlParameter ControlID="ddl_AcadamicYear" Name="AcademicYear_Fkey" Type="Int32" /> 
                           <asp:ControlParameter ControlID="ddl_EducationalBoard" Name="EducationalBoard_Fkey" Type="Int32" />

                           <asp:ControlParameter ControlID="ddl_Class" Name="Class_Fkey" Type="Int32" />
                           <asp:ControlParameter ControlID="ddl_Section" Name="Section_Fkey" Type="Int32" />
            
                                <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" />

 
        </SelectParameters>
        
        <DeleteParameters>
           <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
                                  <asp:ControlParameter ControlID="lbl_Student_ID" Name="Student_ID" Type="Int32" />
                    <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" />
                             </DeleteParameters>
                              
               
                               
                         </asp:SqlDataSource>




                           <%-- =============================================================================--%>


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

                               <%-- =============================================================================--%>


    
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


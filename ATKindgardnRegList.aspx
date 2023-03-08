<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="ATKindgardnRegList" Codebehind="ATKindgardnRegList.aspx.cs" %>

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
           text-align: left !important;
            font-family: 'Conv_Chawder-Bold';
            font-size:10pt !important;
        }
 

       .row_Grid  {
           
                 height: 40px !important;
          }
 
    
        .row_Grid td {
             text-align: left !important;
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
                       font-size: 12pt !important;
        }

        .RadComboBox, .RadComboBoxDropDown ul li rcbItem,
        .RadComboBoxDropDown_Default_rtl {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
        }




        .RadComboBox input 
        {
            height:25px !important;
        }




    </style>


    <link href="css/pageStyle.css" rel="stylesheet" />
    <link href="css/ResultMsg/result.css" rel="stylesheet" />

                <link href="css/SwitchXom.css" rel="stylesheet" />

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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Kindgardn  List "></asp:Label>
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



            <!-- Start Page Content -->
  <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
             


                        <div class="form-row">

      <%--====================================================================--%>
<div class="col-md-3">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label1" runat="server" Text="Student Name  | Father & Mother phone No" CssClass="lbl_style"></asp:Label>
</label> 
  
           <telerik:RadComboBox RenderMode="Lightweight" ID="ddl_StudentName" runat="server"   
                                    Label="" DataSourceID="sds_ATStudentReg_StudentName" DataTextField="StudentNameE"
                                       Height="200px"     HighlightTemplatedItems="true"     DataValueField="OrderKindgardn_ID" MarkFirstMatch="True"  
                                 Width="100%"  AppendDataBoundItems="true"   Filter="Contains">
                                    <Items>
                                        <telerik:RadComboBoxItem Value="0" Text="All" />
                                    </Items>
      </telerik:RadComboBox>
 

                        <asp:SqlDataSource ID="sds_ATStudentReg_StudentName" runat="server"
                                    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                                    SelectCommand="SELECT        OrderKindgardn_ID, StudentNameE +' | '+isnull(FatherPhoneNo,'')  +' | '+isnull(MotherPhoneNo,'')   as StudentNameE
FROM            tblStudent_Order_Kindgardn
WHERE        (AcademicYear_Fkey = @AcademicYear_Fkey)"  >
                            <SelectParameters>
                                <asp:ControlParameter Name="AcademicYear_Fkey" ControlID="lbl_AcademicYear_ID" Type="Int32" />
                            </SelectParameters>
                                   
                                </asp:SqlDataSource>


     </div>
         
         
      <%--====================================================================--%>
<div class="col-md-3">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label2" runat="server" Text="Stage" CssClass="lbl_style"></asp:Label>
</label> 
  


 <asp:DropDownList ID="ddl_Stage" runat="server" class="form-control font1 b_textbox"
     
         AppendDataBoundItems="True"   >

                           <asp:ListItem Text="All" Value="0"  />
        <asp:ListItem Text="1" Value="1"  />
              <asp:ListItem Text="2" Value="2"  />
                   </asp:DropDownList> 


         </div>
  
     
                            <%--======================================================--%>
      

<div class="col-md-3">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label16" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 

 <asp:LinkButton ID="Lnk_Search" runat="server" class="btn btn-dark"   CausesValidation="True"  ToolTip="Search"
    OnClick="Lnk_Search_Click"  >         <i class="mdi mdi-search-web"></i> Seacrh</asp:LinkButton>

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
                                        CellPadding="0" CssClass=" " AllowPaging="True" DataKeyNames="OrderKindgardn_ID"
                                        DataSourceID="sds_Student_Order_Kindgardn" Width="100%" GridLines="None" PageSize="30">



                                        <Columns>

<asp:TemplateField>
    <ItemTemplate>
        <%# Container.DataItemIndex + 1 %>
    </ItemTemplate>
</asp:TemplateField>

<%--                                  
             <asp:TemplateField ShowHeader="False"  HeaderStyle-Width="100px" >
                              <ItemTemplate>
                                                        &nbsp;
                             
      
                                                 <div class="btn-group">
        <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="ti-settings"></i>
        </button>
        <div class="dropdown-menu animated flipInY">
            <a target="_blank" class="dropdown-item" href="#">Add Student</a>
           


        </div>
    </div>
 
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                        --%>

 






                                            <asp:TemplateField HeaderText=" " InsertVisible="False"   Visible="False">

                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_OrderKindgardn_ID_GV" runat="server" Text='<%# Eval("OrderKindgardn_ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                              

                                                 

                                                 <asp:TemplateField HeaderText="Student "   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelStudentNameE" runat="server" Text='<%# Eval("StudentNameE") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                           <asp:TemplateField HeaderText="DOB "   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelDateOfBirth" runat="server" Text='<%# Eval("DateOfBirth","{0:yyyy-MM-dd}") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                        
                                           <asp:TemplateField HeaderText="Gender"   >
                                              
                                                <ItemTemplate>
                                                    <asp:Label ID="LabelGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
        

 




                               <asp:TemplateField  HeaderText=" Status " >
                             <ItemTemplate>

<%--Checked='<%# Eval("ParentActive") %>'--%>
                                   <label class="switch11" style="margin-top:8px  !important;">
                                                        <asp:CheckBox ID="chkbox_ParentActive" runat="server"   Text=""  
                                                            OnCheckedChanged="chkbox_ParentActive_CheckedChanged" AutoPostBack="true"  />



                                                        <div class="slider22 round33">
                                                            <span class="on">ON</span>
                                                            <span class="off">OFF</span>

                                                        </div>


                                                    </label> 
                                            </ItemTemplate>
                         </asp:TemplateField>
                                            

                                            
 
                                            
            <asp:TemplateField  HeaderText=" " >
                             <ItemTemplate>
<asp:LinkButton ID="lnk_Delete" runat="server"  
OnClientClick="return confirm('Are you sure you want to delete this record?');"
ToolTip="Delete"  CommandName="Delete"><i  style="font-size:28px !important; color:red"  class="m-r-10 mdi mdi-delete-circle" > </i> </asp:LinkButton>
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


 

    <asp:SqlDataSource ID="sds_Student_Order_Kindgardn" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                             SelectCommand="Student_Order_Kindgardn_Select"   SelectCommandType="StoredProcedure"
                              
        DeleteCommand="Student_Order_Kindgardn_Delete" DeleteCommandType="StoredProcedure"
          >
        <SelectParameters>
 <asp:ControlParameter ControlID="ddl_StudentName"   Name="OrderKindgardn_ID" Type="Int32"  DefaultValue="0"/>


     <asp:ControlParameter ControlID="ddl_Stage"   Name="Stage" Type="Int32"  DefaultValue="0"/>

    
 <asp:ControlParameter Name="AcademicYear_Fkey" ControlID="lbl_AcademicYear_ID" Type="Int32" />

            
        </SelectParameters>
 
        <DeleteParameters>
   <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000" ConvertEmptyStringToNull="true" />
             <asp:Parameter   Name="OrderKindgardn_ID" Type="Int32"  DefaultValue="0"/>
                    <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" />
        </DeleteParameters>
 </asp:SqlDataSource>


 

                           <%--    +++++++++++++++++++++++++++++++++++++++++++++++++++++++--%>


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


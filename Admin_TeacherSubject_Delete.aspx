<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="Admin_TeacherSubject_Delete"  validateRequest="false" Codebehind="Admin_TeacherSubject_Delete.aspx.cs" %>

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
                             <asp:Label ID="lbl_header_str" runat="server" CssClass="font_header1" Text="Subject / Course   "></asp:Label>
                                     <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" style="display:none !important;"></asp:Label>

                      <asp:Label ID="lbl_UserID" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="#FF3300"  Visible="False"></asp:Label>
                        <asp:Label ID="lbl_AcademicYear_ID" runat="server" Text="0" ForeColor="Red" Visible="False"></asp:Label>

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
 


                <div class="row">
                         
 <div class="col-12">

<div class="row">
 
         
          <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"> Preparation    </h4>
                     <hr />

                         
 <div class="form-row">


                      <div class="col-md-6 mb-3" >
  <label for="validationCustom02">
  <asp:Label ID="Label6" runat="server" Text="&nbsp;&nbsp;" CssClass="lbl_style"></asp:Label>
</label>


            
   <telerik:RadComboBox RenderMode="Lightweight" ID="ddl_Preparation" runat="server"   
                                    DataSourceID="sds_Preparation_List"
                    DataTextField="PTitle" DataValueField="Preparation_ID"
                                  Height="150px"    
                                     HighlightTemplatedItems="true"
                                 
                              ValidationGroup="grpRegistration"
                                   MarkFirstMatch="True" 
                                   Width ="100%"    EmptyMessage="choose"
       AutoPostBack="true" OnSelectedIndexChanged="ddl_Preparation_SelectedIndexChanged"
                                    Filter="Contains" EnableVirtualScrolling="True"  >
  
                      
      </telerik:RadComboBox>
                                        
<asp:SqlDataSource ID="sds_Preparation_List" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="Admin_TeacherPreparation_Select_ddl" SelectCommandType="StoredProcedure">
    <SelectParameters>
 
                    <asp:ControlParameter  ControlID="lbl_AcademicYear_ID" Name="AcademicYear_Fkey" Type="String" />

<%--     <asp:QueryStringParameter QueryStringField="StaffSubjectMap_ID" Name="StaffSubjectMap_Fkey"  Type="String"  DefaultValue="0" /> --%>
   <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />
 
    </SelectParameters>

</asp:SqlDataSource>


                             

                   </div> 


        <div class="col-md-6 mb-3" >
             <label for="validationCustom02">
 
  <asp:Label ID="Label1" runat="server" Text="&nbsp;&nbsp;" CssClass="lbl_style"></asp:Label>
</label>
                     <div class="form-group"> 
                  
                 
                         
                     
                     
                     
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Action
                                            </button>
                                            <div class="dropdown-menu">
      <asp:LinkButton ID="lnk_Preparation" runat="server"  OnClick="lnk_Preparation_Click" class="dropdown-item">
  <span class="btn-label"><i class="fa fa-plus-circle"></i></span>&nbsp; Add     </asp:LinkButton>

                              
                                                <div class="dropdown-divider"></div>

<asp:LinkButton ID="lnk_Preparation_edit" runat="server"  OnClick="lnk_Preparation_edit_Click" class="dropdown-item"  >
<i class="ti-pencil-alt"></i> Edit     </asp:LinkButton>


                                             
                                            </div>
                                        </div>
                     
                     </div> 

             </div> 



        <!-- ============================================================== -->


    
 <div class="col-lg-6 col-xlg-6 m-t-30">
                                  
                              


  </div> 

       








                           </div>     
                         <!-- ============================================================== -->




                </div>
              </div>
           </div>

                </div>
                        <%-- end row--%>
 

                                    <!-- =============================Video Lectures================================= -->


     

<div class="row">
 

         
          <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">     
                                <br />


                              <h5 class="card-title">   <span class="btn-label"><i class="m-r-10 mdi mdi-airplay"></i></span>&nbsp;  

 
Video Lectures
                              </h5>



                     <hr />

                            <!-- Column -->
 <asp:GridView ID="GridView_Video" runat="server" DataSourceID="sds_TeacherVideo_select" DataKeyNames="TeacherVideo_ID" 
     
     Width="100%" GridLines="None" PageSize="20" AllowPaging="true"
     
     AutoGenerateColumns="false">
    <Columns>


 
          <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                              
                                                    
             <asp:LinkButton ID="Lnk_Delete" runat="server"  
                                           OnClientClick="return confirm('Are you sure you want to delete this record?');" TabIndex="-1"
ToolTip="Delete"  CommandName="Delete"><i  style="font-size:18px !important; color:red"  class="m-r-10 mdi mdi-delete-circle" > </i> </asp:LinkButton>

                                                </ItemTemplate>
                                            </asp:TemplateField>

 
 <asp:TemplateField HeaderText="#" >   
         <ItemTemplate>
                    
              <asp:Label ID="lbl_RowNumber" runat="server" Text="<%# Container.DataItemIndex + 1 %>"  ForeColor="Red"></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>

 
        
 <asp:TemplateField HeaderText=""  >   
         <ItemTemplate>

      <asp:Label ID="lbl_TeacherVideo_ID" runat="server" Text='<%# Eval("TeacherVideo_ID") %>'   Visible="false"></asp:Label>

                  </ItemTemplate>
     </asp:TemplateField>

 <asp:TemplateField HeaderText="Title"  >   
         <ItemTemplate>
             <asp:Label ID="lbl_VTitle" runat="server" Text='<%# Eval("VTitle") %>'></asp:Label>

       </ItemTemplate>
     </asp:TemplateField>


 <asp:TemplateField HeaderText="Date"  >   
         <ItemTemplate>
 <asp:Label ID="lbl_PublishingDate" runat="server" Text='<%# Eval("PublishingDate","{0:yyyy-MM-dd}") %>'></asp:Label>

       </ItemTemplate>
     </asp:TemplateField>

         <asp:TemplateField HeaderText=""  >   
         <ItemTemplate>
 <a href="Admin_TeacherVideoView_Delete.aspx?TeacherVideo_ID=<%# Eval("TeacherVideo_ID") %>" class="dropdown-item"  target="_blank"><i class="ti-comments"></i> View  </a>

       </ItemTemplate>
     </asp:TemplateField>

    </Columns>

                                                 <HeaderStyle    CssClass="header_Grid"/>
                        <PagerStyle CssClass="pagination-ys" />
                        <RowStyle   CssClass="row_Grid"   />
                        <AlternatingRowStyle BackColor="#eeeeee"   /> 
                                    </asp:GridView>
     
                             
<asp:SqlDataSource ID="sds_TeacherVideo_select" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="Admin_TeacherVideo_Select_Subject" SelectCommandType="StoredProcedure"
    DeleteCommand="Admin_TeacherVideo_Delete_Subject" DeleteCommandType="StoredProcedure"
    
    >
    <SelectParameters>
 
      <asp:ControlParameter ControlID="ddl_Preparation" Name="Preparation_Fkey"  Type="String"  DefaultValue="" /> 
  
    </SelectParameters>

    <DeleteParameters>

              <asp:Parameter   Name="TeacherVideo_ID"  Type="Int32"  DefaultValue="0" /> 


    </DeleteParameters>

</asp:SqlDataSource>
                


                             
       
 <div class="form-row">
   

        </div>
                 


                </div>
                    <hr />
              

 
                        
                        
                        
         </div>
                            </div>

                </div>
                        <%-- end row--%>
 

          
                        

     <!-- =============================Course Material ================================= -->




                        

<div class="row">
 
         
          <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                              <h5 class="card-title">   <span class="btn-label"><i class="m-r-10 mdi mdi-airplay"></i></span> 

      Course Material    

                              </h5>

     

                     <hr />

                            <!-- Column -->
<asp:GridView ID="GridView_CourseMaterial" runat="server" DataSourceID="sds_TeacherCourseMaterial_select" DataKeyNames="CourseMaterial_ID" 
     
     Width="100%" GridLines="None" PageSize="20" AllowPaging="true"
     
     AutoGenerateColumns="false">
    <Columns>


 
          <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                              
                                                    
             <asp:LinkButton ID="Lnk_Delete" runat="server"  
                                           OnClientClick="return confirm('Are you sure you want to delete this record?');" TabIndex="-1"
ToolTip="Delete"  CommandName="Delete"><i  style="font-size:18px !important; color:red"  class="m-r-10 mdi mdi-delete-circle" > </i> </asp:LinkButton>

                                                </ItemTemplate>
                                            </asp:TemplateField>

 
 <asp:TemplateField HeaderText="#" >   
         <ItemTemplate>
                    
              <asp:Label ID="lbl_RowNumber" runat="server" Text="<%# Container.DataItemIndex + 1 %>"  ForeColor="Red"></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>

 
        
 <asp:TemplateField HeaderText=""  >   
         <ItemTemplate>

      <asp:Label ID="lbl_TeacherVideo_ID" runat="server" Text='<%# Eval("CourseMaterial_ID") %>'   Visible="false"></asp:Label>

                  </ItemTemplate>
     </asp:TemplateField>

 <asp:TemplateField HeaderText="Title"  >   
         <ItemTemplate>
             <asp:Label ID="lbl_VTitle" runat="server" Text='<%# Eval("CTitle") %>'></asp:Label>

       </ItemTemplate>
     </asp:TemplateField>


 <asp:TemplateField HeaderText="Date"  >   
         <ItemTemplate>
 <asp:Label ID="lbl_PublishingDate" runat="server" Text='<%# Eval("PublishingDate","{0:yyyy-MM-dd}") %>'></asp:Label>

       </ItemTemplate>
     </asp:TemplateField>

         <asp:TemplateField HeaderText=""  >   
         <ItemTemplate>
 
 <a href="Admin_TeacherCourseMaterialView.aspx?CourseMaterial_ID=<%# Eval("CourseMaterial_ID") %>" class="dropdown-item"  target="_blank">
     <i class="ti-comments"></i> View  </a>


       </ItemTemplate>
     </asp:TemplateField>

    </Columns>

                                                 <HeaderStyle    CssClass="header_Grid"/>
                        <PagerStyle CssClass="pagination-ys" />
                        <RowStyle   CssClass="row_Grid"   />
                        <AlternatingRowStyle BackColor="#eeeeee"   /> 
                                    </asp:GridView>


 
           
<asp:SqlDataSource ID="sds_TeacherCourseMaterial_select" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="Admin_TeacherCourseMaterial_Select_Subject" SelectCommandType="StoredProcedure"
    DeleteCommand="Admin_TeacherCourseMaterial_Delete"
    DeleteCommandType="StoredProcedure"
    
    >
    <SelectParameters>
   <asp:ControlParameter ControlID="ddl_Preparation" Name="Preparation_Fkey"  Type="String"  DefaultValue="0" /> 
    </SelectParameters>

    <DeleteParameters>

           <asp:Parameter   Name="CourseMaterial_ID"  Type="Int32"  DefaultValue="0" /> 

        
    </DeleteParameters>

</asp:SqlDataSource>
                


                             



                </div>
                    <hr />
              

 
                        
                        
                        
         </div>
 </div>

                </div>



         <%-- end row--%>









                                    <!-- =============================Discussion Room================================= -->

  
 

<div class="row" >
 
         
          <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                              <h5 class="card-title">   <span class="btn-label"><i class="m-r-10 mdi mdi-airplay"></i></span>     



           Discussion Rooms      




                              </h5>



                     <hr />

                            <!-- Column -->



<asp:GridView ID="GridView_DiscussionRooms" runat="server" DataSourceID="sds_TeacherDiscussionRoom" DataKeyNames="DisRoom_ID" 
     
     Width="100%" GridLines="None" PageSize="20" AllowPaging="true"
     
     AutoGenerateColumns="false">
    <Columns>


 
          <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                              
                                                    
             <asp:LinkButton ID="Lnk_Delete" runat="server"  
                                           OnClientClick="return confirm('Are you sure you want to delete this record?');" TabIndex="-1"
ToolTip="Delete"  CommandName="Delete"><i  style="font-size:18px !important; color:red"  class="m-r-10 mdi mdi-delete-circle" > </i> </asp:LinkButton>

                                                </ItemTemplate>
                                            </asp:TemplateField>

 
 <asp:TemplateField HeaderText="#" >   
         <ItemTemplate>
                    
              <asp:Label ID="lbl_RowNumber" runat="server" Text="<%# Container.DataItemIndex + 1 %>"  ForeColor="Red"></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>

 
        
 <asp:TemplateField HeaderText=""  >   
         <ItemTemplate>

      <asp:Label ID="lbl_TeacherVideo_ID" runat="server" Text='<%# Eval("DisRoom_ID") %>'   Visible="false"></asp:Label>

                  </ItemTemplate>
     </asp:TemplateField>

 <asp:TemplateField HeaderText="Title"  >   
         <ItemTemplate>
             <asp:Label ID="lbl_DisTilte" runat="server" Text='<%# Eval("DisTilte") %>'></asp:Label>

       </ItemTemplate>
     </asp:TemplateField>


         <asp:TemplateField HeaderText="Desc"  >   
         <ItemTemplate>
             <asp:Label ID="lbl_SUB_DisTilte" runat="server" Text='<%# Eval("SUB_DisTilte") %>'></asp:Label>

       </ItemTemplate>
     </asp:TemplateField>

        





<%--         <asp:TemplateField HeaderText=""  >   
         <ItemTemplate>
 
   
                                     <a href='TeacherDiscussionRoomCommentList.aspx?DisRoom_ID=<%# Eval("DisRoom_ID") %>'>

<h6 class="font-normal" style="color:#333 !important;" ><%# Eval("SUB_DisTilte") %></h6>
 
                                     </a> 


       </ItemTemplate>
     </asp:TemplateField>--%>

    </Columns>

                                                 <HeaderStyle    CssClass="header_Grid"/>
                        <PagerStyle CssClass="pagination-ys" />
                        <RowStyle   CssClass="row_Grid"   />
                        <AlternatingRowStyle BackColor="#eeeeee"   /> 
                                    </asp:GridView>


 
           
<asp:SqlDataSource ID="sds_TeacherDiscussionRoom" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="Admin_TeacherDiscussionRoom_Select_Subject" SelectCommandType="StoredProcedure"
   DeleteCommand="Admin_TeacherDiscussionRoom_Delete"  DeleteCommandType="StoredProcedure"
      
    
    
    >
    <SelectParameters>
   <asp:ControlParameter ControlID="ddl_Preparation" Name="Preparation_Fkey"  Type="String"  DefaultValue="" /> 

    </SelectParameters>

    <DeleteParameters>

           <asp:Parameter   Name="DisRoom_ID"  Type="Int32"  DefaultValue="0" /> 

    </DeleteParameters>

</asp:SqlDataSource>
                


                             



                </div>
                    <hr />
              

 
                        
                        
                        
         </div>
           </div>

                </div>






          <!-- ==============================Zoom================================ -->




  

















          <!-- ==============================ASSIGNMENT================================ -->




<div class="row">
 
         
          <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                              <h5 class="card-title">   <span class="btn-label"><i class="m-r-10 mdi mdi-airplay"></i></span>    


Assignment

        
                              </h5>

 

                     <hr />

                            <!-- Column -->

<asp:GridView ID="GridView_Assignment" runat="server" 
    DataSourceID="sds_TeacherAssignment_Select_subject" DataKeyNames="Assignment_ID" 
     
     Width="100%" GridLines="None" PageSize="20" AllowPaging="true"
     
     AutoGenerateColumns="false">
    <Columns>


 
          <asp:TemplateField ShowHeader="False">
                                                <ItemTemplate>
                              
                                                    
             <asp:LinkButton ID="Lnk_Delete" runat="server"  
 OnClientClick="return confirm('Are you sure you want to delete this record?');" TabIndex="-1"
ToolTip="Delete"  CommandName="Delete"><i  style="font-size:18px !important; color:red"  class="m-r-10 mdi mdi-delete-circle" > </i> </asp:LinkButton>

                                                </ItemTemplate>
                                            </asp:TemplateField>

 
 <asp:TemplateField HeaderText="#" >   
         <ItemTemplate>
                    
              <asp:Label ID="lbl_RowNumber" runat="server" Text="<%# Container.DataItemIndex + 1 %>" ForeColor="Red"></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>

 
        
 <asp:TemplateField HeaderText=""  >   
         <ItemTemplate>

      <asp:Label ID="lbl_Assignment_ID" runat="server" Text='<%# Eval("Assignment_ID") %>'   Visible="false"></asp:Label>

                  </ItemTemplate>
     </asp:TemplateField>

 <asp:TemplateField HeaderText="Title"  >   
         <ItemTemplate>
             <asp:Label ID="lbl_ATitle" runat="server" Text='<%# Eval("ATitle") %>'></asp:Label>

       </ItemTemplate>
     </asp:TemplateField>


         <asp:TemplateField HeaderText="Publishing Date"  >   
         <ItemTemplate>
  <asp:Label ID="lbl_PublishingDate" runat="server" Text='<%# Eval("PublishingDate","{0:yyyy-MM-dd}") %>'></asp:Label>

     <br />
             <br />

               <asp:Label ID="lbl_DueDate" runat="server" Text='<%# Eval("DueDate","{0:yyyy-MM-dd}") %>'></asp:Label>
                  <br />

             <br />
               <asp:Label ID="lbl_CutOffDate" runat="server" Text='<%# Eval("CutOffDate","{0:yyyy-MM-dd}") %>'></asp:Label>

       </ItemTemplate>
     </asp:TemplateField>

         <asp:TemplateField HeaderText="Comment"  >   
         <ItemTemplate>
             <asp:Label ID="lbl_Comment" runat="server" Text='<%# Eval("Comment") %>'></asp:Label>

       </ItemTemplate>
     </asp:TemplateField>





         <asp:TemplateField HeaderText=""  >   
         <ItemTemplate>
       


           <a href='Admin_TeacherQHeader.aspx?Assignment_ID=<%# Eval("Assignment_ID")%>&ATitle=<%# Eval("ATitle") %> ' 
               target="_blank" class="dropdown-item"  >View</a>



        </ItemTemplate>
     </asp:TemplateField>

    </Columns>

 <HeaderStyle    CssClass="header_Grid"/>
 <PagerStyle CssClass="pagination-ys" />
 <RowStyle   CssClass="row_Grid"   />
 <AlternatingRowStyle BackColor="#eeeeee"   /> 
 </asp:GridView>


 
           
<asp:SqlDataSource ID="sds_TeacherAssignment_Select_subject" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
    SelectCommand="Admin_TeacherAssignment_Select_subject" SelectCommandType="StoredProcedure"
    
    
    DeleteCommand="Admin_TeacherAssignment_Delete" DeleteCommandType="StoredProcedure"
    
    
    >
    <SelectParameters>
 

      <asp:ControlParameter ControlID="ddl_Preparation" Name="Preparation_Fkey" Type="Int32" DefaultValue="0" />
  


    </SelectParameters>

    <DeleteParameters>

 <asp:Parameter   Name="Assignment_ID" Type="Int32" DefaultValue="0" />


    </DeleteParameters>

</asp:SqlDataSource>
                

       



                             



                </div>
                    <hr />
              

 
                        
                        
                        
         </div>
           </div>

                </div>


     <!-- ===========================end row=================================== -->















                    </div>
            
                    

                


          



            <!-- ============================================================== -->










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











    <!-- All Jquery -->
    <!-- ============================================================== -->

<asp:SqlDataSource ID="sds_TeacherPreparation" runat="server"
        ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
        SelectCommand="TeacherPreparation_Select_subject" DeleteCommand="TeacherPreparation_Delete"
        DeleteCommandType="StoredProcedure" InsertCommand="TeacherPreparation_Insert"
        InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure"
        UpdateCommand="TeacherPreparation_Update" UpdateCommandType="StoredProcedure"

    
    
    >
 

          <SelectParameters>
     <asp:QueryStringParameter QueryStringField="StaffSubjectMap_ID" Name="StaffSubjectMap_Fkey"  Type="String"  DefaultValue="0" /> 
                    <asp:ControlParameter ControlID="lbl_UserID" Name="user_Insert" Type="Int32" DefaultValue="0" />

          </SelectParameters>





        </asp:SqlDataSource>


    <!-- ============================================================== -->

          



 

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


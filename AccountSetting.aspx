<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="AccountSetting" Codebehind="AccountSetting.aspx.cs" %>
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





           .treeView_style {
            font-family: 'Conv_Chawder-Bold';
            font-size: 10pt;
        }
         
           
           .lbl_style_treeView {
            font-family: 'Conv_Chawder-Bold';
            font-size: 14pt;
            color:red ;
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

      .RadComboBox, .RadComboBoxDropDown ul li rcbItem,
        .RadComboBoxDropDown_Default_rtl {
            font-family: 'Conv_Chawder-Bold' !important;
            font-size: 10pt !important;
           
        }
        /*.RadComboBox 
       {
  border:1px solid red  !important;
     }*/
        .RadComboBox input
        {

 height:25px !important;
        }
   
    </style>       
    

    <link href="css/pageStyle.css" rel="stylesheet" />
    <link href="css/ResultMsg/result.css" rel="stylesheet" />

  </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

     





            <div class="page-wrapper">
                             <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000"   Visible="false"></asp:Label>
                               <asp:Label ID="lbl_UserID" runat="server" Text="0" Visible="false"></asp:Label>

                
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="page-breadcrumb" style="margin:7px 0px !important;">
                    <div class="row">
                        <div class="col-5 align-self-center"  >
                            <h6 class="page-title" style="width:350px!important">&nbsp;&nbsp;
                             <asp:Label ID="lbl_header_str" runat="server"  CssClass="font_header1"   Text=" داخـڵ کـردنـی  حسابی ســەرەکــی "   ></asp:Label>


                            </h6>
                        </div>
                  
                        <%--<div class="col-7 align-self-center">
                            <div class="d-flex align-items-center justify-content-end">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="#">Home</a>
                                        </li>
                                        <li class="breadcrumb-item active" aria-current="page">Form Validation</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>--%>
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
 


                    <!-- Start Page Content -->
                    <!-- ============================================================== -->
                       <div class="row">
                
<%--=========================   right ==============================--%>
     
    <div class="col-sm-12 col-lg-4"   >
         <div class="card">

                  <div class="card-body">
 
                     
   
        
<%--====================111111111111111111111111111111==================================--%>
  
        <asp:Panel ID="Panel1" runat="server">
             <div class="form-row">

        <telerik:RadTreeView 
            RenderMode="Lightweight" 
    ID="RadTreeView1"   
    runat="server" 
 CssClass="treeView_style"
    DataFieldID="Code"
    DataTextField="AccountM_Name" 
    DataValueField="Code" 

            OnNodeClick="RadTreeView1_NodeClick"
    DataSourceID="SqlDataSource1">
  
</telerik:RadTreeView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand="  SELECT convert(varchar,Code)+ '__'+AccountM_Name as AccountM_Name, Code, LEN(Code)   as len1  ,
 
 substring(convert(varchar,Code),1,LEN(Code)-1) as  substring1  ,
   parentId
FROM            tblAccountMain  where substring(convert(varchar,Code),1,LEN(Code)-1)=0  and Code<>0  order by Code ">

        </asp:SqlDataSource>
 </div>

<%--====================111111111111111111111111111111==================================--%>
        </asp:Panel>
     

<%--====================22222222222222222222222222222==================================--%>
        <asp:Panel ID="Panel2" runat="server" Visible="false">
    <div class="form-row">

   <asp:Label ID="lbl_header2" runat="server" Text="0" CssClass="lbl_style_treeView"></asp:Label>
  <br />
    <telerik:RadTreeView 
            RenderMode="Lightweight" 
    ID="RadTreeView2" 
    runat="server" 
  CssClass="treeView_style"
    DataFieldID="Code"
    DataTextField="AccountM_Name" 
    DataValueField="Code" 
         OnNodeClick="RadTreeView2_NodeClick"
 >
  
</telerik:RadTreeView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand="
        SELECT       convert(varchar,Code)+ '__'+AccountM_Name as AccountM_Name,
  Code, LEN(Code)   as len1  ,  substring(convert(varchar,Code),1,LEN(Code)-1) as  substring1  ,
   parentId
FROM            tblAccountMain  where substring(convert(varchar,Code),1,LEN(Code)-1)=@parentId  order by Code">
           <SelectParameters>
                <asp:ControlParameter ControlID="RadTreeView1"  Name="parentId" Type="String" />
            </SelectParameters>

        </asp:SqlDataSource>
           
           

    </div> 
            <br />
         

            <asp:ImageButton ID="btn_back2" runat="server" OnClick="btn_back2_Click"  ToolTip="گەڕانەوە" ImageUrl="img/Back.png" Width="40px"/>
             
            </asp:Panel>
        <%--====================22222222222222222222222222222==================================--%>

            <br />


            
         
        
<%--====================333333333333333333==================================--%>

        <asp:Panel ID="Panel3" runat="server"  Visible="false">
  
               <div class="form-row">
            <asp:Label ID="lbl_header3" runat="server" Text="0" CssClass="lbl_style_treeView"></asp:Label>
 <br />
    <telerik:RadTreeView 
            RenderMode="Lightweight" 
    ID="RadTreeView3" 
    runat="server" 
    CssClass="treeView_style"
    DataFieldID="Code"
    DataTextField="AccountM_Name" 
    DataValueField="Code" 
           OnNodeClick="RadTreeView3_NodeClick"
 >
  
</telerik:RadTreeView>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand="
        SELECT       convert(varchar,Code)+ '__'+AccountM_Name as AccountM_Name,

 Code, LEN(Code)   as len1  ,
 
 substring(convert(varchar,Code),1,LEN(Code)-1) as  substring1  ,
 
  parentId
FROM            tblAccountMain  where substring(convert(varchar,Code),1,LEN(Code)-1)=@parentId order by Code ">
           <SelectParameters>
                <asp:ControlParameter ControlID="RadTreeView2"  Name="parentId" Type="String" />
            </SelectParameters>

        </asp:SqlDataSource>
            
             </div>
            
            <br />
           
       
                        <asp:ImageButton ID="btn_back3" runat="server" OnClick="btn_back3_Click"  ToolTip="گەڕانەوە" ImageUrl="img/Back.png" Width="40px"/>
        </asp:Panel>
        <%--====================3333333333333333333333333==================================--%>





        <%--====================4444444444444444444==================================--%>

        <asp:Panel ID="Panel4" runat="server" Visible="false">
      <div class="form-row"> 
            
            <asp:Label ID="lbl_header4" runat="server" Text="0" CssClass="lbl_style_treeView"></asp:Label>
  <br />
    <telerik:RadTreeView 
            RenderMode="Lightweight" 
    ID="RadTreeView4" 
    runat="server" 
          CssClass="treeView_style"
     OnNodeClick="RadTreeView4_NodeClick"
    DataFieldID="Code"
    DataTextField="AccountM_Name" 
    DataValueField="Code" 
 >
  
</telerik:RadTreeView>

        <asp:SqlDataSource ID="SqlDataSource4" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand="
        SELECT       convert(varchar,Code)+ '__'+AccountM_Name as AccountM_Name,

 Code, LEN(Code)   as len1  ,
 
 substring(convert(varchar,Code),1,LEN(Code)-1) as  substring1  ,
 
  parentId
FROM            tblAccountMain  where substring(convert(varchar,Code),1,LEN(Code)-1)=@parentId order by Code ">
           <SelectParameters>
                <asp:ControlParameter ControlID="RadTreeView3"  Name="parentId" Type="String" />
            </SelectParameters>

        </asp:SqlDataSource>
           
            </div>
            <br />
        
                        <asp:ImageButton ID="btn_back4" runat="server" OnClick="btn_back4_Click"  ToolTip="گەڕانەوە" ImageUrl="img/Back.png" Width="40px"/>

</asp:Panel>
        <%--====================4444444444444444444444==================================--%>



          <%--====================555555555555555555555==================================--%>

        <asp:Panel ID="Panel5" runat="server" Visible="false">
      <div class="form-row">
            
            <asp:Label ID="lbl_header5" runat="server" Text="0" CssClass="lbl_style_treeView"></asp:Label>
  <br />
    <telerik:RadTreeView 
            RenderMode="Lightweight" 
    ID="RadTreeView5"  
    runat="server" 
          CssClass="treeView_style"
      OnNodeClick="RadTreeView5_NodeClick"
    DataFieldID="Code"
    DataTextField="AccountM_Name" 
    DataValueField="Code" 
 >
  
</telerik:RadTreeView>

        <asp:SqlDataSource ID="SqlDataSource5" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand="
        SELECT       convert(varchar,Code)+ '__'+AccountM_Name as AccountM_Name,

 Code, LEN(Code)   as len1  ,
 
 substring(convert(varchar,Code),1,LEN(Code)-1) as  substring1  ,
 
  parentId
FROM            tblAccountMain  where substring(convert(varchar,Code),1,LEN(Code)-1)=@parentId order by Code ">
           <SelectParameters>
                <asp:ControlParameter ControlID="RadTreeView4"  Name="parentId" Type="String" />
            </SelectParameters>

        </asp:SqlDataSource>
             </div>
            
            <br />
       
   <asp:ImageButton ID="btn_back5" runat="server" OnClick="btn_back5_Click"  ToolTip="گەڕانەوە" ImageUrl="img/Back.png" Width="40px"/>

</asp:Panel>
        <%--====================555555555555555555555555==================================--%>



          <%--====================6666666666666666666666==================================--%>

        <asp:Panel ID="Panel6" runat="server" Visible="false">
      <div class="form-row"> 
            
            <asp:Label ID="lbl_header6" runat="server" Text="0" CssClass="lbl_style_treeView"></asp:Label>
  <br />
    <telerik:RadTreeView 
            RenderMode="Lightweight" 
    ID="RadTreeView6" 
    runat="server" 
    CssClass="treeView_style"
    DataFieldID="Code"

              OnNodeClick="RadTreeView6_NodeClick"
    DataTextField="AccountM_Name" 
    DataValueField="Code" >
  
</telerik:RadTreeView>

        <asp:SqlDataSource ID="SqlDataSource6" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand="
        SELECT       convert(varchar,Code)+ '__'+AccountM_Name as AccountM_Name,

 Code, LEN(Code)   as len1  ,
 
 substring(convert(varchar,Code),1,LEN(Code)-1) as  substring1  ,
 
  parentId
FROM            tblAccountMain  where substring(convert(varchar,Code),1,LEN(Code)-1)=@parentId order by Code ">
           <SelectParameters>
                <asp:ControlParameter ControlID="RadTreeView5"  Name="parentId" Type="String" />
            </SelectParameters>

        </asp:SqlDataSource>
          
            </div>
            
            <br />
            
   <asp:ImageButton ID="btn_back6" runat="server" OnClick="btn_back6_Click"  ToolTip="گەڕانەوە" ImageUrl="img/Back.png" Width="40px"/>

</asp:Panel>
          <%--====================6666666666666666666666==================================--%> 
                  
                  </div> 

         </div>
           </div>
<%--=========================  end  right ==============================--%>
<%--=========================   left ==============================--%>

                         <div class="col-sm-12 col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <%--  <h4 class="card-title">Validation Form</h4>--%>



                                <div class="form-row">


                                <%--      ====================================================================================--%>

                   <div class="col-md-4 mb-3">
                                        <label for="validationCustom02">
                                             &nbsp; &nbsp;
                                            <asp:Label ID="Label4" runat="server" Text="حــسـابی ســەرەکی" CssClass="lbl_style"></asp:Label>


                                        </label>
                                   <telerik:RadComboBox RenderMode="Lightweight" ID="ddlAccount_Main" runat="server" Height="200px"   EmptyMessage="هەڵبژیرە"
            Label="" DataSourceID="sds_Account_Main" DataTextField="AccountM_Name"   Width="100%"   class="form-control font1 b_textbox"
            DataValueField="Code"  Filter="Contains"  AppendDataBoundItems="True" OnSelectedIndexChanged="ddlAccount_Main_SelectedIndexChanged" 
                                       AutoPostBack="True"  Enabled="False" />

                     <asp:SqlDataSource ID="sds_Account_Main" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
                         SelectCommand="Account_Setting_ddl"  SelectCommandType="StoredProcedure"></asp:SqlDataSource>


                                          <asp:RequiredFieldValidator ControlToValidate="ddlAccount_Main" runat="server" ID="RequiredFieldValidator4"
                                            ValidationGroup="grpRegistration" ErrorMessage=""  CssClass="font1"   ForeColor="#FF0000" Text="Required"  InitialValue="0" />


                                    </div>



                                <%--      ====================================================================================--%>


               
                        


         



   </div>
                                         
                                    
                                    <div class="form-row">


                                <%--      ====================================================================================--%>

                             <div class="col-md-4 mb-3">
                                <label for="validationCustom01">
                                    &nbsp; &nbsp;
                                            <asp:Label ID="Label7" runat="server" Text="   ح /الختامی" CssClass="lbl_style"></asp:Label>
                                </label>

                                <asp:DropDownList ID="ddl_Account_TypeReport" runat="server"       ValidationGroup="grpRegistration"  
                                    class="form-control font1 b_textbox "   AutoPostBack="False" AppendDataBoundItems="True">
                                       <asp:ListItem Text="هەڵبژیرە"  Value="-1"></asp:ListItem>

                                     <asp:ListItem Text="المیزانیة"  Value="0"></asp:ListItem>
                                       <asp:ListItem Text="الارباح و الخسائر"  Value="1"></asp:ListItem>
                                       <asp:ListItem Text="المتاجرة"  Value="2"></asp:ListItem>
                                </asp:DropDownList>

                             
 



                                <asp:RequiredFieldValidator ControlToValidate="ddl_Account_TypeReport" runat="server" ID="RequiredFieldValidator1"
                                    ValidationGroup="grpRegistration"    ForeColor="#FF0000" Text="Required" 
                                    CssClass="font1" InitialValue="-1" />

                            </div>


                                    

                                <%--      ====================================================================================--%>

 

                                         <div class="col-md-2 mb-3">
                                <label for="validationCustom01">
                                    &nbsp; &nbsp;
                                            <asp:Label ID="lbl_typecurrency_str" runat="server" Text=" جۆری دراو  " CssClass="lbl_style"></asp:Label>
                                </label>

                                <asp:DropDownList ID="ddl_Currency" runat="server"       ValidationGroup="grpRegistration"  
                                    class="form-control font1 b_textbox "   AutoPostBack="False" AppendDataBoundItems="True">
                                     <asp:ListItem Text="هەڵبژیرە"  Value="0"></asp:ListItem>
                                       <asp:ListItem Text="دۆلار"  Value="1"></asp:ListItem>
                                       <asp:ListItem Text="دینار"  Value="2"></asp:ListItem>
                                </asp:DropDownList>

                             




                                <asp:RequiredFieldValidator ControlToValidate="ddl_Currency" runat="server" ID="RequiredFieldValidator2"
                                    ValidationGroup="grpRegistration"    ForeColor="#FF0000" Text="Required" 
                                    CssClass="font1" InitialValue="0" />

                            </div>


                                <%--      ====================================================================================--%>



       <div class="col-md-4 mb-3"  >
                                        <label for="validationCustom02">
                                             &nbsp; &nbsp;
                                            <asp:Label ID="lbl_type_account_str" runat="server" Text="جـۆری هەژمار" CssClass="lbl_style"></asp:Label>


                                        </label>
                                        <asp:DropDownList ID="ddl_AccountType" runat="server" class="custom-select font1 b_textbox" AppendDataBoundItems="True">
                                            <asp:ListItem Value="0">هــەڵـــبــژێــــرە</asp:ListItem>
                                            <asp:ListItem Value="1">دائن</asp:ListItem>
                                            <asp:ListItem Value="2">مدین</asp:ListItem>
 
                                                <asp:ListItem Value="3">هەردووکی</asp:ListItem>
                                           
                                        </asp:DropDownList>

                                          <asp:RequiredFieldValidator ControlToValidate="ddl_AccountType" runat="server" ID="RequiredFieldValidator1999"
                                            ValidationGroup="grpRegistration" ErrorMessage=""  CssClass="font1"   ForeColor="#FF0000" Text="Required"  InitialValue="0" />


                                    </div>
        






                                </div>

                                <%--      ====================================================================================--%>





 
















                                <div class="col-lg-12 col-xlg-6">
                                    <div class="card">
                                        <div class="card-body">

                                            <div class="button-group">

    

                                        <asp:Button ID="btn_Insert" runat="server" Text="زیاد کردن" CssClass="btn  waves-light btn-success font1" 
                                            OnClick="btn_insert_Click" CausesValidation="True" ValidationGroup="grpRegistration"  />
                                      
                                                
                                                
                                                <asp:Button ID="btn_Update" runat="server" Text=" گۆڕانکاری"    CssClass="btn  btn-warning font1" 
                                            OnClientClick="return Validate();"
                                            OnClick="btn_Update_Click" CausesValidation="True" ValidationGroup="grpRegistration"   Visible="False" />


                                                <script type="text/javascript">
                                                    function Validate() {
                                                        if (Page_ClientValidate()) {
                                                            return confirm('دڵنیایی لە گۆڕانکاری?');
                                                        }
                                                        return false;
                                                    }
                                              </script>
 
                                        <asp:Button ID="btn_Delete" runat="server" Text="سڕینەوە"    
                                            CssClass="btn   waves-light btn-danger font1" OnClick="btn_delete_Click"
                                            CausesValidation="False" formnovalidate 
                                            OnClientClick="javascript:return confirm('دڵنیایی لە سـڕینەوەی?');"
                                            Visible="False" />






                                         <asp:Button ID="btn_clear" runat="server" Text="پاشگەزبونەوە" CssClass="btn  waves-light btn-info font1" OnClick="btn_clear_Click" formnovalidate CausesValidation="False"     />


                                 


                                            </div>

                                        </div>                        
                                        <asp:Label ID="lbl_Account_id" runat="server" Text="0" Visible="False"></asp:Label>
                                          
                                        <div style="height:20px;">
                                        <asp:Label ID="lbl_result_msg" runat="server" Text="سەرکەتوبوو داخڵ کردنەکەت."  Visible="False"></asp:Label>
                                       </div>
                                    </div>
                                </div>


                                <%--======================================================--%>
                      
       
                               
                                <%-- ======================================================--%>
                            </div>
                        </div>
         </div>
<%--========================= end  left ==============================--%>
    </div>

                        <div class="row">
   <div class="col-12">
   <div class="card">
    <div class="card-body">
             
 
        <div class="form-row">

 


           <%---========================================================--%>

                <div class="col-md-4 mb-3">
                                        <label for="validationCustom01">
                                            &nbsp; &nbsp;
                                            <asp:Label ID="Label1" runat="server" Text="کۆد" CssClass="lbl_style" Font-Bold="true" ForeColor="Red"></asp:Label>
                                        </label>


                            <asp:TextBox ID="txt_code_search" runat="server" class="form-control font1 b_textbox"  autoComplete="off"  MaxLength="10"></asp:TextBox>

                           </div>

           <%---========================================================--%>




             <%---========================================================--%>

                <div class="col-md-2 mb-3">
                                        <label for="validationCustom01">
                                            &nbsp; &nbsp;
                                            <asp:Label ID="Label10" runat="server" Text="Sort" CssClass="lbl_style" Font-Bold="true" ForeColor="Red"></asp:Label>
                                        </label>


                           <telerik:RadComboBox RenderMode="Lightweight" ID="ddl_Sort1"
                                            runat="server"  class="form-control font1 b_textbox"
                                              Width="100%"   Label="" >
                                            <Items>
                                

                                                <telerik:RadComboBoxItem Value="1" Text=" تازترین داخڵ کردن" />
                                                 <telerik:RadComboBoxItem Value="2" Text=" بەپێ زنجیرەی حسابی" />
                                               <telerik:RadComboBoxItem Value="3" Text="  کۆنترین  داخڵ کردن" />
                                                
                                            </Items>
                                            </telerik:RadComboBox>

                           </div>

           <%---========================================================--%>





        <div class="col-md-2">
 <label for="validationCustom02">
&nbsp;&nbsp;
  <asp:Label ID="Label16" runat="server" Text="&nbsp;" CssClass="lbl_style"></asp:Label>
</label>   
            <div class="form-group"> 
                <asp:Button ID="btn_Search" runat="server" Text="  گـەڕان" CssClass="btn  waves-light btn-dark font1"  OnClick="btn_Search_Click"
                                       CausesValidation="false"   />
  </div>
            
      </div>
             </div>









                                          <div class="table-responsive font1" style="overflow-x:scroll">
 
                                            <asp:GridView ID="Gridview1"  Style="width: 100%"
                                                runat="server" AutoGenerateColumns="False" GridLines="None"
                                                DataKeyNames="AccountNumber" OnRowDataBound="Gridview1_RowDataBound"
                                                CellPadding="0"
                                                PageSize="100"
                                                 CssClass=""  
                                                CellSpacing="0"  OnPageIndexChanging="OnPageIndexChanging"
                                                DataSourceID="sdsAccount_All" AllowPaging="True"  >
                                                <Columns>
                                                    <asp:TemplateField ShowHeader="False"   >
                                                        <ItemTemplate>
                                                            &nbsp;
                                 <asp:ImageButton ID="ImageButton1" runat="server" formnovalidate ImageUrl="~/img/editt.png" OnClick="ImageButton1_Click" Width="35px" />
                                                        </ItemTemplate>
                                                             <HeaderStyle Width="100px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="AccountNumber" InsertVisible="False" SortExpression="AccountNumber" Visible="false" >

                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_AccountNumber" runat="server" Text='<%# Eval("AccountNumber") %>'></asp:Label>
                                                        </ItemTemplate>

                                                    </asp:TemplateField>


 



                                                    <asp:TemplateField HeaderText="کـڕیارەکـان" SortExpression="AccountName"  >

                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("AccountName") %>'></asp:Label>
                                                        </ItemTemplate>

                                                        <HeaderStyle Width="300px" />
                                                    </asp:TemplateField>



                                                    
                                                    <asp:TemplateField HeaderText="لق " SortExpression="AccountName"  Visible="false"  >

                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_Places_Name" runat="server" Text='<%# Eval("Places_Name") %>'></asp:Label>
                                                        </ItemTemplate>

                                                    </asp:TemplateField>
                                                

                                                    

 
                                             <asp:BoundField DataField="Account_TypeReport" HeaderText="ح /الختامی"   HeaderStyle-Width="200px"></asp:BoundField>
                                             
       <asp:BoundField DataField="Currency" HeaderText=" پارەی مامەڵە"  ItemStyle-ForeColor="Red"  ></asp:BoundField>
      <asp:BoundField DataField="AccountType" HeaderText="جۆری هەژمار"  ItemStyle-ForeColor="Red"  ></asp:BoundField>



                                          
                                                    

                                     
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
                <asp:Timer ID="Timer1" runat="server" Enabled="False" Interval="4000" OnTick="Timer1_Tick"></asp:Timer>


                       </ContentTemplate>
    </asp:UpdatePanel>


            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->




<asp:SqlDataSource ID="sdsAccount_All" runat="server"
                            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                            DeleteCommand="Account_Setting_Delete"
                            InsertCommand="Account_Setting_Insert"
                            SelectCommand="Account_Setting_Select_All" SelectCommandType="StoredProcedure"
                            UpdateCommand="Account_Setting_Update" DeleteCommandType="StoredProcedure"
                            InsertCommandType="StoredProcedure" UpdateCommandType="StoredProcedure"  
                             OnInserted="sdsAccount_All_Inserted"
                            OnUpdated="sdsAccount_All_Updated"
                            OnDeleted="sdsAccount_All_Deleted"   >
                        <DeleteParameters>
 <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="00000000000"  ConvertEmptyStringToNull="true" />

                        <asp:ControlParameter ControlID="lbl_Account_id" Name="AccountNumber" Type="Int32" />
                        </DeleteParameters>
                     
                            
                            
                            <InsertParameters>
            <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000000000000000"  ConvertEmptyStringToNull="true" />
            <asp:Parameter Direction="InputOutput" Name="OutPut_number" Type="String" DefaultValue="000000000"  ConvertEmptyStringToNull="true" />

            <asp:Parameter  Name="Places_Fkey"   Type="Int32"  DefaultValue="0"/>
            <asp:ControlParameter ControlID="ddl_Account_TypeReport" Name="Account_TypeReport" PropertyName="Text" Type="Int16" />
            <asp:ControlParameter ControlID="ddlAccount_Main" Name="CodeMain" PropertyName="SelectedValue" Type="String" /> 

            <%--   <asp:SessionParameter SessionField="CodeMain_Setting" Name="CodeMain"   Type="String" />--%>
            <%--   <asp:ControlParameter ControlID="txt_name" Name="AccountName"   Type="String" />--%>
            <asp:ControlParameter ControlID="ddl_Currency" Name="Currency" PropertyName="Text" Type="Int16" />
            <asp:ControlParameter ControlID="ddl_AccountType" Name="AccountType" PropertyName="SelectedValue" Type="Int16" />

            <asp:ControlParameter ControlID="lbl_UserID" Name="UserId"   Type="Int16" />  
                        </InsertParameters>




                             
                                     <SelectParameters>
              <asp:Parameter  Name="Places_Fkey"   Type="Int32"  DefaultValue="0"/>
             <asp:ControlParameter ControlID="txt_code_search" Name="CodeMain"   Type="string"  DefaultValue="0"/>
   <asp:ControlParameter ControlID="ddl_Sort1" Name="Sort1"   Type="Int32"  />
                            
                        </SelectParameters>
                             
   
                        <UpdateParameters>
                        <asp:ControlParameter ControlID="lbl_Account_id" Name="AccountNumber"   Type="Int32" />
                        <asp:ControlParameter ControlID="ddl_Account_TypeReport" Name="Account_TypeReport" PropertyName="Text" Type="Int16" />
                        <asp:ControlParameter ControlID="ddl_Currency" Name="Currency" PropertyName="Text" Type="Int16" />
                         <asp:ControlParameter ControlID="ddl_AccountType" Name="AccountType" PropertyName="SelectedValue" Type="Int16" />
                              <asp:ControlParameter ControlID="lbl_UserID" Name="UserId"   Type="Int16" />      
                        </UpdateParameters>
                             

                        </asp:SqlDataSource>



            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
             <%--   All Rights Reserved by Nice admin. Designed and Developed by
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

<%--<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>--%>


<%--    <script src="bootstrap/dist/js/app.min.js"></script>
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
 

  
    <script>

        function KeyPressOrder(fld, e) {

var strCheck = '0123456789';
var whichCode = e.which ? e.which : e.keyCode;

if (whichCode == 13 || whichCode == 8 || whichCode == 9) return true;
key = String.fromCharCode(whichCode);
if (strCheck.indexOf(key) == -1)
{   return false; } 

return true;
}
</script>
    


<%--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--%>



    <script>

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
}    </script>



 
      
 
 
 


    
       

 
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


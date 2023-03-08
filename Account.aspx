<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Group_Top.master" AutoEventWireup="true" Inherits="Account" Codebehind="Account.aspx.cs" %>
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


        


           .treeView_style {
            font-family: 'Conv_Chawder-Bold';
            font-size: 10pt;
        }
         
           
           .lbl_style_treeView {
            font-family: 'Conv_Chawder-Bold';
            font-size: 14pt;
            color:red ;
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
                             <asp:Label ID="lbl_Places_Fkey" runat="server" Text="0" ForeColor="#ff0000" style="display:none !important;"></asp:Label>
                  <asp:Label ID="lbl_UserID" runat="server" Text="0" Visible="false"></asp:Label>
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="page-breadcrumb" style="margin:7px 0px !important;">
                    <div class="row">
                        <div class="col-5 align-self-center"  >
                            <h6 class="page-title" style="width:350px!important">&nbsp;&nbsp;
                             <asp:Label ID="lbl_header_str" runat="server"  CssClass="font_header1"   Text="داخـڵ کـردنـی  هــەژمارەکان  "   ></asp:Label>


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
 <br />
        <asp:UpdatePanel runat="server" ID="Upnl" >
        <ContentTemplate>
              
                <div class="container-fluid">
                    <!-- ============================================================== -->
 
                               <!-- Start Page Content -->
                    <!-- ============================================================== -->
                       <div class="row">
                
<%--=========================   right ==============================--%>
     
    <div class="col-sm-12 col-lg-4">

           <asp:Panel ID="Panel_All_RadTreeView" runat="server">
     
                                            
         <div class="card"  >

                  <div class="card-body">
     <div class="col-md-12 mb-3">
                                        <label for="validationCustom02">
                                             &nbsp; &nbsp;
     <asp:Label ID="Label9" runat="server" Text="  ئەم حسابانە داخڵ کراون" CssClass="lbl_style" Font-Bold="true" Font-Size="Large"  ForeColor="Red"></asp:Label>
 
                                        </label>
                                                    </div>
                     
   
        <hr  style="border:2px solid #ff0707"/>
<%--====================111111111111111111111111111111==================================--%>
  
        <asp:Panel ID="Panel1" runat="server" Height="380px" ScrollBars="Vertical" style="padding:5px !important">

           
             <div class="form-row">

        <telerik:RadTreeView 
            RenderMode="Lightweight" 
    ID="RadTreeView1"   
    runat="server" 
 CssClass="treeView_style"
    DataFieldID="Code3"
    DataTextField="AccountM_Name" 
    DataValueField="Code3" 

            OnNodeClick="RadTreeView1_NodeClick"
    DataSourceID="SqlDataSource1">
  
</telerik:RadTreeView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand=" SELECT convert(varchar,Code3)+ '__'+AccountName as AccountM_Name, Code3, LEN(Code3)   as len1  ,
  substring(convert(varchar,Code3),1,LEN(Code3)-1) as  substring1  
 FROM            tblAccount  where substring(convert(varchar,Code3),1,LEN(Code3)-1)=0  and Code3<>0 order by Code3 asc ">

        </asp:SqlDataSource>
 </div>

<%--====================111111111111111111111111111111==================================--%>
        </asp:Panel>
     

<%--====================22222222222222222222222222222==================================--%>
        <asp:Panel ID="Panel2" runat="server" Visible="false" Height="380px" ScrollBars="Vertical" style="padding:5px !important">
    <div class="form-row">

   <asp:Label ID="lbl_header2" runat="server" Text="0" CssClass="lbl_style_treeView"></asp:Label>
  <br />
    <telerik:RadTreeView 
            RenderMode="Lightweight" 
    ID="RadTreeView2" 
    runat="server" 
  CssClass="treeView_style"
    DataFieldID="Code3"
    DataTextField="AccountM_Name" 
    DataValueField="Code3" 
         OnNodeClick="RadTreeView2_NodeClick"
 >
  
</telerik:RadTreeView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand="
            SELECT       convert(varchar,Code3)+ '__'+AccountName as AccountM_Name,

 Code3, LEN(Code3)   as len1  ,
 
 substring(convert(varchar,Code3),1,LEN(Code3)-1) as  substring1  
 
 
FROM            tblAccount  where code1=@parentId order by code3 asc">
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

        <asp:Panel ID="Panel3" runat="server"  Visible="false" Height="380px" ScrollBars="Vertical" style="padding:5px !important">
  
               <div class="form-row">
            <asp:Label ID="lbl_header3" runat="server" Text="0" CssClass="lbl_style_treeView"></asp:Label>
 <br />
    <telerik:RadTreeView 
            RenderMode="Lightweight" 
    ID="RadTreeView3" 
    runat="server" 
    CssClass="treeView_style"
    DataFieldID="Code3"
    DataTextField="AccountM_Name" 
    DataValueField="Code3" 
           OnNodeClick="RadTreeView3_NodeClick"
 >
  
</telerik:RadTreeView>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand="
     SELECT       convert(varchar,Code3)+ '__'+AccountName as AccountM_Name,

 Code3, LEN(Code3)   as len1  ,
 
 substring(convert(varchar,Code3),1,LEN(Code3)-1) as  substring1  
 
 
FROM            tblAccount  where  code1 =@parentId order by code3 asc ">
           <SelectParameters>
                <asp:ControlParameter ControlID="RadTreeView2"  Name="parentId" Type="String" />
            </SelectParameters>

        </asp:SqlDataSource>
            
             </div>
            <%--substring(convert(varchar,Code3),1,LEN(Code3)-1)--%>
            <br />
           
       
                        <asp:ImageButton ID="btn_back3" runat="server" OnClick="btn_back3_Click"  ToolTip="گەڕانەوە" ImageUrl="img/Back.png" Width="40px"/>
        </asp:Panel>
        <%--====================3333333333333333333333333==================================--%>





        <%--====================4444444444444444444==================================--%>

        <asp:Panel ID="Panel4" runat="server" Visible="false" Height="380px" ScrollBars="Vertical" style="padding:5px !important">
      <div class="form-row"> 
            
            <asp:Label ID="lbl_header4" runat="server" Text="0" CssClass="lbl_style_treeView"></asp:Label>
  <br />
    <telerik:RadTreeView 
            RenderMode="Lightweight" 
    ID="RadTreeView4" 
    runat="server" 
          CssClass="treeView_style"
     OnNodeClick="RadTreeView4_NodeClick"
    DataFieldID="Code3"
    DataTextField="AccountM_Name" 
    DataValueField="Code3" 
 >
  
</telerik:RadTreeView>

        <asp:SqlDataSource ID="SqlDataSource4" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand="
   SELECT       convert(varchar,Code3)+ '__'+AccountName as AccountM_Name,

 Code3, LEN(Code3)   as len1  ,
 
 substring(convert(varchar,Code3),1,LEN(Code3)-1) as  substring1  
 
 
FROM            tblAccount  where code1=@parentId order by code3">
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

        <asp:Panel ID="Panel5" runat="server" Visible="false" Height="380px" ScrollBars="Vertical" style="padding:5px !important">
      <div class="form-row">
            
            <asp:Label ID="lbl_header5" runat="server" Text="0" CssClass="lbl_style_treeView"></asp:Label>
  <br />
    <telerik:RadTreeView 
            RenderMode="Lightweight" 
    ID="RadTreeView5"  
    runat="server" 
          CssClass="treeView_style"
      OnNodeClick="RadTreeView5_NodeClick"
    DataFieldID="Code3"
    DataTextField="AccountM_Name" 
    DataValueField="Code3" 
 >
  
</telerik:RadTreeView>

        <asp:SqlDataSource ID="SqlDataSource5" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand="
     SELECT       convert(varchar,Code3)+ '__'+AccountName as AccountM_Name,

 Code3, LEN(Code3)   as len1  ,
 
 substring(convert(varchar,Code3),1,LEN(Code3)-1) as  substring1  
 
 
FROM            tblAccount  where code1=@parentId order by code3">
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

        <asp:Panel ID="Panel6" runat="server" Visible="false" Height="380px" ScrollBars="Vertical"  style="padding:5px !important">
      <div class="form-row"> 
            
            <asp:Label ID="lbl_header6" runat="server" Text="0" CssClass="lbl_style_treeView"></asp:Label>
  <br />
    <telerik:RadTreeView 
            RenderMode="Lightweight" 
    ID="RadTreeView6" 
    runat="server" 
    CssClass="treeView_style"
    DataFieldID="Code3"

              OnNodeClick="RadTreeView6_NodeClick"
    DataTextField="AccountM_Name" 
    DataValueField="Code3" >
  
</telerik:RadTreeView>

        <asp:SqlDataSource ID="SqlDataSource6" runat="server"
            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
            SelectCommand="
      SELECT       convert(varchar,Code3)+ '__'+AccountName as AccountM_Name,

 Code3, LEN(Code3)   as len1  ,
 
 substring(convert(varchar,Code3),1,LEN(Code3)-1) as  substring1  
 
 
FROM            tblAccount  where code1=@parentId order by code3">
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

      </asp:Panel>

           </div>
<%--=========================  end  right ==============================--%>
<%--=========================   left ==============================--%>
 <div class="col-sm-12 col-lg-8">
                    <div class="col-12">
                           <div class="card" ID="Show_DIV_Input" runat="server">

                            <div class="card-body">
                                <%--  <h4 class="card-title">Validation Form</h4>--%>



                                <div class="form-row">


                                                <div class="col-md-4 mb-3">
                                        <label for="validationCustom02">
                                             &nbsp; &nbsp;
                                            <asp:Label ID="Label4" runat="server" Text="حــسـابی داخڵ کراو" CssClass="lbl_style" Font-Bold="true" ForeColor="Red"></asp:Label>
 
                                        </label>
                                   <telerik:RadComboBox RenderMode="Lightweight" ID="ddlAccount_Main" runat="server" Height="200px"  
                                       EmptyMessage="هەڵبژیرە"
            Label="" DataSourceID="sds_Account_Main" DataTextField="AccountName"   Width="100%"   class="form-control font1 b_textbox"
            DataValueField="code3"  Filter="Contains"  AppendDataBoundItems="True" OnSelectedIndexChanged="ddlAccount_Main_SelectedIndexChanged" 
                                       AutoPostBack="True" />

<%-- DataValueField="AccountNumber"  ama nabet labr awai amawet parent  bdozma  nak account number xoi awish ba Code1    dabet--%>



                     <asp:SqlDataSource ID="sds_Account_Main" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
                         SelectCommand="Account_Main_Select_ddl" SelectCommandType="StoredProcedure">
                                   <SelectParameters>
                            <asp:ControlParameter ControlID="lbl_Places_Fkey" Name="Places_Fkey"   Type="Int32" DefaultValue="0" />
                         </SelectParameters>
                     </asp:SqlDataSource>


                                          <asp:RequiredFieldValidator ControlToValidate="ddlAccount_Main" runat="server" ID="RequiredFieldValidator4"
                                               ErrorMessage=" حــسـابی ســەرەکی داخڵ بکە " Display="None"
                                            ValidationGroup="grpRegistration"   CssClass="font1"   ForeColor="#FF0000"    InitialValue="" />


                                    </div>

                             <%--                <div class="col-md-2 mb-3">
                                        <label for="validationCustom01">
                                            &nbsp; &nbsp;
                                            <asp:Label ID="Label5" runat="server" Text="کۆدی سەرەکی" CssClass="lbl_style"></asp:Label>
                                        </label>
                                        <asp:TextBox ID="txt_Code1" runat="server" class="form-control font1 b_textbox"        
                                             onkeypress="return(KeyPressOrder(this,event))"  onfocus="this.select();"    
                                                      CausesValidation="True"  MaxLength="10" autoComplete="off"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="txt_Code1" CssClass="font1" runat="server" ID="RequiredFieldValidator5"
                                            ValidationGroup="grpRegistration" ErrorMessage=""    ForeColor="#FF0000" Text="Required"  />

                                    </div>--%>
                                              <div class="col-md-2 mb-3">
                                        <label for="validationCustom01">
                                            &nbsp; &nbsp;
                                            <asp:Label ID="Label6" runat="server" Text="کۆدی زیادکراو" CssClass="lbl_style"></asp:Label>
                                        </label>
                                        <asp:TextBox ID="txt_Code2" runat="server" class="form-control font1 b_textbox"        
                                             onkeypress="return(KeyPressOrder(this,event))"  onfocus="this.select();"
                                                      CausesValidation="True"  MaxLength="9" autoComplete="off"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="txt_Code2" CssClass="font1" runat="server" ID="RequiredFieldValidator6"
                                           ErrorMessage=" کۆدی زیادکراو داخڵ بکە " Display="None"
                                            ValidationGroup="grpRegistration"      ForeColor="#FF0000"    />

                                    </div>

                                    <div class="col-md-6 mb-3">
                                        <label for="validationCustom01">
                                            &nbsp; &nbsp;
                                            <asp:Label ID="lbl_name_str" runat="server" Text="نـــاو" CssClass="lbl_style"></asp:Label>
                                        </label>
                                        <asp:TextBox ID="txt_name" runat="server" class="form-control font1 b_textbox"
                                          autoComplete="off"
                                             CausesValidation="True"  MaxLength="50"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="txt_name" CssClass="font1" runat="server" ID="valFirstName"
                                          ErrorMessage=" نـــاو داخڵ بکە " Display="None"
                                            ValidationGroup="grpRegistration"    ForeColor="#FF0000"    />

                                    </div>






                  




                              
                                </div>

                                <%--=================================================================================--%>

                                <div class="form-row">

                  <div class="col-md-3 mb-3"  >
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
                                                ErrorMessage=" جـۆری هەژمار داخڵ بکە " Display="None"
                                              ValidationGroup="grpRegistration"    CssClass="font1"   ForeColor="#FF0000"    InitialValue="0" />


                                    </div>


                                       <%--=================================================================================--%>
                                                          <div class="col-md-3 mb-3">
                                <label for="validationCustom01">
                                    &nbsp; &nbsp;
                                            <asp:Label ID="Label7" runat="server" Text="   ح /الختامی" CssClass="lbl_style"></asp:Label>
                                </label>

                                <asp:DropDownList ID="ddl_Account_TypeReport" runat="server"       ValidationGroup="grpRegistration"  
                                    class="form-control font1 b_textbox "   AutoPostBack="False" AppendDataBoundItems="True">
                                       <asp:ListItem Text="هەڵبژیرە"  Value="-1"></asp:ListItem>

                                     <asp:ListItem Text=" میزانیة العمویة"  Value="0"></asp:ListItem>
                                       <asp:ListItem Text="الارباح و الخسائر"  Value="1"></asp:ListItem>
                                       <asp:ListItem Text="المتاجرة"  Value="2"></asp:ListItem>
                                </asp:DropDownList>

                             
 



                                <asp:RequiredFieldValidator ControlToValidate="ddl_Account_TypeReport" runat="server"
                                    ID="RequiredFieldValidator1"
                                    ValidationGroup="grpRegistration"    ForeColor="#FF0000"  
                                     ErrorMessage=" ح /الختامی داخڵ بکە " Display="None"
                                    CssClass="font1" InitialValue="-1" />

                            </div>

                                         <div class="col-md-3 mb-3">
                                <label for="validationCustom01">
                                    &nbsp; &nbsp;
                                            <asp:Label ID="lbl_typecurrency_str" runat="server" Text=" پارە مامەڵە" CssClass="lbl_style"></asp:Label>
                                </label>

                                <asp:DropDownList ID="ddl_Currency" runat="server"       ValidationGroup="grpRegistration"  
                                    class="form-control font1 b_textbox "   AutoPostBack="False" AppendDataBoundItems="True">
                                     <asp:ListItem Text="هەڵبژیرە"  Value="0"></asp:ListItem>
                                       <asp:ListItem Text="دۆلار"  Value="1"></asp:ListItem>
                                       <asp:ListItem Text="دینار"  Value="2"></asp:ListItem>
                                </asp:DropDownList>

                             
 



                                <asp:RequiredFieldValidator ControlToValidate="ddl_Currency" runat="server" ID="RequiredFieldValidator2"
                                    ValidationGroup="grpRegistration"    ForeColor="#FF0000"  
                                       ErrorMessage=" پارە مامەڵە" Display="None"
                                    CssClass="font1" InitialValue="0" />

                            </div>




 

                                <%--      ====================================================================================--%>



       <div class="col-md-3 mb-3">
                                        <label for="validationCustom01">
                                            &nbsp; &nbsp;
                                            <asp:Label ID="lbl_balace_allow_str" runat="server" Text="باڵانسی ڕێپێدراو" CssClass="lbl_style"></asp:Label>
                                        </label>
                                        <asp:TextBox ID="txt_target" runat="server" class="form-control font1 b_textbox "  
                                                   onkeyup = "javascript:this.value=Comma1(this.value);" 
                                    onkeypress="return(KeyPressOrder(this,event))"  onfocus="this.select();" 
                                            CausesValidation="True" MaxLength="10" Text="0"></asp:TextBox>
                                     </div>

                                <%--      ====================================================================================--%>

                                    <div class="col-md-3 mb-3" style="display:none;">
                                        <label for="validationCustom01">
                                            &nbsp; &nbsp;
                                            <asp:Label ID="lbl_discount_str" runat="server" Text="داشــکاندن" CssClass="lbl_style"></asp:Label>
                                        </label>
                                        <asp:TextBox ID="txt_discount" runat="server" class="form-control font1 b_textbox" 
                                              
                                    onkeypress="return(KeyPressOrder(this,event))"  onfocus="this.select();"  
                                         MaxLength="2"
                                           CausesValidation="True" Text="0"></asp:TextBox>
                                     </div>


                         
                   


                                </div>

                                <%--      ====================================================================================--%>




                                <%--=================================================================================--%>

                                <div class="form-row">


                     

                                          <div class="col-md-4 mb-3">
                                        <label for="validationCustomUsername">
                                             &nbsp; &nbsp;
                                            <asp:Label ID="lbl_email_str" runat="server" Text="ئیمەیل" CssClass="lbl_style"></asp:Label>

                                        </label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text" id="inputGroupPrepend">@</span>
                                            </div>

                                            <asp:TextBox ID="txt_email" class="form-control font1 b_textbox" runat="server"  aria-describedby="inputGroupPrepend" TextMode="Email" MaxLength="50"></asp:TextBox>

                                        </div>
                                    </div>
                             <%--      ====================================================================================--%>

                                    <div class="col-md-4 mb-3">
                                        <label for="validationCustom02">
                                             &nbsp; &nbsp;
                                            <asp:Label ID="lbl_mobile_str" runat="server" Text="مــۆبــایل 1" CssClass="lbl_style"></asp:Label>


                                        </label>
                                        <asp:TextBox ID="txt_tel1" runat="server" class="form-control font1 b_textbox"   MaxLength="16"></asp:TextBox>
                                         
                                    </div>


                                <%--      ====================================================================================--%>


         <div class="col-md-4 mb-3">
                                        <label for="validationCustom02">
                                             &nbsp; &nbsp;
                                            <asp:Label ID="lbl_mobile2_str" runat="server" Text="مــۆبــایل 2" CssClass="lbl_style"></asp:Label>


                                        </label>
                                        <asp:TextBox ID="txt_tel2" runat="server" class="form-control font1 b_textbox"  MaxLength="16"></asp:TextBox>
       
                                    </div>
                                         
                                </div>

                                





                                            <div class="form-row">



                                                <%--=================================================================================--%>  
 
<%--                <div class="col-md-2 mb-3">
                                        <div class="form-group">
                                            &nbsp; &nbsp;&nbsp; &nbsp;                   
                                <label for="validationCustom01">
                                    &nbsp; &nbsp;
                                <asp:Label ID="lbl_chk_str" runat="server" Text=" &nbsp; &nbsp;  " CssClass="lbl_style"></asp:Label>
                                </label>
                                            <div class="custom-control custom-checkbox mr-sm-2">
                                                <asp:CheckBox runat="server" ID="chk_show" Checked="True" Text="چــالاک" CssClass="font1" />
                                            </div>
                                        </div>

                                    </div>--%>

       <div class="col-md-4 mb-3"  >
                                        <label for="validationCustom03">

                                             &nbsp; &nbsp;
                                            <asp:Label ID="Label8" runat="server" Text="پیشاندان  " CssClass="lbl_style"></asp:Label>

                                        </label>

        <asp:DropDownList ID="ddl_chk_show" runat="server" ForeColor="Red"
                                    class="form-control font1 b_textbox" Height="35px"  >
                                 
                                    <asp:ListItem Value="1">بەڵێ</asp:ListItem>
                                    <asp:ListItem Value="0">نەخێر</asp:ListItem>
                                </asp:DropDownList>          


       </div>





                                                                                <%--=================================================================================--%>
                                      <div class="col-md-3 mb-3" style="display:none;">
                                        <label for="validationCustom03">

                                             &nbsp; &nbsp;
                                            <asp:Label ID="lbl_adress_str" runat="server" Text="نـاونیشان  " CssClass="lbl_style"></asp:Label>

                                        </label>

                                        <asp:TextBox ID="Txt_adress" runat="server" class="form-control font1 b_textbox"   MaxLength="200"></asp:TextBox>
                                    </div>
                                                            <%--=================================================================================--%>
                                     <div class="col-md-8 mb-3">
                                        <label for="validationCustom03">

                                             &nbsp; &nbsp;
                                            <asp:Label ID="lbl_note_str" runat="server" Text="تـێـبینی" CssClass="lbl_style"></asp:Label>

                                        </label>

                                        <asp:TextBox ID="txt_remarks" runat="server" class="form-control font1 b_textbox"   MaxLength="200"></asp:TextBox>
                                    </div>
                                </div>



 
















                                <div class="col-lg-12 col-xlg-6">
                                    <div class="card">
                                        <div class="card-body">

                                            <div class="button-group">

     

                                        <asp:Button ID="btn_Insert" runat="server" Text="زیاد کردن" CssClass="btn  waves-light btn-success font1" OnClick="btn_insert_Click" CausesValidation="True" ValidationGroup="grpRegistration"  />
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
<%--                                       <button id="btn_Update_msg" runat="server" class="btn  btn-warning font1" onclick="functionConfirm_Update(this); return false;">گۆڕانکاری</button>--%>

                                        <asp:Button ID="btn_Delete" runat="server" Text="سڕینەوە"    
                                            CssClass="btn   waves-light btn-danger font1" OnClick="btn_delete_Click"
                                            CausesValidation="False" formnovalidate 
                                            OnClientClick="javascript:return confirm('دڵنیایی لە سـڕینەوەی?');"
                                            Visible="False" />






<%--                                      <button id="btn_Delete_msg" runat="server" class="btn waves-light btn-danger font1" onclick="functionConfirm_Delete(this); return false;">سڕینەوە</button>--%>
                                        <asp:Button ID="btn_clear" runat="server" Text="پاشگەزبونەوە" CssClass="btn  waves-light btn-info font1" OnClick="btn_clear_Click" formnovalidate CausesValidation="False"     />


                                        <asp:Button ID="btn_PriceGroup" runat="server" Text="نرخی فرۆشتن"
                                            CssClass="btn  waves-light btn-danger font1" OnClick="btn_PriceGroup_Click"
                                            formnovalidate CausesValidation="False"    Visible="False" />

                            <asp:ValidationSummary
        id="ValidationSummary1"
        ShowMessageBox="true"
         ValidationGroup="grpRegistration"
        ShowSummary="false"
        Runat="server" />   
                  


                                            </div>

                                        </div>                        
                                        <asp:Label ID="lbl_Account_id" runat="server" Text="0" Visible="False"></asp:Label>
                                          
                                        <div style="height:20px;">
                                        <asp:Label ID="lbl_result_msg" runat="server" Text="سەرکەتوبوو داخڵ کردنەکەت."  Visible="False"></asp:Label>
                                       </div>
                                    </div>
                                </div>


                                <%--======================================================--%>
                          <div class="row">

                              <asp:Label ID="lbl_Note" runat="server" Text="0"    ForeColor="Red" CssClass="lbl_style"  Font-Size="Large" Visible="False"></asp:Label>

                      </div>
       
                               
                                <%-- ======================================================--%>
                            </div>
                        </div>
</div>
 </div>
<%--=========================   end row ==============================--%>

    </div>
   <div class="row">
   <div class="col-12">
   <div class="card">
    <div class="card-body">
             
       <div class="form-row">


     <div class="col-md-4 mb-3">
                                        <label for="validationCustom01">
                                            &nbsp; &nbsp;
                                            <asp:Label ID="lbl_name_search_str" runat="server" Text="نـــاو" CssClass="lbl_style"></asp:Label>
                                        </label>
                               
  <telerik:RadComboBox RenderMode="Lightweight" ID="ddl_Account_Search"
                                            runat="server"  class="form-control font1 b_textbox"
                                            Height="200px"   Width="100%"
                                            Label="" DataSourceID="sds_Account_Search" DataTextField="AccountName"
                                            DataValueField="AccountNumber" MarkFirstMatch="True"  
                                            AppendDataBoundItems="True" Filter="Contains"  >
                                            <Items>
                                                <telerik:RadComboBoxItem Value="0" Text="هـــەمـــوو" />
                                            </Items>
                                            </telerik:RadComboBox>


                     <asp:SqlDataSource ID="sds_Account_Search" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>" 
                         SelectCommand="Account_Select_ddl_Search" SelectCommandType="StoredProcedure">
                                      <SelectParameters>
                            <asp:ControlParameter ControlID="lbl_Places_Fkey" Name="Places_Fkey"   Type="Int32" DefaultValue="0" />
                         </SelectParameters>
                     </asp:SqlDataSource>


 
                                    </div>


           <%---========================================================--%>

                <div class="col-md-4 mb-3">
                                        <label for="validationCustom01">
                                            &nbsp; &nbsp;
                                            <asp:Label ID="Label5" runat="server" Text="کۆد" CssClass="lbl_style" Font-Bold="true" ForeColor="Red"></asp:Label>
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
                                                 PageSize="50"
                                                 CssClass=""  
                                                CellSpacing="0"  OnPageIndexChanging="OnPageIndexChanging"
                                                DataSourceID="sdsAccount_All" AllowPaging="True"  >
                                                <Columns>
                                                    <asp:TemplateField ShowHeader="False"  HeaderText="Edit"  >
                                                        <ItemTemplate>
                                                            &nbsp;
                                 <asp:ImageButton ID="ImageButton1" runat="server" formnovalidate ImageUrl="~/img/editt.png" OnClick="ImageButton1_Click" Width="35px" />
                                                        </ItemTemplate>
                                                       <HeaderStyle  Width="100px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="AccountNumber" InsertVisible="False" SortExpression="AccountNumber" Visible="false" >

                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_AccountNumber" runat="server" Text='<%# Eval("AccountNumber") %>'></asp:Label>
                                                        </ItemTemplate>

                                                    </asp:TemplateField>




                                                    
                                                      <%--      <asp:TemplateField HeaderText="حساب/دلیل" SortExpression="AccountName" >

                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2342" runat="server" Text='<%# Eval("AccountM_Name") %>'></asp:Label>
                                                        </ItemTemplate>

                                                    </asp:TemplateField>--%>



                                                    <asp:TemplateField HeaderText="هەژمارەکان" SortExpression="AccountName" >

                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("AccountName") %>'  style="line-height:20px !important;"></asp:Label>
                                                        </ItemTemplate>

                                                        <HeaderStyle Width="250px" />
                                                    </asp:TemplateField>

                                                     
                                                    <asp:TemplateField HeaderText="لق" SortExpression="AccountName" Visible="false" >

                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_Places_Name" runat="server" Text='<%# Eval("Places_Name") %>'></asp:Label>
                                                        </ItemTemplate>

                                                        <HeaderStyle Width="180px" />
                                                    </asp:TemplateField>
                                                    
                                                             <asp:TemplateField HeaderText="ح /الختامی" SortExpression="Account_TypeReport"      >

                                                        <ItemTemplate>
                                                            <asp:Label ID="lbl_Account_TypeReport" runat="server" Text='<%# Eval("Account_TypeReport") %>'></asp:Label>
                                                        </ItemTemplate>
                                                                 <HeaderStyle Width="150px" />
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="لق" SortExpression="AccountType" Visible="false">

                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Places_Name") %>'></asp:Label>
                                                        </ItemTemplate>

                                                    </asp:TemplateField>



                                                       <asp:TemplateField HeaderText="گروپی نرخی فرۆشتن " SortExpression="AccountName"   Visible="false">
                                                         <ItemTemplate>
                                                            <asp:Label ID="lbl_PriceGroup_Name" runat="server" Text='<%# Eval("PriceGroup_Name") %>'></asp:Label>
                                                        </ItemTemplate>

                                                        <HeaderStyle Width="150px" />
                                                    </asp:TemplateField>




         <asp:TemplateField HeaderText=" " SortExpression=""  Visible="false">
                                                         <ItemTemplate>
                                                            <asp:Label ID="lbl_Account_Dalil7sab" runat="server" Text='<%# Eval("Account_Dalil7sab") %>'></asp:Label>
                                                        </ItemTemplate>

                                                 
                                                    </asp:TemplateField>




                                                    
  <asp:BoundField DataField="Currency" HeaderText=" پارەی مامەڵە"  ItemStyle-ForeColor="Red"  ></asp:BoundField>


                                                          <asp:BoundField DataField="AccountType" HeaderText="جۆری هەژمار"  ItemStyle-ForeColor="Red"  ></asp:BoundField>
                                     <asp:BoundField DataField="CVisible" HeaderText=" پێشاندان  "     ItemStyle-ForeColor="Red" ></asp:BoundField>
 
                                    <asp:BoundField DataField="Target1" HeaderText="باڵانسی ڕێپێدراو" SortExpression="Target1"  ></asp:BoundField>
                                    <asp:BoundField DataField="Discount" HeaderText="داشــکاندن" SortExpression="Discount" Visible="false"></asp:BoundField>
                                    <asp:BoundField DataField="Tel1" HeaderText="تـەلـەفـۆن 1" SortExpression="Tel1"></asp:BoundField>
                                    <asp:BoundField DataField="Address" HeaderText="نـاونـیـشان" SortExpression="Address" Visible="false"></asp:BoundField>
                                    <asp:BoundField DataField="AgentNumber" HeaderText="بــریکــارەکـان" SortExpression="AgentNumber" Visible="False"></asp:BoundField>
                                    <asp:BoundField DataField="PlaceType" HeaderText="جــۆر شـوێن" SortExpression="PlaceType" Visible="False" />
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
                        <asp:SqlDataSource ID="sdsAccount_All" runat="server"
                            ConnectionString="<%$ ConnectionStrings:SchoolManagmentDB_ConnectionString %>"
                            DeleteCommand="Account1_Delete"
                            InsertCommand="Account1_Insert"
                            SelectCommand="Account1_Select_All" SelectCommandType="StoredProcedure"
                            UpdateCommand="Account1_Update" DeleteCommandType="StoredProcedure"
                            InsertCommandType="StoredProcedure" UpdateCommandType="StoredProcedure"  
                             OnInserted="sdsAccount_All_Inserted"
                            OnUpdated="sdsAccount_All_Updated"
                            OnDeleted="sdsAccount_All_Deleted"         >
                            <DeleteParameters>

                     <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="00000"  ConvertEmptyStringToNull="true" />

                                <asp:ControlParameter ControlID="lbl_Account_id" Name="AccountNumber" Type="Int32" />
                                    <asp:ControlParameter ControlID="lbl_UserID" Name="UserId"   Type="Int16" />
                            </DeleteParameters>
                            <InsertParameters>
                    <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000"  ConvertEmptyStringToNull="true" />
                    <asp:ControlParameter ControlID="lbl_Places_Fkey" Name="Places_Fkey"   Type="Int32" />
                                
                    <asp:Parameter Name="Price_Group_ID"     Type="Int32"  DefaultValue="0" />                                 
                    <asp:ControlParameter ControlID="txt_Code2" Name="code2"  Type="String" />
                    <asp:ControlParameter ControlID="ddlAccount_Main" Name="Code3Main" PropertyName="SelectedValue" Type="String" />

                    <asp:ControlParameter ControlID="txt_name" Name="AccountName"   Type="String" />
                    <asp:ControlParameter ControlID="ddl_AccountType" Name="AccountType" PropertyName="SelectedValue" Type="Int16" />

                    <asp:ControlParameter ControlID="ddl_Account_TypeReport" Name="Account_TypeReport" PropertyName="SelectedValue" Type="Int32" />

                                
                    <asp:ControlParameter ControlID="txt_tel1" Name="Tel1"  Type="String" />
                    <asp:ControlParameter ControlID="txt_tel2" Name="Tel2"  Type="String" />
                    <asp:ControlParameter ControlID="Txt_adress" Name="Address"   Type="String" />
                    <asp:ControlParameter ControlID="txt_remarks" Name="Remarks"   Type="String" />
                    <asp:ControlParameter ControlID="txt_discount" Name="Discount"   Type="String" DefaultValue="0"/>
                    <asp:Parameter DefaultValue="0" Name="AgentNumber" Type="Int32" />
                    <asp:Parameter DefaultValue="0" Name="PlaceName" Type="String" />
                    <asp:Parameter DefaultValue="0" Name="PlaceType" Type="String" />
                    <asp:ControlParameter ControlID="ddl_chk_show" Name="CVisible"   Type="Int16"   />
                                
                    <asp:ControlParameter ControlID="txt_email" Name="Email" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txt_target" Name="Target1" PropertyName="Text" />

                    <asp:ControlParameter ControlID="ddl_Currency" Name="Currency" PropertyName="Text" Type="Int16" />
                    <asp:ControlParameter ControlID="lbl_UserID" Name="UserId"   Type="Int16" />
                            </InsertParameters>
                             
                            <SelectParameters>
                           <asp:ControlParameter ControlID="ddl_Account_Search" Name="AccountNumber"  Type="Int32" DefaultValue="0" />
                                       <asp:ControlParameter ControlID="lbl_Places_Fkey" Name="Places_Fkey"   Type="Int32" />
                      <asp:ControlParameter ControlID="txt_code_search" Name="CodeMain"   Type="string"  DefaultValue="0"/>

                                 <asp:ControlParameter ControlID="ddl_Sort1" Name="Sort1"   Type="Int32"  />
                            
                            </SelectParameters>
                             
                            <UpdateParameters>

                 <asp:Parameter Direction="InputOutput" Name="ErrorMessage" Type="String" DefaultValue="000"  ConvertEmptyStringToNull="true" />

                           <asp:ControlParameter ControlID="ddlAccount_Main" Name="Code3Main" PropertyName="SelectedValue" Type="String" />

                                <asp:ControlParameter ControlID="lbl_Account_id" Name="AccountNumber" Type="Int32" />
                                <asp:ControlParameter ControlID="txt_name" Name="AccountName"   Type="String" />

                                   <asp:ControlParameter ControlID="txt_Code2" Name="code2"  Type="String" />
                                        <asp:Parameter Name="Price_Group_ID"     Type="Int32"  DefaultValue="0" />
                                <asp:ControlParameter ControlID="ddl_AccountType" Name="AccountType" PropertyName="SelectedValue" Type="Int16" />
                                
                                     <asp:ControlParameter ControlID="ddl_Account_TypeReport" Name="Account_TypeReport" PropertyName="SelectedValue" Type="Int32" />
                                <asp:ControlParameter ControlID="txt_tel1" Name="Tel1"   Type="String" />
                                <asp:ControlParameter ControlID="txt_tel2" Name="Tel2"   Type="String" />
                                <asp:ControlParameter ControlID="Txt_adress" Name="Address"   Type="String" />
                                <asp:ControlParameter ControlID="txt_remarks" Name="Remarks"   Type="String" />
                                <asp:ControlParameter ControlID="txt_discount" Name="Discount"   Type="String" DefaultValue="0" />
                                <asp:Parameter DefaultValue="0" Name="AgentNumber" Type="Int32" />
                                <asp:Parameter DefaultValue="0" Name="PlaceName" Type="String" />
                                <asp:Parameter DefaultValue="0" Name="PlaceType" Type="String" />
                                <asp:ControlParameter ControlID="ddl_chk_show" Name="CVisible"   Type="Int16"   />
                 <asp:ControlParameter ControlID="txt_email" Name="Email" PropertyName="Text" />
                                <asp:ControlParameter ControlID="txt_target" Name="Target1" PropertyName="Text" />
                                  <asp:ControlParameter ControlID="ddl_Currency" Name="Currency" PropertyName="Text" Type="Int16" />
            <asp:ControlParameter ControlID="lbl_UserID" Name="UserId"   Type="Int16" />
                            </UpdateParameters>





                        </asp:SqlDataSource>


                    

 
<%--========================= end  left ==============================--%>
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

<%--  <script src="bootstrap/assets/libs/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>--%>

  
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
           
                 height: 40px !important;
          }
 
    
        .row_Grid td {
             text-align: right !important;
            font-family: 'Conv_Chawder-Bold';
            padding:2px 5px;
           font-size:10pt !important;
        }
 
 

    </style>
    
 
</asp:Content>


<%@ Page validateRequest="false"  Language="VB" AutoEventWireup="false" CodeFile="pics.aspx.vb" Inherits="admin_pics_handler_pics" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pics</title>
    
    <style>
    
    body {font-family:Verdana; font-size:11px;}
    
    </style>
    
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    
    
    
    <b><%=Request.QueryString("fixturename")%></b>
    
    
    
    <asp:panel id="pnlErrorMessage" runat="server"><asp:Label Font-Size="Large" ForeColor="Red" ID="lblErrorMessage" runat="server" /></asp:panel>

    
    
    
 <asp:Panel ID="pnlUnitList" runat="server">




   
    <asp:AccessDataSource 
       ID="DS_Records" 
       runat="server" DataFile="../../dynamic_files/data.mdb" 
       
        DeleteCommand="delete * from tbl_pics where pic_id = @pic_id"
       >
       </asp:AccessDataSource>
    
    <br />
<asp:linkbutton ID="lbAddNewUnit" runat="server" CausesValidation="false">+ ADD NEW Pic</asp:linkbutton>



<br /><br /><br />

    
    
    
    
    
            <asp:GridView CellPadding="4" ShowHeader="false"
        EmptyDataText="No pics uploaded for this news item yet" 
        ID="GridView1" runat="server" 
        DataSourceID="DS_Records" 
        DataKeyNames="pic_id"
        AutoGenerateColumns="False"
         
        >
            <Columns>
            
            
            
             
  <asp:TemplateField>
        <ItemTemplate>
    
    
                <a target=_blank href="../../dynamic_files/pics/<%#eval("mainimage_filename") %>"><img align=absmiddle border=0 src="../../dynamic_files/pics_thumbs/<%#eval("thumbnail_filename")%>">
          
    
        </ItemTemplate>

</asp:TemplateField>





            
                <asp:BoundField ItemStyle-Width="350" DataField="pic_description" />
                
                

          <asp:CommandField ShowSelectButton="True" SelectText="edit description" />










        
<asp:TemplateField ShowHeader="False">
                         <ControlStyle ForeColor="Red" />
                         <ItemTemplate><asp:LinkButton ID="lbDelete" OnClientClick="if(!confirm('Are you sure that you want to delete this pic?')){return false;}else{return true;}" runat="server" CausesValidation="False" CommandName="Delete" Text="delete"></asp:LinkButton></ItemTemplate>
            </asp:TemplateField>




<asp:TemplateField Visible="false">
<ItemTemplate>
<asp:Label id="lblid" runat="server" Text='<%#eval("pic_id") %>' />
</ItemTemplate>

 </asp:TemplateField>
    
    
        </Columns>
        </asp:GridView>
        
        
        
        
        
        
        
        </asp:Panel>
        
        
        
        
        
        
        
        
        
        
        
        
        
        <asp:Panel runat="server" ID="pnlUnitDetails">



 
    <asp:AccessDataSource 
       ID="AccessDataSource2" 
       runat="server" DataFile="../../dynamic_files/data.mdb" 
       
        SelectCommand= "select * from tbl_pics where pic_id=@pic_id"
        
               

       >
       
       
        <SelectParameters>
                                     
                                     <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="pic_id" Type="Int16" />

                                    </SelectParameters>
                                    
                              <UpdateParameters>
                                           
                                     <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="pic_id" Type="Int16" />

                               </UpdateParameters> 
                               
                               
                              
       </asp:AccessDataSource>
    

                              




<div style="margin-left:-8px">

<br /><br /><br />
<asp:DetailsView 
       ID="dvUnit"
       Width="480"
       DataSourceID="AccessDataSource2" 
       runat="server"
       AutoGenerateRows="false"
       BorderWidth="0" BorderColor="white"
       cellpadding="10"
       FieldHeaderStyle-VerticalAlign="Top"
       
       > 



<Fields>



       <%--Unit NAME--%>
       <asp:TemplateField HeaderText="Description*:" HeaderStyle-CssClass="sideheading" HeaderStyle-Width="120" ItemStyle-Width="350">
       
       <ItemTemplate>
             
             <asp:TextBox cssclass="inputtext" AutoCompleteType="Disabled" Width="200" TextMode="MultiLine" Rows="6" ID="txtDescription" runat="server" Text='<%#Bind("pic_description") %>' />
             </ItemTemplate>
       
       </asp:TemplateField>
       


<%--photo--%>
   <asp:TemplateField HeaderText="" >
                                        <InsertItemTemplate>           
                                          <asp:FileUpload CssClass="inputtext" ID="uplImage" runat="server" />
                                          
                                            <asp:RequiredFieldValidator SetFocusOnError="true" ID="RequiredFieldValidatorFileUpload" runat="server" ControlToValidate="uplImage" ErrorMessage="<br/>Please upload your photo" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </InsertItemTemplate>
                                        
                                        
                                        
 </asp:TemplateField>



       
       
       <%--BUTTONS--%>
       <asp:TemplateField>
       
            <ItemTemplate/>
       
                   
            <InsertItemTemplate>
             
                   <asp:Button CssClass="buttonStyle" ID="ButtonInsertEdit" runat="server" CausesValidation="True" CommandName="Insert"
                        Text="Insert" />
                   <asp:Button CssClass="buttonStyle" ID="ButtonInsertModeCancel" runat="server" CausesValidation="False"
                         CommandName="Cancel" Text="Cancel"/>

                        
             </InsertItemTemplate> 
             
             
             
             
             
             <EditItemTemplate>
             
                        
                   <asp:Button runat="server" CssClass="buttonStyle" ID="btnedit" CausesValidation="True" CommandName="Update"
                        Text="Update" />
                        
                   <asp:Button CssClass="buttonStyle" ID="ButtonEditModeCancel" CausesValidation="false" runat="server"
                         CommandName="Cancel" Text="Cancel"/>
                        
             </EditItemTemplate>
             
             
             

             
       
                                    
       </asp:TemplateField>
       
</Fields>


</asp:DetailsView>





</div>


</asp:Panel>

        
        
        
        
    </div>
    </form>
</body>
</html>

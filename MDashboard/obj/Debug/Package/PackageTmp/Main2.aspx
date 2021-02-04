<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main2.aspx.cs" Inherits="MDashboard.Main2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MT-SA</title>
    <meta name="viewport" content="width=device-width, initial-scale=2.0">
</head>
<body>
    <form id="form1" runat="server">
   
    <p>   <asp:Label ID="lblTime" runat="server"></asp:Label></p>
    <div>
    <b>
    <asp:label ID="lblTotal" runat="server" text=""></asp:label></b>
    <asp:label ID="lblSalesCount" runat="server" text=""></asp:label>	&nbsp; <img src="image/Cash.JPG" width="24" />
    <asp:label ID="lblCash" runat="server" text=""></asp:label>	&nbsp;	&nbsp;<img src="image/Card.JPG" width="24" />
    <asp:label ID="lblCreditCard" runat="server" text=""></asp:label><br />
    <img src="image/StoreCredit.JPG" width="18" /><asp:label ID="lblStoreCredit" runat="server" text=""></asp:label>	&nbsp;
    <img src="image/Discount.JPG" width="18" /><asp:label ID="lblDiscount" runat="server" text=""></asp:label>	&nbsp;
    <img src="image/Return.JPG" width="24" /><asp:label ID="lblReturn" runat="server" text=""></asp:label><br />
    </div>
    <h3>Main2</h3>
    <div> 
        <asp:DataList ID="dlHourly" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal">
      
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
      
         <ItemTemplate> <%# Eval("Hour")%> : <%# Eval("HourlyTotal")%>
       
    </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    </div>
    </form>
</body>
</html>


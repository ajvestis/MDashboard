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
 
    <asp:label ID="lblTotal" runat="server" text="Total: "></asp:label><br />
    <asp:label ID="lblSalesCount" runat="server" text="S#: "></asp:label><br />
    <asp:label ID="lblCreditCard" runat="server" text="CC: "></asp:label><br />
    <asp:label ID="lblCash" runat="server" text="CS: "></asp:label><br />
    <asp:label ID="lblStoreCredit" runat="server" text="SC: "></asp:label><br />
    <asp:label ID="lblDiscount" runat="server" text="DC: "></asp:label><br />
    <asp:label ID="lblReturn" runat="server" text="RT: "></asp:label><br />
    </div>
     <h2>Main2</h2>
    <div>
        <asp:DataList ID="dlHourly" runat="server">
        <HeaderTemplate>Hour</HeaderTemplate>
         <ItemTemplate> <%# Eval("Hour")%> : <%# Eval("HourlyTotal")%>
       
    </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>


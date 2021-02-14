<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main2.aspx.cs" Inherits="MDashboard.Main2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MT-SA</title>
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source Sans Pro">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
      body {
        font-family: 'Source Sans Pro', 'Arial';
        font-size: 25px;
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="container-fluid">
    <div><asp:Label ID="lblTime" runat="server" Font-Size="Large"></asp:Label> </div>
    <div>
    <asp:label ID="lblTotal" runat="server" text=""></asp:label>
    <asp:label ID="lblSalesCount" runat="server" text="" Font-Size="Medium"></asp:label>	&nbsp; 
    <img src="image/Cash.JPG" width="28" />     <asp:label ID="lblCash" runat="server" text=""></asp:label>	&nbsp;	&nbsp;
    <img src="image/Card.JPG" width="24" />     <asp:label ID="lblCreditCard" runat="server" text=""></asp:label><br />
    <asp:Image ID="imgCustom" runat="server" ImageUrl="~/image/Custom.JPG" Width="24" /><asp:label ID="lblCustom" runat="server" text="" Font-Size="Medium"></asp:label>	&nbsp;
    <asp:Image ID="imgStoreCredit" runat="server" ImageUrl="~/image/StoreCredit.JPG" Width="18" />     <asp:label ID="lblStoreCredit" runat="server" text="" Font-Size="Medium"></asp:label>	&nbsp;
    <asp:Image ID="imgDiscount" runat="server" ImageUrl="~/image/Discount.JPG" Width="18" /><asp:label ID="lblDiscount" runat="server" text="" Font-Size="Medium"></asp:label>	&nbsp;
    <asp:Image ID="ImgReturn" runat="server" ImageUrl="~/image/Return.JPG" Width="24" /><asp:label ID="lblReturn" runat="server" text="" Font-Size="Medium"></asp:label><br />
    </div>
    
    <div> 
        <asp:DataList ID="dlHourly" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal" >
      
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
      
         <ItemTemplate> <%# Eval("Hour")%> : <%# Eval("HourlyTotal")%>
       
    </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    </div>
    </div> 
    </form>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>


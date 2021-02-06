<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="HOLIBOARD.Confirmation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblPhone" runat="server" Font-Size="XX-Large" Text="Label"></asp:Label><br />
        <asp:Label ID="lblName" runat="server" Font-Size="XX-Large" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        
    </div>
    </form>
    <asp:hyperlink ID="Hyperlink1" runat="server" NavigateUrl="~/Register.aspx">Member Register</asp:hyperlink>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HOLIBOARD.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"><center>
    <font style="font-size: x-large; font-family: 'Courier New', Courier, monospace;">HOLISHIRTS Member Registration</font><br />
    AJ Vestis, Inc.
    <hr />
    <div>
        
 
   
                   <span style="font-size:xx-large">Phone:</span>
 <asp:TextBox ID="txtPhone" runat="server" Height="50px" Width="465px" Font-Bold="True" 
                        Font-Size="XX-Large" TabIndex="1" ></asp:TextBox>
            
  <br />
          
                   <span style="font-size:xx-large">First Name:</span>
    
                     <asp:TextBox ID="txtFirstName" runat="server" Height="50px" Width="400px" 
                         Font-Bold="True" Font-Size="XX-Large" TabIndex="2"></asp:TextBox>
        
                <br />
                   <span style="font-size:xx-large">Last Name:</span>
           
                     <asp:TextBox ID="txtLastName" runat="server" Height="50px" Width="400px" 
                         Font-Bold="True" Font-Size="XX-Large" TabIndex="3"></asp:TextBox>
<br />
          <span style="font-size:xx-large">Email:</span>
           
                     <asp:TextBox ID="txtEmail" runat="server" Height="50px" Width="465px" 
                         Font-Bold="True" Font-Size="XX-Large" TabIndex="3"></asp:TextBox>
<br />


        <asp:Button ID="btnRegister" runat="server" Text="Register" Font-Bold="True" 
            Font-Size="XX-Large" Height="68px" TabIndex="5" Width="573px" 
            OnClick="btnRegister_onclick" />

        <br />
        <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            ForeColor="Red" Text="*"></asp:Label>

    </div></center>
    </form>
</body>
</html>

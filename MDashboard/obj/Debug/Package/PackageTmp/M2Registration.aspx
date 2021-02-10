<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="M2Registration.aspx.cs" Inherits="MDashboard.M2Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Main T-SA Registration</title>
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source Sans Pro" />
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
      body {
        font-family: 'Source Sans Pro', 'Arial';
        font-size: 30px;
      }
    </style>
</head>
<body>
<div class="container">
    <form id="form1" runat="server">
     <div class="form-group">
    <label for="txtPhone">Phone</label><asp:TextBox ID="txtPhone" class="form-control" placeholder="Enter Phone" runat="server"></asp:TextBox>
     </div>
       <div class="form-group">
    <label for="txtFirstName">First Name</label><asp:TextBox ID="txtFirstName" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>
     </div>
       <div class="form-group">
    <label for="txtLastName">Last Name</label><asp:TextBox ID="txtLastName" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
     </div>

    <asp:Button ID="btnRegister" class="btn btn-primary" runat="server" Text="Register" />
    </form>
    </div>
</body>
</html>

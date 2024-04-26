<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="waAgenda.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LabelLogin" runat="server" Font-Bold="True" Font-Size="Large" Text="Login"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBoxEmail" runat="server" Font-Names="Arial Black" ForeColor="#666666" Width="385px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBoxSenha" runat="server" Font-Names="Arial Black" ForeColor="#666666" Width="387px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonEntrar" runat="server" OnClick="ButtonEntrar_Click" Text="Entrar" Width="155px" />
            <br />
            <br />
            <asp:Label ID="LabelTelaLogin" runat="server" Text="menssagem"></asp:Label>
        </div>
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="contato.aspx.cs" Inherits="waAgenda.contato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="LabelInserirNovoContato" runat="server" Font-Bold="True" Font-Size="Larger" Text="Inserir Novo Contato"></asp:Label>
<br />
<br />
<asp:Label ID="LabelNome" runat="server" Text="Nome"></asp:Label>
<br />
<asp:TextBox ID="TextBox2" runat="server" Width="618px"></asp:TextBox>
<br />
<br />
<asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label>
<br />
<asp:TextBox ID="TextBox1" runat="server" Width="617px"></asp:TextBox>
<br />
<br />
<asp:Label ID="LabelTelefone" runat="server" Text="Telefone"></asp:Label>
<br />
<asp:TextBox ID="TextBox3" runat="server" Width="615px"></asp:TextBox>
<br />
<br />
<asp:Button ID="ButtonInserir" runat="server" BorderColor="#6666FF" Font-Size="Large" OnClick="ButtonInserir_Click" Text="Inserir Contato" Width="219px" />
<br />
<br />
<asp:Label ID="LabelContatos" runat="server" Text="Lista de Contatos:"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSourceContato" GridLines="Horizontal" Height="198px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="629px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceContato" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Contato] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Contato] ([nome], [email], [telefone]) VALUES (@nome, @email, @telefone)" SelectCommand="SELECT * FROM [Contato]" UpdateCommand="UPDATE [Contato] SET [nome] = @nome, [email] = @email, [telefone] = @telefone WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="telefone" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

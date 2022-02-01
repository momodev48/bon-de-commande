<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="ajout_delegue.aspx.cs" Inherits="Bon_c_belgiumpayment.ajout_delegue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 28px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td colspan="2">
                <asp:Label ID="labeluser" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Nom:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_nom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Prénom:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_prenom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="GSM:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_gsm" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Login:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_login" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" Text="Mot de passe:"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="tb_passe" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Admin:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddl_admin" runat="server">
                    <asp:ListItem Value="oui">Oui</asp:ListItem>
                    <asp:ListItem Value="non">Non</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="bt_ajouter" runat="server" Text="Ajouter" OnClick="bt_ajouter_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="ajouter_terminal.aspx.cs" Inherits="Bon_c_belgiumpayment.ajouter_terminal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table cellspacing="7" class="w-100">
        <tr>
            <td colspan="2">
    <asp:Label ID="labeluser" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Nom: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_nomterminal" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Prix location: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_prixlocation" runat="server"  min="0" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Prix vente: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_prixvente" runat="server" min="0" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Type: "></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_type" runat="server">
                    <asp:ListItem>Fixe</asp:ListItem>
                    <asp:ListItem>Mobile</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="bt_ajouter" runat="server" OnClick="Button1_Click" Text="Ajouter" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="labelajout" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>

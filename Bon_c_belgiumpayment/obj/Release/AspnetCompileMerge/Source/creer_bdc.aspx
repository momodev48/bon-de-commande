<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="creer_bdc.aspx.cs" Inherits="Bon_c_belgiumpayment.creer_bdc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 31px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="w-100">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="ID BDC:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Column1" DataValueField="Column1" Enabled="False" EnableViewState="False">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Bon_de_commandeConnectionString %>" SelectCommand="SELECT max(idbon+1) FROM bondecommande"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="ID delegué: "></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tb_iddeleg" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Nom du délégué:"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="tb_nomdeleg" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Nom société:"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="dd_id_societe" runat="server" DataSourceID="SqlDataSource1" DataTextField="nom_societe" DataValueField="idsociete">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bon_de_commandeConnectionString %>" SelectCommand="SELECT [idsociete], [nom_societe] FROM [societe_cliente]"></asp:SqlDataSource>
            <asp:Button ID="btn_ajoutersoc" runat="server" OnClick="btn_ajoutersoc_Click" Text="Ajouter société" />
&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Date création: "></asp:Label>
        </td>
        <td>
            <asp:Calendar ID="Calendar_datecrea" runat="server" Enabled="False" EnableTheming="False" EnableViewState="False"></asp:Calendar>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="tb_suivant" runat="server" OnClick="tb_suivant_Click" Text="Suivant" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="detailscommande.aspx.cs" Inherits="Bon_c_belgiumpayment.detailscommande" %>
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
        <td class="auto-style1"></td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="ID BDC"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DDL_IDBDC" runat="server" DataSourceID="max_idBDC" DataTextField="Column1" DataValueField="Column1">
            </asp:DropDownList>
            <asp:SqlDataSource ID="max_idBDC" runat="server" ConnectionString="<%$ ConnectionStrings:Bon_de_commandeConnectionString %>" SelectCommand="SELECT max(idbon) FROM bondecommande"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="ID Terminal"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DDL_terminal" runat="server" DataSourceID="SqlDataSource1" DataTextField="nom" DataValueField="idterminal">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bon_de_commandeConnectionString %>" SelectCommand="SELECT [idterminal], [nom] FROM [terminal]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Quantité "></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tb_quantite" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Location ou vente"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DDL_loca_vente" runat="server">
                <asp:ListItem>Vente</asp:ListItem>
                <asp:ListItem>Location</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Installation "></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DDL_installation" runat="server">
                <asp:ListItem>Oui</asp:ListItem>
                <asp:ListItem>Non</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Activation"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DDL_activation" runat="server">
                <asp:ListItem>Oui</asp:ListItem>
                <asp:ListItem>Non</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Assistance technique"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DDL_assistance" runat="server">
                <asp:ListItem>Oui</asp:ListItem>
                <asp:ListItem>Non</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Coût transaction"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="tb_couttrans" runat="server"></asp:TextBox>
            <asp:Label ID="Label12" runat="server" Text="€"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label9" runat="server" Text="Date livraison"></asp:Label>
        </td>
        <td>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label10" runat="server" Text="MDP Actifs "></asp:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="CheckBox_actifs" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Sodexo</asp:ListItem>
                <asp:ListItem>Edenred</asp:ListItem>
                <asp:ListItem>Amex</asp:ListItem>
                <asp:ListItem>JCB</asp:ListItem>
                <asp:ListItem>CUP</asp:ListItem>
            </asp:CheckBoxList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label11" runat="server" Text="MDP à activer"></asp:Label>
        </td>
        <td>
            <asp:CheckBoxList ID="CheckBox_aactiver" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>Sodexo</asp:ListItem>
                <asp:ListItem>Edenred</asp:ListItem>
                <asp:ListItem>Amex</asp:ListItem>
                <asp:ListItem>JCB</asp:ListItem>
                <asp:ListItem>CUP</asp:ListItem>
            </asp:CheckBoxList>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btn_ajouter_et_terminer" runat="server" Text="Terminer" OnClick="btn_ajouter_et_terminer_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_ajouter_un_autre" runat="server" Text="Ajouter un autre terminal" OnClick="btn_ajouter_un_autre_Click" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

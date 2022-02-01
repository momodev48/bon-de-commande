<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="chercher_client.aspx.cs" Inherits="Bon_c_belgiumpayment.afficher_client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        margin-left: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<table class="w-100">
    <tr>
        <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idsociete" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" BackColor="Black" CssClass="auto-style1" Height="340px" Width="640px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="idsociete" HeaderText="idsociete" InsertVisible="False" ReadOnly="True" SortExpression="idsociete" />
        <asp:BoundField DataField="nom_societe" HeaderText="nom_societe" SortExpression="nom_societe" />
        <asp:BoundField DataField="nom_enseigne" HeaderText="nom_enseigne" SortExpression="nom_enseigne" />
        <asp:BoundField DataField="gsm" HeaderText="gsm" SortExpression="gsm" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bon_de_commandeConnectionString %>" SelectCommand="SELECT * FROM [societe_cliente]"></asp:SqlDataSource>
<br />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="idsociete" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
    <EditRowStyle BackColor="#2461BF" />
    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="idsociete" HeaderText="ID société" InsertVisible="False" ReadOnly="True" SortExpression="idsociete" />
        <asp:BoundField DataField="nom_societe" HeaderText="Nom société" SortExpression="nom_societe" />
        <asp:BoundField DataField="nom_enseigne" HeaderText="Nom enseigne" SortExpression="nom_enseigne" />
        <asp:BoundField DataField="adresse" HeaderText="Adresse" SortExpression="adresse" />
        <asp:BoundField DataField="code_postal" HeaderText="Code postal" SortExpression="code_postal" />
        <asp:BoundField DataField="ville" HeaderText="Ville" SortExpression="ville" />
        <asp:BoundField DataField="personne_de_contact" HeaderText="Personne de contact" SortExpression="personne_de_contact" />
        <asp:BoundField DataField="fonction" HeaderText="Fonction" SortExpression="fonction" />
        <asp:BoundField DataField="gsm" HeaderText="GSM" SortExpression="gsm" />
        <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
        <asp:BoundField DataField="iban" HeaderText="IBAN" SortExpression="iban" />
        <asp:BoundField DataField="heures_ouverture" HeaderText="Heures d'ouverture" SortExpression="heures_ouverture" />
        <asp:BoundField DataField="activite" HeaderText="Activités" SortExpression="activite" />
        <asp:BoundField DataField="jour_fermeture" HeaderText="Jour(s) fermeture" SortExpression="jour_fermeture" />
    </Fields>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Bon_de_commandeConnectionString %>" SelectCommand="SELECT * FROM [societe_cliente] WHERE ([idsociete] = @idsociete)">
    <SelectParameters>
        <asp:ControlParameter ControlID="GridView1" Name="idsociete" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
&nbsp;
</asp:Content>

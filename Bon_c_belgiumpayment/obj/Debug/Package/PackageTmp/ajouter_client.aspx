<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaster.Master" AutoEventWireup="true" CodeBehind="ajouter_client.aspx.cs" Inherits="Bon_c_belgiumpayment.ajouter_client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="w-100-mobile">
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;<asp:Label ID="labeluser" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Text="Nom société:"></asp:Label>
            &nbsp;
            </td>
            <td>
                <asp:TextBox ID="tb_nolsoc" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="Nom enseigne"></asp:Label>
            &nbsp;
            </td>
            <td>
                <asp:TextBox ID="tb_nomens" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" Text="Adresse:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tb_adresse" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Code postal:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_codepostal" runat="server" type="number" MaxLength="5" TextMode="Number" min="1000"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="Ville:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_ville" runat="server" MaxLength="20"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Labeltva" runat="server" Text="TVA:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_tva" runat="server" MaxLength="20"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label6" runat="server" Text="Personne de contact:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_perscontact" runat="server" MaxLength="100"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label7" runat="server" Text="Fonction:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tb_fonction" runat="server" MaxLength="50"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Gsm::</td>
            <td>
                <asp:TextBox ID="tb_gsm" runat="server" Rows="50" TextMode="Phone"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">E-mail::</td>
            <td>
                <asp:TextBox ID="tb_email" runat="server" Rows="100" TextMode="Email"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">IBAN:</td>
            <td>
                <asp:TextBox ID="tb_iban" runat="server" MaxLength="50">BE</asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Heures d&#39;ouverture:</td>
            <td class="auto-style6">
               
                <asp:TextBox ID="tb_heuresouv1" runat="server"  type="number" TextMode="Time" Width="73px"></asp:TextBox>
                <asp:Label ID="label8" runat="server" Text="  -  "></asp:Label>
               
                <asp:TextBox ID="tb_heureferm1" runat="server"  type="number" TextMode="Time" Width="73px"></asp:TextBox>
                &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Ouverture aprem: "></asp:Label>
&nbsp;&nbsp;
                
               
                <asp:TextBox ID="tb_heuresouv2" runat="server"  type="number" TextMode="Time" Width="73px"></asp:TextBox>
                <asp:Label ID="label_ouvertaprem1" runat="server" Text="  -  "></asp:Label>
               
                <asp:TextBox ID="tb_heureferm2" runat="server"  type="number" TextMode="Time" Width="73px"></asp:TextBox>
            &nbsp;&nbsp;<br />
&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Activité:</td>
            <td>
                <asp:TextBox ID="tb_activite" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Jour(s) fermeture::</td>
            <td>
                <asp:CheckBoxList ID="checkbox_jourfermeture" runat="server">
                    <asp:ListItem>Lundi</asp:ListItem>
                    <asp:ListItem>Madi</asp:ListItem>
                    <asp:ListItem>Mercredi</asp:ListItem>
                    <asp:ListItem>Jeudi</asp:ListItem>
                    <asp:ListItem>Vendredi</asp:ListItem>
                    <asp:ListItem>Samedi</asp:ListItem>
                    <asp:ListItem>Dimanche</asp:ListItem>
                </asp:CheckBoxList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="bt_ajouterclient" runat="server" OnClick="Button1_Click" Text="Ajouter Société " />
                <br />
                <br />
                <asp:Label ID="label_ajout" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="Miamo.SITE.Contato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container fundo">
      <div class="Centro">
        <h1 class="text-light font-weight-light" style="font-size: 60px">Fale Conosco</h1>
         
        <br />
        <asp:Label runat="server" Text="Nome" AssociatedControlID="txtNome" CssClass="text-light lead" />
        <asp:TextBox runat="server" ID="txtNome" CssClass="form-control" MaxLength="100" Width="50%" />
        <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="txtNome" ErrorMessage="Campo Nome é obrigatório!" ForeColor="Yellow" />


        <br />
        <asp:Label runat="server" Text="E-mail" AssociatedControlID="txtEmail" CssClass="text-light lead" />
        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" MaxLength="100" Width="50%" />
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Campo E-mail é obrigatório" ForeColor="Yellow" />
        <br />
        <asp:RegularExpressionValidator ID="gevEmailValido" runat="server" ControlToValidate="txtEmail"
            ErrorMessage="O E-mail é inválido!" ForeColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />

        <br />
        <asp:Label runat="server" Text="Telefone" AssociatedControlID="txtTelefone" CssClass="text-light lead" />
        <asp:TextBox runat="server" ID="txtTelefone" CssClass="form-control phone_with_ddd" MaxLength="100" Width="50%" />
        <asp:RequiredFieldValidator ID="rfvTelefone" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Campo Telefone é obrigatório" ForeColor="Yellow" />
        <asp:RegularExpressionValidator ID="gevTelefoneValido" runat="server" ControlToValidate="txtTelefone"
            ErrorMessage="O telefone não é inválido!" ForeColor="Yellow" ValidationExpression="^\([1-9]{2}\) (?:[2-8]|9[1-9])[0-9]{3}\-[0-9]{4}$" />

        <br />
        <asp:Label runat="server" Text="Mensagem" AssociatedControlID="txtMensagem" CssClass="text-light lead" />
        <asp:TextBox runat="server" ID="txtMensagem" CssClass="form-control" MaxLength="100" Width="50%" TextMode="MultiLine" />
        <asp:RequiredFieldValidator ID="rfvMensagem" runat="server" ControlToValidate="txtMensagem" ErrorMessage="Campo Mensagem é obrigatório" ForeColor="Yellow" />

        <br /><br />
        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" CssClass="btn btn-secondary" OnClick="btnEnviar_Click" />

        <br /><br />
        <asp:Label ID="lblMensagem" runat="server" CssClass="text-light lead" />


        <br /><br />
        <br /><br />
        <br /><br />
        <br /><br />
        <br /><br />
       
        </div>
   </div>
        
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Miamo.UI.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link href="../Content/style.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="icone/favicon.ico" rel="icon" />

    <title>Miamo</title>
</head>
<body>

    <div class="fundo" runat="server" id="fundo">
    <form id="form1" runat="server">

        <div class="formularioC">

            <div class="formulario text-dark ">
                <br />
                <h1 class="font-weight-light">Autenticação</h1>
                <br />
                <asp:Label runat="server" Text="Usuário" CssClass="lead" />
                <asp:TextBox AutoCompleteType="Disabled" ID="txtUser" CssClass="form-control" MaxLength="50" runat="server" Width="100%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredNome" runat="server" ErrorMessage="Digite o nome do usuário" ForeColor="Red" ControlToValidate="txtUser">
                </asp:RequiredFieldValidator>
                <br />

                <asp:Label runat="server" Text="Senha" CssClass="lead" />

                <asp:TextBox AutoCompleteType="Disabled" ID="txtPassword" CssClass="form-control" MaxLength="6" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredSenha" runat="server" ErrorMessage="Digite a Senha do usuário" ForeColor="Red" ControlToValidate="txtPassword">
                </asp:RequiredFieldValidator>

                <br />
                <asp:Button ID="btnEntrar" runat="server" Text="Entrar" CssClass="btn btn-secondary" OnClick="btnEntrar_Click" />
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-secondary" OnClick="btnCancelar_Click" />

                <br />
                <asp:Label ID="lblMensagem" runat="server" CssClass="lead" ForeColor="Red" />
            </div>
        </div>


    </form>
    </div>
</body>
</html>

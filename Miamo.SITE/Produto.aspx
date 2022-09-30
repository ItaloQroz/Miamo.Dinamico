<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Produto.aspx.cs" Inherits="Miamo.SITE.Produto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container bg-blue">
        <%--<nav>
            <ol class="breadcrumb bg-dark">
                <li class="breadcrumb-item "><a href="Default.aspx">Home</a></li>
                <li class="breadcrumb-item "><a href="Catalogo.aspx">Catálogo</a></li>
                <li class="breadcrumb-item "><a href="Catalogo.aspx">
                    <asp:Label ID="lblCategoria" runat="server"></asp:Label>
                </a></li>
                <li class="breadcrumb-item active" aria-current="page">
                    <asp:Label ID="lblProduto" runat="server"></asp:Label>
                </li>
            </ol>
        </nav>--%>
        <h1 class="text-light font-weight-light" style="font-size: 60px">
            <asp:Label ID="lblNomeProduto" runat="server"></asp:Label>
        </h1>
        <div class="p-5 mb-2 bg-light text-dark row">
            <asp:Image ID="imgProduto" runat="server" CssClass="float-left pr-3" />
            <div class="text-sm-start">
                <p><b>Produto:</b><asp:Label ID="lblNome" runat="server"></asp:Label></p>
                <p><b>Tamanho:</b><asp:Label ID="lblTamanho" runat="server"></asp:Label></p>
                <p><b>Preço:</b><asp:Label ID="lblPreco" runat="server"></asp:Label></p>
                <p><b>Cor:</b><asp:Label ID="lblCor" runat="server"></asp:Label></p>
                <p><b>Categoria:</b><asp:Label ID="lblCategoriaProduto" runat="server"></asp:Label></p>
                <p><b>Descrição:</b><asp:Label ID="lblDescricao" runat="server"></asp:Label></p>
            </div>
        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="Miamo.SITE.Catalogo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>
        <asp:Label ID="lblTitulo" runat="server"></asp:Label></h1>

    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <asp:Repeater ID="rptProdutos" runat="server">
            <ItemTemplate>
                <div class="col">

                    <div class="card shadow-sm">
                        <a href="Produto.aspx?id=<%# Eval("idProduto") %>">
                            <img src="<%# Eval("UrlImagemProduto").ToString().Replace("~",".") %>" class="bd-placeholder-img card-img-top" width="100%" height="" role="img" aria-label="Placeholder: Thumbnail" preserveaspectratio="xMidYMid slice" focusable="false">
                        </a>
                        <a href="Produto.aspx?id=<%# Eval("idProduto") %>">
                            <h5><%# Eval("NomeProduto") %></h5>
                        </a>
                        <rect width="100%" height="100%" fill="#55595c"></rect>
                        <text x="50%" y="50%" fill="#eceeef" dy=".3em">
                            <%# Eval("TamanhoProduto") %>
                            <br />
                            <%# Eval("PrecoProduto") %>
                            <br />
                            <%# Eval("CorProduto") %>
                        </text>
                        </img>

                        <div class="card-body">
                            <p class="card-text"></p>
                            <div class="d-flex justify-content-between align-items-center">
                            </div>
                        </div>
                    </div>

                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>


</asp:Content>

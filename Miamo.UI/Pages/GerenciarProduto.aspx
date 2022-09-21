<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="GerenciarProduto.aspx.cs" Inherits="Miamo.UI.Pages.GerenciarProduto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Label ID="lblSessionMsg" runat="server" class="lead"/>
    <br /><hr /><br />
    <asp:GridView runat="server" ID="gv2" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="IdProduto"
        OnRowCommand="gv2_RowCommand"
        OnRowEditing="gv2_RowEditing"
        OnRowCancelingEdit="gv2_RowCancelingEdit"
        OnRowUpdating="gv2_RowUpdating"
        OnRowDeleting="gv2_RowDeleting"
        OnPageIndexChanging="gv2_PageIndexChanging"
        AllowPaging="true"
        PageSize="5"
        CssClass="table table-responsive table-striped">
        <Columns>
            <asp:TemplateField HeaderText="Album">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("NomeProduto") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtNomeAlbum" runat="server" MaxLength="50" Text='<%#Eval("NomeProduto") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtNomeAlbumFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Artista">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("TamanhoProduto") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtArtistaAlbum" runat="server" MaxLength="50" Text='<%#Eval("TamanhoProduto") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtArtistaAlbumFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Selo">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("PrecoProduto") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtPrecoProduto" runat="server" MaxLength="50" Text='<%#Eval("PrecoProduto") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtPrecoProdutoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>
            <%--Imagem--%>
            <asp:TemplateField HeaderText="Imagem">
                <ItemTemplate>
                    <asp:Image ImageUrl='<%#Eval("UrlImagemProduto")%>' Width="100" Height="100" runat="server" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:FileUpload ID="fUp1" runat="server" Text="Selecione a Imagem" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:FileUpload ID="fUp1" runat="server" Text="Selecione a Imagem" />
                </FooterTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <%--DropDown--%>
            <asp:TemplateField HeaderText="Categoria">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("DescricaoCategoria") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList ID="ddl1" runat="server">
                        <asp:ListItem Selected="True" Text="Selecione" />
                        <asp:ListItem Value="1" Text="BabyDolls" />
                        <asp:ListItem Value="2" Text="" />
                        <asp:ListItem Value="3" Text="Punk" />
                        <asp:ListItem Value="4" Text="Eletrônico" />
                        <asp:ListItem Value="5" Text="R&B" />
                        <asp:ListItem Value="6" Text="Clássico" />
                    </asp:DropDownList>
                </EditItemTemplate>
                <FooterTemplate>
                    <%--DropDown--%>
                    <asp:DropDownList ID="ddl1" runat="server">
                        <asp:ListItem Selected="True" Text="Selecione" />
                        <asp:ListItem Value="1" Text="Pop" />
                        <asp:ListItem Value="2" Text="Rock" />
                        <asp:ListItem Value="3" Text="Punk" />
                        <asp:ListItem Value="4" Text="Eletrônico" />
                        <asp:ListItem Value="5" Text="R&B" />
                        <asp:ListItem Value="6" Text="Clássico" />
                    </asp:DropDownList>
                </FooterTemplate>
            </asp:TemplateField>
            <%--Botoes--%>
            <asp:TemplateField HeaderText="Opções">
                <ItemTemplate>
                    <%--Editar--%>
                    <asp:ImageButton ImageUrl="~/Img/edit.png" CommandName="Edit" ToolTip="Editar" ID="btnEditar" Width="30" Height="30" runat="server" />
                    <%--Excluir--%>
                    <asp:ImageButton ImageUrl="~/Img/delete.png" CommandName="Delete" ToolTip="Excluir" ID="btnExcluir" Width="30" Height="30" runat="server" OnClientClick="if ( !confirm('Deseja realmente eliminar este registro ?? ')) return false" />
                </ItemTemplate>
                <EditItemTemplate>
                    <%--Salvar--%>
                    <asp:ImageButton ImageUrl="~/Img/save.png" CommandName="Update" ToolTip="Salvar" ID="btnSalvar" Width="30" Height="30" runat="server" />
                    <%--Cancelar--%>
                    <asp:ImageButton ImageUrl="~/Img/cancel.png" CommandName="Cancel" ToolTip="Cancelar" ID="btnCancelar" Width="30" Height="30" runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <%--Cadastrar--%>
                    <asp:ImageButton ImageUrl="~/Img/add.png" CommandName="Adicionar" ID="btnAdicionar" Width="30" Height="30" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:Label runat="server" ID="lblMessage"/>





</asp:Content>

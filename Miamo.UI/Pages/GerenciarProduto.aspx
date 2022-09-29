﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="GerenciarProduto.aspx.cs" Inherits="Miamo.UI.Pages.GerenciarProduto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblSessionMsg" runat="server" class="lead" />
    <br />
    <hr />
    <br />

    <asp:GridView runat="server" ID="gv1" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="IdProduto"
        OnRowCommand="gv1_RowCommand"
        OnRowUpdating="gv1_RowUpdating"
        OnRowDeleting="gv1_RowDeleting"
        OnRowEditing="gv1_RowEditing"
        OnRowCancelingEdit="gv1_RowCancelingEdit"
        CssClass="table table-responsive table-striped">
        <Columns>

            <asp:TemplateField HeaderText="Produto">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("NomeProduto") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtNomeProduto" runat="server" MaxLength="50" Text='<%#Eval("NomeProduto") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtNomeProdutoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="TamanhoProduto">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("TamanhoProduto") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtTamanhoProduto" runat="server" MaxLength="50" Text='<%#Eval("TamanhoProduto") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtTamanhoProdutoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="PrecoProduto">
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

            <asp:TemplateField HeaderText="CorProduto">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("CorProduto") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtCorProduto" runat="server" MaxLength="50" Text='<%#Eval("CorProduto") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtCorProdutoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

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


            <asp:TemplateField HeaderText="Categoria">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("CategoriaProduto") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:DropDownList ID="ddl1" runat="server">

                        <asp:ListItem Selected="True" Text="Selecione" />                        
                        <asp:ListItem Value="1" Text="Lançamentos" />
                        <asp:ListItem Value="2" Text="Modeladores" />
                        <asp:ListItem Value="3" Text="Camisolas" />
                        <asp:ListItem Value="4" Text="Calcinhas & Fios" />
                        <asp:ListItem Value="5" Text="Lingeries" />
                        <asp:ListItem Value="6" Text="Sutiãs" />
                        <asp:ListItem Value="7" Text="Outros" />

                    </asp:DropDownList>
                </EditItemTemplate>
                <FooterTemplate>
                    <%--DropDown--%>
                    <asp:DropDownList ID="ddl1" runat="server">
                        <asp:ListItem Selected="True" Text="Selecione" />
                        <asp:ListItem Value="1" Text="Lançamentos" />
                        <asp:ListItem Value="2" Text="Modeladores" />
                        <asp:ListItem Value="3" Text="Camisolas" />
                        <asp:ListItem Value="4" Text="Calcinhas & Fios" />
                        <asp:ListItem Value="5" Text="Lingeries" />
                        <asp:ListItem Value="6" Text="Sutiãs" />
                        <asp:ListItem Value="7" Text="Outros" />

                    </asp:DropDownList>
                </FooterTemplate>
            </asp:TemplateField>





            <asp:TemplateField HeaderText="Opções">
                <ItemTemplate>
                    <asp:ImageButton ID="btnEditar" runat="server" ImageUrl="~/Img/edit.png" ToolTip="Editar" Width="30" Height="30" CommandName="Edit" />
                    <asp:ImageButton ID="btnExcluir" runat="server" ImageUrl="~/Img/delete.png" ToolTip="Excluir" Width="30" Height="30" CommandName="Delete" OnClientClick="if (!confirm('Deseja relmente eliminar este registro??'))return false" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:ImageButton ID="btnSalvar" runat="server" ImageUrl="~/Img/save.png" ToolTip="Salvar" Width="30" Height="30" CommandName="Update" />
                    <asp:ImageButton ID="btnCancelar" runat="server" ImageUrl="~/Img/cancel.png" ToolTip="Cancelar" Width="30" Height="30" CommandName="Cancel" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:ImageButton ID="btnAdicionar" runat="server" ImageUrl="~/Img/add.png" ToolTip="Adicionar" Width="30" Height="30" CommandName="Add" />
                </FooterTemplate>
            </asp:TemplateField>


        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="lblMessage" runat="server" Text="Label" />




</asp:Content>

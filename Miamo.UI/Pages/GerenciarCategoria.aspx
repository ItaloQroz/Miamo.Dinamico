<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="GerenciarCategoria.aspx.cs" Inherits="Miamo.UI.Pages.GerenciarCategoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblSessionMsg" runat="server" class="lead"/>
    <br /><hr /><br />

    <asp:GridView runat="server" ID="gv1" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="IdCategoria"
        OnRowCommand="gv1_RowCommand"
        OnRowUpdating="gv1_RowUpdating"
        OnRowDeleting="gv1_RowDeleting"
        OnRowEditing="gv1_RowEditing"
        OnRowCancelingEdit="gv1_RowCancelingEdit"
        CssClass="table table-responsive table-striped">
        <Columns>

            <asp:TemplateField HeaderText="Nome da Categoria">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("NomeCategoria") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtNomeCategoria" runat="server" MaxLength="50" Text='<%#Eval("NomeCategoria") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtNomeCategoriaFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

 
            <asp:TemplateField HeaderText="Opções">
                <ItemTemplate>
                    <asp:ImageButton ID="btnEditar" runat="server" ImageUrl="~/Img/edit.png" ToolTip="Editar" Width="30" Height="30" CommandName="Edit" />
                    <asp:ImageButton ID="btnExcluir" runat="server" ImageUrl="~/Img/delete.png" ToolTip="Excluir" Width="30" Height="30" CommandName="Delete" OnClientClick="if (!confirm('Deseja relmente eliminar este registro??'))return false"/>
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

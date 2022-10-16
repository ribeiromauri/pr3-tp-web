<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="PaginaDetalle.aspx.cs" Inherits="tp4_web.PaginaDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="mb-3">
            <label class="form-label">Nombre</label>
            <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div>
            <label class="form-label">Descripcion</label>
            <asp:TextBox ID="txtDescripcion" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div>
            <label class="form-label">Precio</label>
            <asp:TextBox ID="txtPrecio" runat="server" class="form-control"></asp:TextBox>
        </div>
    </div>
    <hr />
    <div>
        <a class="btn btn-primary" href="Pagina1.aspx" role="button">Volver</a>
    </div>
</asp:Content>

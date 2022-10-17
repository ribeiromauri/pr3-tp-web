<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Pagina1.aspx.cs" Inherits="tp4_web.Pagina1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row row-cols-3 row-cols-md-4 g-4">
        <asp:Repeater runat="server" ID="repRepetidor">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("ImagenUrl") %>" style="width:200px" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <p class="card-text">$<%#Eval("Precio") %></p>
                            <a class="btn btn-primary" href="PaginaDetalle.aspx?id=<%#Eval("ID") %>">Ver Detalle</a>
<%--                            <a class="btn btn-primary" href="Carrito.aspx?id=<%#Eval("ID") %>">Carrito</a>--%>
                            <asp:Button ID="btnCarrito" runat="server" Text="Carrito" CssClass="btn btn-primary" CommandArgument='<%#Eval("ID") + ";" + Eval("Nombre") + ";" + Eval("Precio") + ";" + Eval("ImagenUrl")%>' CommandName="ArticuloID" OnClick="btnCarrito_Click" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

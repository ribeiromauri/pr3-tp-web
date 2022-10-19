<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Pagina1.aspx.cs" Inherits="tp4_web.Pagina1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--
    <div style="padding: 20px;">
        <h6 style="padding-top: 20px;">Busqueda avanzada</h6>
                    <p>Buscar por</p>
                    <asp:DropDownList ID="Opciones" runat="server" >
                        <asp:ListItem Selected="True" Value="Seleccionar..." runat="server"></asp:ListItem>
                        <asp:ListItem Value="Nombre" runat="server"></asp:ListItem>
                        <asp:ListItem Value="Marca" runat="server"></asp:ListItem>
                        <asp:ListItem Value="Precio" runat="server"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="Criterio" runat="server" placeholder="Criterio de busqueda"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Buscar" class="btn btn-primary" />
    </div>
    -->
    <div>
            <nav class="navbar navbar-expand-lg bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="Pagina1.aspx">Articulos</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="Carrito.aspx"><i class="fa fa-shopping-cart"></i></a>
                            </li>
                        </ul>
                        <!--<input class="form-control me-2" type="search" placeholder="Buscar artículos por nombre o marca" aria-label="Search" id="Criterio" />-->
                        <asp:TextBox CssClass="form-control me-2" placeholder="Buscar artículos por nombre o marca" runat="server" ID="Filtro"></asp:TextBox>
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-primary" OnClick="btnBuscar_Click"/>
                    </div>
                </div>
            </nav>
        </div>
    <h3 style="padding-top:20px; text-align: center;"><asp:Label ID="txtBusqueda" runat="server" /></h3>
    <a href="Pagina1.aspx"><h3 style="padding-top:5px; text-align: center;"><asp:Label ID="txtRecargar" runat="server" /></h3></a>
    <div class="row row-cols-3 row-cols-md-4 g-4">
        <asp:Repeater runat="server" ID="repRepetidor">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("ImagenUrl") %>" style="width:200px; height: auto;" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <p class="card-text">$<%#Eval("Precio") %></p>
                            <a class="btn btn-primary" href="PaginaDetalle.aspx?id=<%#Eval("ID") %>">Ver Detalle</a>
                            <asp:Button ID="btnCarrito" runat="server" Text="Carrito" CssClass="btn btn-primary" CommandArgument='<%#Eval("ID") + ";" + Eval("Nombre") + ";" + Eval("Precio") + ";" + Eval("ImagenUrl")%>' CommandName="ArticuloID" OnClick="btnCarrito_Click" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    
</asp:Content>

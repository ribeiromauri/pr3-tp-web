<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="tp4_web.Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <nav class="navbar navbar-expand-lg bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="Pagina1.aspx">Inicio</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="Carrito.aspx"><i class="fa fa-shopping-cart"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    <asp:Label ID="Titulo" runat="server"></asp:Label>
    <%if (Titulo.Text == TituloConContenido){%>
        <hr />
        <div class="row row-cols-3 row-cols-md-3 g-4">
            <asp:Repeater runat="server" ID="repRepetidor">
                <ItemTemplate>
                    <div class="col">
                        <div class="card">
                            <img src="<%#Eval("URLImagen") %>" style="width: 150px" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><%#Eval("Nombre") %></h5>
                                <p class="card-text">$<%#Eval("Precio") %></p>
                                <asp:Label ID="lblCantidad" runat="server" Text="Cantidad">
                                    <p><%#Eval("Cantidad") %></p>
                                </asp:Label>
                                <asp:ImageButton src="img/img/plus-lg.svg" ID="Agregar" CommandArgument='<%#Eval("ID")%>' runat="server" OnClick="Agregar_Click"/>
                                <asp:ImageButton src="img/img/dash.svg" ID="Restar" CommandArgument='<%#Eval("ID")%>' runat="server" OnClick="Restar_Click"/>
                                <asp:ImageButton src="img/img/x-lg.svg" ID="Eliminar" CommandArgument='<%#Eval("ID")%>' runat="server" OnClick="Eliminar_Click"/>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    <h5 style="padding-top:20px;">Importe: <asp:Label ID="Importe" cssclass="h5" runat="server" /></h5>
    <%}%>
            
    
</asp:Content>

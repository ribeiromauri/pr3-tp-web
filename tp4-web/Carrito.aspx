<%@ Page Title="" Language="C#" MasterPageFile="~/MiMaster.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="tp4_web.Carrito" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Titulo" runat="server"></asp:Label>
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
</asp:Content>

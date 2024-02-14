<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PizzaOrderingSystem.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Pizza Ordering System</title>
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Pizza Ordering System</h1>
            <div class="tabs">
                <ul>
                    <li><asp:Button ID="btnPizzaPage" runat="server" Text="Choose Pizza" OnClick="btnPizzaPage_Click" CssClass="tab-button" /></li>
                    <li><asp:Button ID="btnOffersPage" runat="server" Text="Special Offers" OnClick="btnOffersPage_Click" CssClass="tab-button" /></li>
                </ul>
            </div>
            <div class="tab-content">
                <asp:Panel ID="pizzaTab" runat="server" Visible="false">
                    <h2>Choose Your Pizza</h2>
                    <div class="pizza-options">
                        <label for="ddlPizzaOptions">Pizza Option:</label>
                        <asp:DropDownList ID="ddlPizzaOptions" runat="server" CssClass="form-control"></asp:DropDownList>

                        <label for="chkVegToppings">Vegetarian Toppings:</label>
                        <asp:CheckBoxList ID="chkVegToppings" runat="server" CssClass="form-control"></asp:CheckBoxList>
                    </div>
                    <asp:Button ID="btnAddToCartPizza" runat="server" Text="Add to Cart" OnClick="btnAddToCart_Click" CssClass="btn" />
                </asp:Panel>
                <asp:Panel ID="offersTab" runat="server" Visible="false">
                    <h2>Special Offers</h2>
                    <div class="offers">
                        <label for="ddlOffers">Select an Offer:</label>
                        <asp:DropDownList ID="ddlOffers" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <asp:Button ID="btnAddToCartOffer" runat="server" Text="Add to Cart" OnClick="btnAddToCart_Click" CssClass="btn" />
                </asp:Panel>
            </div>

            <div class="cart-section">
                <h2>Your Cart</h2>
                <asp:ListView ID="lvCart" runat="server" CssClass="cart-items" DataKeyNames="ItemName">
                    <ItemTemplate>
                        <div class="cart-item">
                            <span class="item-name"><%# Eval("Name") %></span>
                            <span class="item-description"><%# Eval("Description") %></span>
                            <span class="item-price"><%# Eval("Price", "{0:C}") %></span>
                            <asp:Button ID="btnRemoveFromCart" runat="server" Text="Remove" CommandName="RemoveItem" CommandArgument='<%# Container.DisplayIndex %>' CssClass="btn-remove" />
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                <div class="total-cost">
                    Total: <asp:Label ID="lblTotalCost" runat="server" CssClass="total-price"></asp:Label>
                </div>
                <asp:Button ID="btnPlaceOrder" runat="server" Text="Place Order" OnClick="btnPlaceOrder_Click" CssClass="btn-place-order" />
            </div>
        </div>
    </form>
</body>
</html>

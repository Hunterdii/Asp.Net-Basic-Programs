using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace PizzaOrderingSystem
{
    public partial class Default : System.Web.UI.Page
    {
        private List<PizzaOption> pizzaOptions;
        private List<Topping> vegToppings;
        private List<Offer> offers;
        private decimal totalOrderCost;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InitializeData();
                LoadPizzaOptions();
                LoadVegToppings();
                LoadOffers();
                SwitchToPizzaPage();
            }
        }

        private void InitializeData()
        {
            pizzaOptions = new List<PizzaOption>()
            {
                new PizzaOption("Margherita", "Classic tomato and mozzarella cheese", 8.99m),
                new PizzaOption("Pepperoni", "Tomato, mozzarella cheese, and pepperoni", 9.99m),
                new PizzaOption("Vegetarian", "Tomato, mozzarella cheese, and assorted vegetables", 9.99m),
                // Add more pizza options as needed
            };

            vegToppings = new List<Topping>()
            {
                new Topping("Extra Cheese", 1.50m),
                new Topping("Mushrooms", 0.75m),
                new Topping("Onions", 0.50m),
                new Topping("Green Peppers", 0.50m),
                // Add more veg toppings as needed
            };

            offers = new List<Offer>()
            {
                new Offer("Family Deal", "Get 2 large pizzas, 1 garlic bread, and 1 soft drink for $24.99", 24.99m),
                new Offer("Lunch Special", "Get a personal pizza and a soft drink for $7.99", 7.99m),
                // Add more offers as needed
            };
        }

        private void LoadPizzaOptions()
        {
            ddlPizzaOptions.DataSource = pizzaOptions;
            ddlPizzaOptions.DataTextField = "Name";
            ddlPizzaOptions.DataValueField = "Price";
            ddlPizzaOptions.DataBind();
        }

        private void LoadVegToppings()
        {
            chkVegToppings.DataSource = vegToppings;
            chkVegToppings.DataTextField = "Name";
            chkVegToppings.DataValueField = "Price";
            chkVegToppings.DataBind();
        }

        private void LoadOffers()
        {
            ddlOffers.DataSource = offers;
            ddlOffers.DataTextField = "Name";
            ddlOffers.DataValueField = "Price";
            ddlOffers.DataBind();
        }

        private void SwitchToPizzaPage()
        {
            pizzaTab.Visible = true;
            offersTab.Visible = false;
        }

        private void SwitchToOffersPage()
        {
            pizzaTab.Visible = false;
            offersTab.Visible = true;
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            if (pizzaTab.Visible)
            {
                AddPizzaToCart();
            }
            else if (offersTab.Visible)
            {
                AddOfferToCart();
            }
        }

        private void AddPizzaToCart()
        {
            decimal pizzaPrice;
            if (!decimal.TryParse(ddlPizzaOptions.SelectedValue, out pizzaPrice))
            {
                DisplayAlert("Please select a pizza option.");
                return;
            }

            decimal totalCost = pizzaPrice;
            foreach (ListItem item in chkVegToppings.Items)
            {
                if (item.Selected)
                {
                    decimal toppingPrice;
                    if (decimal.TryParse(item.Value, out toppingPrice))
                    {
                        totalCost += toppingPrice;
                    }
                }
            }

            AddToCart(ddlPizzaOptions.SelectedItem.Text, GetSelectedToppings(), totalCost);
        }

        private void AddOfferToCart()
        {
            decimal offerPrice;
            if (!decimal.TryParse(ddlOffers.SelectedValue, out offerPrice))
            {
                DisplayAlert("Please select an offer.");
                return;
            }

            AddToCart(ddlOffers.SelectedItem.Text, string.Empty, offerPrice);
        }

        private string GetSelectedToppings()
        {
            List<string> selectedToppings = new List<string>();
            foreach (ListItem item in chkVegToppings.Items)
            {
                if (item.Selected)
                {
                    selectedToppings.Add(item.Text);
                }
            }
            return string.Join(", ", selectedToppings);
        }

        private void AddToCart(string itemName, string itemDescription, decimal itemPrice)
        {
            ListViewItem orderItem = new ListViewItem(itemName);
            orderItem.SubItems.Add(itemDescription);
            orderItem.SubItems.Add(itemPrice.ToString("C"));
            lvCart.Items.Add(orderItem);

            totalOrderCost += itemPrice;
            lblTotalCost.Text = totalOrderCost.ToString("C");

            ResetSelection();
        }

        private void ResetSelection()
        {
            ddlPizzaOptions.SelectedIndex = -1;
            foreach (ListItem item in chkVegToppings.Items)
            {
                item.Selected = false;
            }
            ddlOffers.SelectedIndex = -1;
        }

        protected void btnRemoveFromCart_Click(object sender, EventArgs e)
        {
            if (lvCart.SelectedIndex >= 0)
            {
                ListViewItem selectedItem = lvCart.Items[lvCart.SelectedIndex];
                decimal itemPrice;
                if (decimal.TryParse(selectedItem.SubItems[2].Text, out itemPrice))
                {
                    totalOrderCost -= itemPrice;
                    lblTotalCost.Text = totalOrderCost.ToString("C");
                }

                lvCart.Items.Remove(selectedItem);
            }
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            if (lvCart.Items.Count == 0)
            {
                DisplayAlert("Your cart is empty. Please add items to your cart.");
                return;
            }

            // Simulating order placement by displaying a summary
            string orderSummary = "Order Summary:\n\n";
            foreach (ListViewItem item in lvCart.Items)
            {
                orderSummary += $"{item.SubItems[0].Text} ({item.SubItems[1].Text}) - {item.SubItems[2].Text}\n";
            }
            orderSummary += $"\nTotal: {totalOrderCost.ToString("C")}";

            DisplayAlert(orderSummary, "Order Placed");

            ClearCart();
        }

        private void ClearCart()
        {
            lvCart.Items.Clear();
            totalOrderCost = 0;
            lblTotalCost.Text = totalOrderCost.ToString("C");
        }

        private void DisplayAlert(string message, string title = "")
        {
            string script = $"<script>alert('{message}');</script>";
            if (!string.IsNullOrEmpty(title))
            {
                script = $"<script>alert('{message}', '{title}');</script>";
            }
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script);
        }

        protected void btnPizzaPage_Click(object sender, EventArgs e)
        {
            SwitchToPizzaPage();
        }

        protected void btnOffersPage_Click(object sender, EventArgs e)
        {
            SwitchToOffersPage();
        }
    }

    public class PizzaOption
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }

        public PizzaOption(string name, string description, decimal price)
        {
            Name = name;
            Description = description;
            Price = price;
        }
    }

    public class Topping
    {
        public string Name { get; set; }
        public decimal Price { get; set; }

        public Topping(string name, decimal price)
        {
            Name = name;
            Price = price;
        }
    }

    public class Offer
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }

        public Offer(string name, string description, decimal price)
        {
            Name = name;
            Description = description;
            Price = price;
        }
    }
}

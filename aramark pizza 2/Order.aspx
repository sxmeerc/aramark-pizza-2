<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="aramark_pizza_2.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Order</h1>
        <p>
            Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <asp:RadioButton ID="pepButton" runat="server" GroupName="1" Text="Pepperoni Pizza (£3.80)" AutoPostBack="True" />
        <br />
        <asp:RadioButton ID="marButton" runat="server" GroupName="1" Text="Margherita Pizza (£3.60)" AutoPostBack="True" />
        <br />
        <br />
        <asp:RadioButton ID="smallButton" runat="server" GroupName="2" Text="Small 9&quot;" AutoPostBack="True" />
        <br />
        <asp:RadioButton ID="medButton" runat="server" GroupName="2" Text="Medium 11&quot;" AutoPostBack="True" />
        <br />
        <asp:RadioButton ID="larButton" runat="server" GroupName="2" Text="Large 13&quot;" AutoPostBack="True" />
        <br />
        <br />
        <asp:CheckBox ID="pineCheckbox" runat="server" Text="Pineapple (£0.45)" AutoPostBack="True" />
        <br />
        <asp:CheckBox ID="mushCheckbox" runat="server" Text="Mushroom (£0.45)" AutoPostBack="True" />
        <br />
        <asp:GridView ID="grdOrder" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" Visible="False">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="PizzaSize" HeaderText="PizzaSize" SortExpression="PizzaSize" />
                <asp:BoundField DataField="PizzaToppings" HeaderText="PizzaToppings" SortExpression="PizzaToppings" />
                <asp:BoundField DataField="PizzaTypes" HeaderText="PizzaTypes" SortExpression="PizzaTypes" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
        <p>
            <asp:Label ID="resultLabel" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="toppinglbl" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="typelbl" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="sizelbl" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Button ID="nextBtn" runat="server" OnClick="Button1_Click" Text="Next Page" />
        </p>
        <p>
            <asp:Image ID="Image1" runat="server" Height="142px" ImageUrl="~/Images/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2019__09__easy-pepperoni-pizza-lead-4-82c60893fcad4ade906a8a9f59b8da9d.jpg" Width="134px" />
            <asp:Image ID="Image2" runat="server" BorderStyle="None" Height="147px" ImageUrl="~/Images/56868564.jpg" Width="152px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="aramark_pizza_2.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Checkout</h1>
            <p>
                Mobile:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                Email address:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            <p>
                Credit/Debit:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Cash" />
            </p>
        </div>
        <asp:Button ID="finishButton" runat="server" Text="Finish" OnClick="finishButton_Click" />
        <asp:GridView ID="grdCustomer" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                <asp:BoundField DataField="CustomerNescotId" HeaderText="CustomerNescotId" SortExpression="CustomerNescotId" />
                <asp:BoundField DataField="CustomerAddress" HeaderText="CustomerAddress" SortExpression="CustomerAddress" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="grdTransaction" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="PizzaSize" HeaderText="PizzaSize" SortExpression="PizzaSize" />
                <asp:BoundField DataField="PizzaToppings" HeaderText="PizzaToppings" SortExpression="PizzaToppings" />
                <asp:BoundField DataField="PizzaTypes" HeaderText="PizzaTypes" SortExpression="PizzaTypes" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
    </form>
</body>
</html>

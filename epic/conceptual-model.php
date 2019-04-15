<ul>
	<li>
	<p><strong>Entities & Attributes:</strong></p>
	<li>
		<strong>User</strong>
		<p>userID (primary key)</p>
		<p>userEmailAddress</p>
		<p>userPassword</p>
		<p>userShoppingCart</p>
	</li>
	<li>
		<strong>Shopping Cart</strong>
		<p>shoppingCartID (primary key)</p>
		<p>shoppingCartItems</p>
	</li>
	<li>
		<strong>Item</strong>
		<p>itemID (weak)</p>
		<p>itemAmount (foreign key)</p>
		<p>itemCost(foreign key)</p>
	</li>
	<li>
		<strong>Relations</strong>
		<p>One shopping cart for 1 user (1 to 1)</p>
		<p>1 user can only have 1 shopping cart (1 to 1)</p>
	</li>
	</ul>
<p>

</p>
<li><strong>EDR Example</strong></li>
<img src="images/shopping%20-cart2.jpg" alt="shopping cart" style=":width: 400px; height:400px"/>

<p><a href="./index.php">Home</a><p>
<p><a href="./user-story.php">User-story</a><p>
<p><a href="./user-case.php">User-case</a><p>
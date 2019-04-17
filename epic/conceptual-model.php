<ul>
	<li>
	<p><strong>Entities & Attributes:</strong></p>
	<li>
		<strong>User</strong>
		<p>userId (primary key)</p>
		<p>userEmailAddress</p>
		<p>userPassword</p>
	</li>
	<li>
		<strong>Cart</strong>
		<p>cartId (primary key)</p>
		<p>cartAmount</p>
		<p>cartUserId (foreign key)</p>
	</li>
	<li>
		<strong>Item</strong>
		<p>itemId (primary key)</p>
		<p>itemAmount</p>
		<p>itemCost</p>
	</li>
	<li>
		<strong>CartItem</strong>
		<p>cartItemAmount</p>
		<p>cartItemCartId (foreign key)</p>
		<p>cartItemItemId(foreign key)</p>
		<li>
		<strong>Relations</strong>
		<p>One shopping cart for 1 user (1 to 1)</p>
		<p>1 user can only have 1 shopping cart (1 to 1)</p>
	</li>
	</ul>
<p>

</p>
<li><strong>EDR Example</strong></li>
<img src="images/shopping_cart3.jpg" alt="shopping cart" style=":width: 400px; height:400px"/>

<p><a href="./index.php">Home</a><p>
<p><a href="./user-story.php">User-story</a><p>
<p><a href="./user-case.php">User-case</a><p>
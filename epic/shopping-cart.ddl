drop table if exists item;
drop table if exists shoppingCart;
drop table if exists cartItem;
drop table if exists user;

create table user (
	userId binary(16) not null,
	userEmilAddress varchar(128),
	userPassword varchar(128),
	primary key(userId)
);

create table shoppingCart(
	shoppingCartId binary(16) not null,
shoppingCartItems varchar(64),
shoppingCartAmount binary (16),
shoppingCartUserId binary (16),
primary key(shoppingCartId),
foreign key (shoppingCartUserId)references user (UserId)
);

create table cartItem (
	cartItemCost binary (16),
	cartItemAmount binary (16),
	cartItemId binary (16),
	cartItemShoppingCartId binary (16),
	foreign key (cartItemShoppingCartId)references shoppingCart (shoppingCartId)

);
create table item (
	itemId binary(16) not null,
	itemAmount binary(16),
	itemCost binary (16),
	itemCartItemId binary (16),
	foreign key (itemCartItemId)references cartItem (cartItemId)

);
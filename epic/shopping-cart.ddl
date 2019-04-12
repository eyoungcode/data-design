drop table if exists Item;
drop table if exists User;
drop table if exists shoppingCart;

create table user (
	userId binary(16) not null,
	userEmilAddress varchar(128),
	userPassword varchar(128),
	userShoppingCart varchar(128),
	primary key(userId)

);

create table shoppingCart(
	shoppingCartId binary(16) not null,
shoppingCartItems varchar(16),
primary key(shoppingCartId)
);

create table item (
	itemId binary(16) not null,
	itemAmount binary(16),
	itemCost binary (64),
	Primary key(itemId),
	foreign key(itemAmount, itemCost)
);
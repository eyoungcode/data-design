drop table if exists item;
drop table if exists user;
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
shoppingCartAmount binary (16),
primary key(shoppingCartId)
);

create table item (
	itemId binary(16) not null,
	itemAmount binary(16),
	itemCost binary (16),
	Primary key(itemId),
	foreign key(itemAmount)references user(userId),
	foreign key(itemCost)references user(userId)
);
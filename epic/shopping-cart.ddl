drop table if exists item;
drop table if exists cart;
drop table if exists cartItem;
drop table if exists user;

create table user (
	userId binary(16) not null,
	userEmilAddress varchar(128),
	userPassword varchar(128),
	primary key(userId)
);

create table cart(
	cartId binary(16) not null,
cartAmount binary,
cartUserId binary,
primary key(cartId),
foreign key (cartUserId)references user (UserId)
);

create table cartItem (
	cartItemCost binary (16),
	cartItemCart VARCHAR(255),
	cartItemItemId binary (64) not null,
	foreign key (cartItemCart) references cart (cartAmount),
	foreign key (cartItemItemId)references item (itemId)

);
create table item (
	itemId binary(16) not null,
	itemAmount binary,
	itemCost binary,
	primary key (itemId)

);
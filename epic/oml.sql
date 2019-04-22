drop table if exists user;
drop table if exists cart;


create table user (
	userId binary(16) not null,
	userEmailAddress varchar(128),
	userPassword varchar(128),
	primary key(userId)
);
insert into user
(userId, userPassword)
	VALUE (UNHEX ('db58fdd75a2743e39a0d45397cd0dbc7'), 'bob');


update user set userPassword = 'erik' where userPassword ='bob';

delete from user where userPassword = 'ted';

create table cart (
	cartId     BINARY(16) not null,
	cartAmount BINARY(16) not null,
	cartUserId BINARY(16) not null,
	primary key (cartId),
	foreign key (cartUserId) references user(userId)
);
		INSERT Into cart set cartUserId = UNHEX('bd33447d4aed46efb5d07103c23e4070');
select cartId from cart where cartUserId = UNHEX('bd33447d4aed46efb5d07103c23e4070');
select cart.cartId from cart inner join user on user.userId = cartUserId where cartId = (UNHEX ('db58fdd75a2743e39a0d45397cd0dbc7');
select cartId from cart where cartAmount = 5;


/*
Write and execute an insert statement on a table with a foreign key from the original table.
Write and execute a select statement for a row using its primary key as the selector.
Write and execute a select statement that incorporates both a where clause and an inner-join on both tables used in this assignment.
Write a select statement based of off DDC-Twitter that counts the number of likes for a specific tweet.
 */
insert into user
(userId, userEmailAddress, userPassword)
	values (UNHEX ('db58fdd75a2743e39a0d45397cd0dbc7'), 'bobjorge@gmail.com', 'bob');

insert into cart
(cartId, cartAmount, cartUserId)
values (UNHEX ('e94879a28dfd47fc93b444972dff4bce'), 45854, (UNHEX ('db58fdd75a2743e39a0d45397cd0dbc7')));

insert into item
(itemId, itemAmount, itemCost)
values (UNHEX ('57dbf733ba9645f78c926dde9f29a394'), '54', '252');

update user set userPassword = 'erik' where userPassword ='bob';

delete from user where userPassword = 'ted';

		insert into cart (CartId, cartAmount, cartUserId)values (UNHEX('aeb0ecbfac0642c8a9626feb861bbd5f'), '500', (UNHEX ('db58fdd75a2743e39a0d45397cd0dbc7')));
select cartAmount from cart where cartAmount = 5001;
select cartId from cart where cartAmount = 5850;


/*
Write and execute an insert statement on a table with a foreign key from the original table.
Write and execute a select statement for a row using its primary key as the selector.
Write and execute a select statement that incorporates both a where clause and an inner-join on both tables used in this assignment.
Write a select statement based of off DDC-Twitter that counts the number of likes for a specific tweet.
 */
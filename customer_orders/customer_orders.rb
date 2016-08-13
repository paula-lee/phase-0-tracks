require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("order_parts.db")

#create table for customers

create_table_customers = <<-SQL
	CREATE TABLE IF NOT EXISTS customers(
		customerId INTEGER PRIMARY KEY,
		name VARCHAR(255),
		company VARCHAR(255),
		phoneNumber VARCHAR(20),
		billingAddress VARCHAR(255),
		shippingAddress VARCHAR(255)
	)
SQL
db.execute(create_table_customers)

create_table_parts = <<-SQL
	CREATE TABLE IF NOT EXISTS parts(
		partsId INTEGER PRIMARY KEY,
		name VARCHAR(255),
		description VARCHAR(255),
		quantity INT,
		price DECIMAL(20, 2)
	)
SQL
db.execute(create_table_parts)

create_table_orders = <<-SQL
	CREATE TABLE IF NOT EXISTS orders(
		ordersId INTEGER PRIMARY KEY,
		partsId INT,
		quantity INT,
		customerId INT,
		FOREIGN KEY (partsId) REFERENCES parts(partsId),
		FOREIGN KEY (customerId) REFERENCES customer(customerId)
	)
SQL

db.execute(create_table_orders)
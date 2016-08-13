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


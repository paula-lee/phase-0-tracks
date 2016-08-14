require 'sqlite3'
require 'faker'

# create table for customers
module Database_methods
	def self.initialize_db
		db = SQLite3::Database.new("order_parts.db")	
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
		if(db.execute("SELECT * FROM customers") == [])
			first_input = <<-SQL
				INSERT INTO customers (name, company, phoneNumber, billingAddress, shippingAddress) VALUES ("Jill Anderson", "ABC Oil", "281-555-1234", "123 Pine Street", "987 Southwest Fwy");
			SQL
			db.execute(first_input)
		end
		db.results_as_hash = true
		return db
	end

	def self.create_customer(db, name, company_name, phone_number, billing_address, shipping_address)
		db.execute("INSERT INTO customers (
			name,
			company,
			phoneNumber,
			billingAddress,
			shippingAddress
			) VALUES (?, ?, ?, ?, ?)",
			[name, company_name, phone_number, billing_address, shipping_address])
	end

	def self.create_parts_inventory(db, name, description, quantity, price)
		db.execute("INSERT INTO parts (
			name,
			description,
			quantity,
			price
			) VALUES (?, ?, ?, ?)",
			[name, description, quantity, price])
	end

	def self.create_orders(db, parts_id, quantity, customer_id)
		db.execute("INSERT INTO orders (
			partsId,
			quantity,
			customerId
			) VALUES (?, ?, ?)",
			[parts_id, quantity, customer_id])
	end

	def self.return_order_id(db, customer_id)
		order_id = db.execute("SELECT * FROM orders WHERE orders.customerId =?", [customer_id])
		printf("%-30s\n",
			"Your order ID is:".center(5)
			)
		order_id.each do |id|
			printf("%-5s\n" % [id[0]])
		end
	end

	def self.inventory(db)
		create_parts_inventory(db, "main board", "circuit board for the TVA 1000B", 1, 1000.00)
		create_parts_inventory(db, "FID capsule", "measures gas", 1, 175.00)
		create_parts_inventory(db, "cup filter", "tube filter", 5, 4.00)
		create_parts_inventory(db, "diaphragm", "inner and outer tube", 1, 20.00)
		create_parts_inventory(db, "battery tva", "power charge", 1, 175.00)
		create_parts_inventory(db, "pump valve", "connector to the diaphragm", 1, 17.00)
		create_parts_inventory(db, "end cap", "covers the FID connection", 1, 285.00)
	end

	def self.display_parts(db)
		parts = db.execute("SELECT * FROM parts")
		printf("%-8s | %-15s | %-35s | %-8s | %-10s\n",
			"Part ID".center(2),
			"Part Name".center(2),
			"Part Description".center(2),
			"Quantity".center(2),
			"Price".center(2)
		)
		parts.each do |part|
			printf("%-8s | %-15s | %-35s | %-8s | %-10s\n", part[0], part[1], part[2], part[3], part[4])
		end
	end

	def self.find_customer_id(db, name)
		customer_id = db.execute("SELECT * FROM customers WHERE name =?", [name])
		printf("%-30s\n",
			"Your customer ID is:".center(5)
			)
		customer_id.each do |id|
			printf("%-5s\n" % [id[0]])
		end
	end

	def self.print_order_details(db, ordersId)
		details = db.execute("SELECT customers.name, parts.name, orders.quantity
			FROM customers
			JOIN orders ON customers.customerId = orders.customerId
			JOIN parts ON parts.partsId = orders.partsId
			WHERE ordersId =?;", [ordersId])
		printf("%-20s | %-10s | %-15s\n",
			"Customer Name".center(2),
			"Parts Name".center(10),
			"Order Quantity".center(5)
			)
		details.each do |orders|
			printf("%-20s | %-10s | %-3d\n" % [orders[0], orders[1], orders[2]])
		end
	end
end


#driver code
# 49.times do
# 	create_customer(db, Faker::Name.name, Faker::Company.name, Faker::PhoneNumber.phone_number, Faker::Address.street_address, Faker::Address.street_address)
# end
# manually create parts
# create_parts_inventory(db, "main board", "circuit board for the TVA 1000B", 1, 1000.00)
# create_parts_inventory(db, "FID capsule", "measures gas", 1, 175.00)
# create_parts_inventory(db, "cup filter", "tube filter", 5, 4.00)
# create_parts_inventory(db, "diaphragm", "inner and outer tube", 1, 20.00)
# create_parts_inventory(db, "battery tva", "power charge", 1, 175.00)
# create_parts_inventory(db, "pump valve", "connector to the diaphragm", 1, 17.00)
# create_parts_inventory(db, "end cap", "covers the FID connection", 1, 285.00)

# create_orders(db, 1, 2, 1)
# display_parts(db)
# print_order_details(db, 1)



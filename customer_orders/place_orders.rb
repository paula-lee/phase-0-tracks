require_relative 'customer_orders'

def main_screen()
	puts "Welcome to Analyzer Parts Store"
	puts "--------------------------------------------------------------------------------------"
	puts "If you are a new customer, please choose option 1 first."
	puts "If you are a returning customer and forgot your ID, please choose option 2 first"
	puts "	as you will need it to order parts."
	puts "--------------------------------------------------------------------------------------"
	puts "Please choose an option:"
	puts "1 - New Customer"
	puts "2 - Forgot Customer ID?"
	puts "3 - Order Parts"
	puts "4 - Order Details"
	puts "5 - Exit"
end

def inventory(db)
	Database_methods.inventory(db)
end

option = 0
main_screen()
option = gets.chomp.to_i
db = Database_methods.initialize_db()
inventory(db)
loop_status = true
while loop_status == true
	begin
		case option
		when 1
			puts "Welcome! If you could please fill out the information, so we can get you started: "
			puts "What is your name?"
			name = gets.chomp
			puts "What company do you work for?"
			company_name = gets.chomp
			puts "What is your phone number?"
			phone_number = gets.chomp
			puts "What is your billing address?"
			billing_address = gets.chomp
			puts "What is your shipping address?"
			shipping_address = gets.chomp
			puts "Thank you for your patience #{name}!"
			Database_methods.create_customer(db, name, company_name, phone_number, billing_address, shipping_address)
		when 2
			puts "What is your name?"
			name = gets.chomp
			Database_methods.find_customer_id(db, name)
		when 3
			Database_methods.display_parts(db)
			puts "What part would you like to order? Please input the Part ID"
			parts_id = gets.chomp.to_i
			puts "How many do you want?"
			quantity = gets.chomp.to_i
			puts "What is your customer ID?"
			customer_id = gets.chomp.to_i
			Database_methods.create_orders(db, parts_id, quantity, customer_id)
			Database_methods.return_order_id(db, customer_id)
		when 4
			puts "What is your order id number?"
			order_id = gets.chomp.to_i
			Database_methods.print_order_details(db, order_id)
			Database_methods.total_cost(db, order_id)
		end 
		puts "Back to main menu type: 0"
		option = gets.chomp.to_i
		main_screen()
		option = gets.chomp.to_i
		if option == 5
			loop_status = false
		end
	end
	
end until option == 5
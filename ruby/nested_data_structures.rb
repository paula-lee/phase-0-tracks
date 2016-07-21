mall = {
	basement_floor: {
		restaurants: [
			"ChickFila",
			"McDonald's",
			"TGIF",
			"La Madeleine"
		],
		stores: [
			"Foot Locker",
			"Sanrio"
		],
		skating_rink: {}
	},
	first_floor: {
		department_store: {
			nordstrom: [
				"Mens",
				"Womens",
				"Children",
				"Home"
			],
			macys: [
				"Womens",
				"Home"
			]
		},

	},
	second_floor:{
		stores: [
			"Sephora",
			"Lids",
			"Apple",
			"Disney"
		],

		restaurants: [
			"The Cheesecake Factory",
			"Peli Peli"
		]
	}
}


puts mall[:basement_floor][:restaurants][0]
#should return ChickFila
puts mall[:basement_floor][:stores][1]
#should return Sanrio

mall[:basement_floor][:skating_rink][:skates_available] = 15
#added a key/value into empty hash
puts mall[:basement_floor][:skating_rink]
#should return :skates_available => 15

puts mall[:first_floor][:department_store][:nordstrom][3]
#should return Home

mall[:first_floor][:department_store][:macys].push("Mens")
#added a string value into an array
puts mall[:first_floor][:department_store][:macys].inspect
#should return ["Womens", "Home", "Mens"]

puts mall[:second_floor][:restaurants][1]
#should return Peli Peli


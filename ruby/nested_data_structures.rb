classroom = {
	equipment: {
		chairs: {
			total_chairs: 20,
			total_functional_chairs:19
		},
		tables: {
			total_tables:20,
			total_functional_tables:18
		},
		others: ["whiteboard"]
	},
	stationary: [
		"marker",
		"eraser"
	]
}

p classroom[:equipment][:chairs]
classroom[:equipment][:others].push("projector")
p classroom[:equipment][:others]
p classroom[:equipment][:tables][1]
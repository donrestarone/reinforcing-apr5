information = { data: { rooms: 
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

def retreive_data(information)
	information.each do |key, value|
		information[key]
	end 

end 

room = information[:data]

puts room 
puts 
puts 

rooms = room[:rooms]

puts rooms
puts rooms.class
capacity201 = rooms[0]

puts capacity201


information = { data: { rooms: 
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 1, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

room = information[:data]

# puts room 
# puts 
# puts 

rooms = room[:rooms]

# puts rooms
# puts rooms.class
# capacity201 = rooms[0]

# puts capacity201


 def retreive_data(information)
	information[:data][:events].each do |objects|  #looking into the hash argument and selecting key :data and selecting :events which is an array of hashes
		if objects[:room_id] == 1  #to find events that are pointing to room 201
			
			if  objects[:attendees] > information[:data][:rooms][0][:capacity] #back out to the top level and go in the direction of room capacity
				p "not enough space "
			else
				p "ok!"

			end 

		else 
			p "not in room 201"
		end 

	end 

end 

retreive_data(information)



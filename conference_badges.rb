def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  idx = 0
  message_array = []

  while idx < name_array.length
    message_array << badge_maker(name_array[idx])
    idx += 1
  end

  return message_array
end

def assign_rooms(speakers)
  room_assignments = []
  speakers.each_with_index do |speaker, index|
    room_assignments << "Hello, #{speakers[index]}! You'll be assigned to room #{index + 1}!"
  end

  return room_assignments
end

def printer(attendees)
  batch_badge_creator(attendees).each do |message|
    puts message
  end

  assign_rooms(attendees).each do |room_assignment|
    puts room_assignment
  end
end

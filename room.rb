class Room

attr_reader :name # :guests

def initialize(name)
  @name = name
  @song_list = []
  @guest_list = []
  # @guests = guests
end


def add_to_song_list(guest)
  @song_list.push(guest)
  p @song_list
end

def song_list_length()
  @song_list.length()
end

def add_to_guest_list(guest)
  @guest_list.push(guest)
  p @guest_list
end

def guest_list_length()
  @guest_list.length()
end





end

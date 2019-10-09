class House

  attr_reader :price, :address, :rooms

  def initialize(price, address)
    # String to integer
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.select |room|
    category == room.category
  end
end

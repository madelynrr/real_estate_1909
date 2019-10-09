class House

  attr_reader :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def price
    @price.split('$')[1].to_i
  end

  def rooms_from_category(category)
    @rooms.find_all { |room| category == room.category}
  end

  def area
    total_area = 0
    @rooms.each do |room|
      total_area += room.area
    end
    total_area
  end

  def price_per_square_foot
    (price.to_f / area).round(2)
  end
end

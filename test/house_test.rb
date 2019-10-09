require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test

    def setup
      @room_1 = Room.new(:bedroom, 10, 13)
      @room_2 = Room.new(:bedroom, 11, 15)
      @house = House.new("$400000", "123 sugar lane")
    end

    def test_it_exists
      assert_instance_of House, @house
    end

    def test_rooms
      assert_equal [], @house.rooms
    end

    def test_add_room
      @house.add_room(@room_1)
      @house.add_room(@room_2)
      assert_equal [@room_1, @room_2], @house.rooms
    end
end

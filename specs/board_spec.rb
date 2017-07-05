require('minitest/autorun')
require('minitest/rg')
require_relative('../board.rb')

class TestBoard < Minitest::Test

  def setup
    @snakes_ladders = { 2 => 2, 10 => -5}
    @board = Board.new(15, @snakes_ladders)
  end

  def test_new_board_has_size
    assert_equal(15, @board.state.length)
  end

  def test_set_snakes_and_Ladders
    assert_equal(-5, @board.state[10])
  end

end
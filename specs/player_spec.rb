require('minitest/autorun')
require('minitest/rg')
require_relative('../player')

class TestPlayer < MiniTest::Test

  def setup
    @player = Player.new
  end

  def test_create_player
    assert_equal(Player, @player.class)
  end

  def test_can_move_forwards
    @player.move(5)
    assert_equal(5, @player.position)
  end

  def test_can_move_backwards
    @player.move(10)
    @player.move(-5)
    assert_equal(5, @player.position)
  end

end
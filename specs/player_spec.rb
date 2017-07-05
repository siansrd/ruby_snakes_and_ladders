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

end
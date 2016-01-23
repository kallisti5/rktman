require_relative "test_helper"

require 'rktman'

class BaseTest < Minitest::Test
  def test_init
    refute_nil nil
    refute_nil RktMan.new
  end
end

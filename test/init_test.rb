require_relative "test_helper"

require 'rktman'

class BaseTest < Minitest::Test
  def test_init
    refute_nil RktMan.new
  end

  def test_default_host
    rkt = RktMan.new
    refute_nil rkt.host
  end

  def test_default_port
    rkt = RktMan.new
    refute_nil rkt.port
  end
end

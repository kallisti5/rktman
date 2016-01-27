require "rktman/version"

require "api"
require "api_services"

require "pp"

class RktMan
  attr_accessor :host, :port

  def initialize
    # set defaults
    @host = "localhost"
    @port = 15441
  end

  def version
    stub = V1alpha::PublicAPI::Stub.new("#{@host}:#{@port}", :this_channel_is_insecure)
    request = V1alpha::Info.new()
    response = stub.get_info(request)
    response.info['rkt_version']
  end
end

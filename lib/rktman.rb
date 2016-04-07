require "rktman/version"

require "api"
require "api_services"

require "pp"

class RktMan
  attr_accessor :host, :port

  def initialize(host = "localhost", port = 15441)
    @host = host
    @port = port
    @stub = V1alpha::PublicAPI::Stub.new("#{@host}:#{@port}", :this_channel_is_insecure)
  end

  def version
    request = V1alpha::Info.new()
    response = @stub.get_info(request)
    response.info['rkt_version']
  end

  def network
    request = V1alpha::Network.new()
    pp request
    response = @stub.get_response(request)
    pp response
  end
end

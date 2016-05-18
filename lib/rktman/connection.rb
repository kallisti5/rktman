require 'api'
require 'api_services'

require 'pp'

module RktMan
  class Connection
    attr_accessor :endpoint, :port

    def initialize(attributes = {})
      @endpoint = attributes.fetch(:endpoint, "localhost")
      @port = attributes.fetch(:port, 15441)
      @stub = V1alpha::PublicAPI::Stub.new("#{@endpoint}:#{@port}", :this_channel_is_insecure)
    end
    
    def version
      request = V1alpha::Info.new()
      response = @stub.get_info(request)
      response.info['rkt_version']
    end
    
    def network
      request = V1alpha::Network.new()
      pp request
      response = @stub.get_network(request)
      pp response
    end
  end
end

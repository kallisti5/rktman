require 'api'
require 'api_services'

module RktMan
  class Connection
    attr_accessor :endpoint, :port
    attr_accessor :stub
      # for debugging

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

    def images
      request = V1alpha::Image.new()
      @stub.list_images(request).images.map {|attr| RktMan::Image.new(attr)}
    end
  end
end

require "rktman/version"

require "api"
require "api_services"

class RktMan
  def version
    stub = V1alpha::PublicAPI::Stub.new('localhost:15441', :this_channel_is_insecure)
    info = V1alpha::Info.new()
    stub.get_info(info)
  end
end

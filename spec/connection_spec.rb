require 'spec_helper'

describe RktMan::Connection do
  it 'can be created' do
    api = RktMan::Connection.new
    expect(api).not_to be_nil
  end
  it 'endpoint can be specified' do
    endpoint = "bull.com"
    api = RktMan::Connection.new({endpoint: endpoint})
    expect(api.endpoint).to be endpoint
  end
  it 'port can be specified' do
    port = 12345
    api = RktMan::Connection.new({port: port})
    expect(api.port).to be port
  end
  it 'can query api server version' do
    api = RktMan::Connection.new()
    expect(api.version).not_to be_nil
  end
end

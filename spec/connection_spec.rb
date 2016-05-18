require 'spec_helper'

describe RktMan::Connection do
  it 'can be created' do
    api = RktMan::Connection.new
    expect(api).not_to be_nil
  end
  it 'endpoint can be specified' do
    endpoint = "https://bull.com"
    api = RktMan::Connection.new({endpoint: endpoint})
    expect(api.endpoint).to be endpoint
  end
  it 'can query api server version' do
    api = RktMan::Connection.new()
    expect(api.version).not_to be_nil
  end
end

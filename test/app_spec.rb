ENV['APP_ENV'] = 'test'

require './app.rb'
require 'rspec'
require 'rack/test'

RSpec.describe 'App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "Responds with correct message" do
    get '/'
    expect(last_response).to be_ok
    expect(JSON.parse(last_response.body)).to eq({ "message" => "Test all the things, again!", "timestamp" => Time.now.to_i })
  end
end

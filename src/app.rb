require "sinatra"
require "sinatra/json"

set :bind, '0.0.0.0'
set :port, ENV['PORT'] || 4567

get '/' do
  json :message => 'Test all the things, again!',
       :timestamp => Time.now.to_i
end

# myapp.rb
require 'sinatra'
require 'sinatra/reloader'

set :bind, '0.0.0.0'

get '/' do
  "Hello world! I'm using reloader now."
end

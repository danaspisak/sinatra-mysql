# myapp.rb
require 'mysql2'
require 'sinatra'
require 'sinatra/reloader'
require 'pp'



set :bind, '0.0.0.0'

get '/' do
  "Hello world! I'm using reloader now."
end
get '/db' do

  client = Mysql2::Client.new(:host => "db",
    :username => "root",
    :password => "root",
    :database => "db_legacy")
  res = Array.new
  results = client.query("SELECT * FROM users", :as => :array)
  results.each do |row|
    res.push(row)
  end
  return res.to_s
end

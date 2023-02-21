require 'sinatra'

set :port, ENV["PORT"] || 3333
set :bind, '0.0.0.0'

get '/' do
    'Hello World!'
end
require 'sinatra'
require 'sinatra/cookies'
require 'sinatra/reloader'

set :cookie_options, { domain: 'cookie.localhost' }

get '/' do
  cookies[:test] = 'foo'
  'Set Cookie!'
end

require "sinatra"
require "sinatra/link_header"
require "sinatra/reloader" if development?

enable :static

get "/" do
  @profiles = [
    # TODO: gather a few profiles
  ]

  erb :index
end

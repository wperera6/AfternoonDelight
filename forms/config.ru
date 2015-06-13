require 'sinatra/base'
require 'pry'

class App < Sinatra::Base
 post '/cars' do
 binding.pry
 end
end

#keep form separate from form
#were writing our client and our server
#basically two apps
#anything set in forms will be in params???
#sinatra now knows about our form
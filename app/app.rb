require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Hello world"
  end

  get '/bookmarks' do 
    @bookmarks = Bookmarks.all
    erb :bookmarks
  end 

end
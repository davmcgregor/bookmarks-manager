require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Hello world"
  end

  get '/bookmarks' do     
    @bookmarks = Bookmark.all
    erb :bookmarks
  end 

  get '/bookmarks/new' do
    erb :new
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
  end

end
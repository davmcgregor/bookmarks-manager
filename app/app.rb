require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  enable :sessions, :method_override

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
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  get '/bookmarks/delete' do
    erb :new
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

end
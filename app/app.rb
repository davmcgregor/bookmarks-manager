require 'sinatra/base'
require 'sinatra/flash'
require 'uri'
require './lib/bookmark.rb'
require './lib/comment.rb'
require './database_connection_setup.rb'
require './lib/tag.rb'
require './lib/bookmark_tag.rb'
require './lib/user.rb'


class BookmarkManager < Sinatra::Base
  enable :sessions, :method_override
  register Sinatra::Flash

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @user = User.find(id: session[:user_id])     
    @bookmarks = Bookmark.all
    erb :'bookmarks/bookmarks'
  end 

  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    user = User.create(email: params['email'], password: params['password'])
    session[:user_id] = user.id
    redirect '/bookmarks'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    flash[:notice] = "You must submit a valid URL." unless Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  get '/bookmarks/:id/update' do
    @bookmark = Bookmark.find(id: params[:id])
    erb :"bookmarks/update"
  end

  patch '/bookmarks/:id' do
    Bookmark.update(id: params[:id], title: params[:title], url: params[:url])
    redirect('/bookmarks')
  end

  get '/bookmarks/:id/comments/new' do
    @bookmark_id = params[:id]
    erb :'comments/new'
  end

  post '/bookmarks/:id/comments' do
    Comment.create(bookmark_id: params[:id], text: params[:comment])
    redirect '/bookmarks'
  end

  get '/bookmarks/:id/tags/new' do
    @bookmark_id = params[:id]
    erb :'/tags/new'
  end

  post '/bookmarks/:id/tags' do
    tag = Tag.create(content: params[:tag])
    BookmarkTag.create(bookmark_id: params[:id], tag_id: tag.id)
    redirect '/bookmarks'
  end

  get '/tags/:id/bookmarks' do
    @tag = Tag.find(id: params[:id])
    erb :'tags/index'
  end
end
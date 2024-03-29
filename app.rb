require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base 
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do 
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  get '/bookmarks/new' do
    erb :"/bookmarks/new"
  end

  get '/test' do
    erb(:test)
  end

  post '/bookmarks' do
    p params
    Bookmark.create(params[:website])
    # website = params['website']
    # connection = PG.connect(dbname: 'bookmark_manager_tests')
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('#{website}')")
    redirect '/bookmarks'
  end

  run! if app_file == $0
end





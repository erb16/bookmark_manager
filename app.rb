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

  get '/new' do
    erb(:new)
  end


  post '/bookmarks' do
    Bookmark.create(website: params[:website])
    # website = params['website']
    # connection = PG.connect(dbname: 'bookmark_manager_tests')
    # connection.exec("INSERT INTO bookmarks (url) VALUES ('#{website}')")
    redirect '/bookmarks'
  end

  run! if app_file == $0
end





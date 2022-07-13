require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base 
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do 
    erb(:bookmarks)
  end

  get '/your_bookmarks' do
    
    p ENV

    @bookmarks = Bookmark.all
    erb(:your_bookmarks)
  end


  run! if app_file == $0
end





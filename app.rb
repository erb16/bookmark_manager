require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base 
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do 
    erb(:bookmarks)
  end

  get '/your_bookmarks' do
  @all_bookmarks = ["www.eBay.co.uk " , "www.Facebook.co.uk " , "www.Instagram.co.uk"]
  erb(:your_bookmarks)
  end


  run! if app_file == $0
end





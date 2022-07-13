# Inside ./spec/bookmark_spec.rb

describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all
  
      expect(bookmarks).to include "http://www.askjeeves.com"
      expect(bookmarks).to include "http://www.twitter.com"
      expect(bookmarks).to include "http://www.google.com"
      expect(bookmarks).to include "http://www.makersacademy.com"
    end
  end
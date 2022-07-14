feature 'Viewing bookmarks' do
   scenario 'A user visits the homepage' do 
        visit('/')
        expect(page).to have_content "Bookmark Manager"
    end
end

describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.example.org')
  
      expect(Bookmark.all).to include 'http://www.example.org'
    end
  end
  
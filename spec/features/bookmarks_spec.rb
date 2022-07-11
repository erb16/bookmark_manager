feature 'Viewing bookmarks' do
   scenario 'A user visits the homepage' do 
        visit('/')
        expect(page).to have_content "Bookmark Manager"
    end
end
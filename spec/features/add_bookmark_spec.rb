feature 'Adding bookmarks' do
  scenario 'A user adds a bookmark to Bookmark Manager' do 
       visit('new')
       fill_in('website', with: 'www.favwebsite.co.uk')
       click_button('Submit')
       expect(page).to have_content "www.favwebsite.co.uk"
   end
end
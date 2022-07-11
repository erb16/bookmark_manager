feature 'Viewing Bookmarks' do
    scenario 'A user can see bookmarks' do
        visit('/your_bookmarks')
        expect(page).to have_content "www.eBay.co.uk"
        expect(page).to have_content "www.Facebook.co.uk"
        expect(page).to have_content "www.Instagram.co.uk"
    end
end

describe '.create' do
  it 'creates a new bookmark' do
    Bookmark.create(website: 'http://www.example.org')

    expect(Bookmark.all).to include 'http://www.example.org'
  end
end

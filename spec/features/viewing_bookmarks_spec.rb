feature 'viewing bookmarks' do 
  scenario 'should be able to view bookmarks in /bookmarks' do 
    visit "/bookmarks"
    expect(page).to have_content "google.com"
  end 
end 
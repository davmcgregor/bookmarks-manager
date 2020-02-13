feature 'validating new bookmarks' do
  scenario 'check URLs submitted to Bookmark Manager are valid URLs' do
    visit 'bookmarks/new'
    fill_in('url', with: 'wwww.badurl.')
    fill_in('title', with: 'Bad Url')
    click_button('Submit')

    expect(page).to have_content "You must submit a valid URL"
    expect(page).not_to have_content('Bad Url')
  end
end

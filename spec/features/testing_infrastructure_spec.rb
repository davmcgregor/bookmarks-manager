feature 'testing infrastructure' do
  scenario 'prints a message' do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end
end

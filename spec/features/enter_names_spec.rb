feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Caxul'
    fill_in :player_2_name, with: 'Bejlo'
    click_button 'Submit'
    expect(page).to have_content 'Caxul vs. Bejlo'
  end
end
feature 'Switch turns' do
  scenario 'seeing the current turn at the start of the game' do
    sign_in_and_play
    expect(page).to have_content "Caxul's turn"
  end

  scenario 'seeing the current turn after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content "Caxul's turn"
    expect(page).to have_content "Bejlo's turn"
  end  
end
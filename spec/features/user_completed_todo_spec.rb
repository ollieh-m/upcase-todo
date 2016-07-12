require 'rails_helper'

feature 'User completed todo' do
  scenario 'successfully' do
    sign_in
    create_todo('Buy milk')
    click_on 'Mark complete'
    expect(page).to have_completed_todo('Buy milk')
  end
end
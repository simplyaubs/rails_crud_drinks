require 'spec_helper'

feature 'CRUD favorite drinks' do
  scenario 'User can create a list of drinks' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a drink'
    fill_in 'Brand', with: 'Coke'
    fill_in 'Flavor', with: 'Cherry'
    click_on 'Add drink'
    expect(page).to have_content 'Coke'
    expect(page).to have_content 'Cherry'
  end
end
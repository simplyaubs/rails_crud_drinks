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

  scenario 'User can update a drink' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a drink'
    fill_in 'Brand', with: 'Coke'
    fill_in 'Flavor', with: 'Cherry'
    click_on 'Add drink'
    expect(page).to have_content 'Coke'
    expect(page).to have_content 'Cherry'
    click_on 'Coke'
    click_on 'Edit'
    fill_in 'Brand', with: 'Sprite'
    fill_in 'Flavor', with: 'Lemon'
    click_on 'Update drink'
    expect(page).to have_content 'Sprite'
    expect(page).to have_content 'Lemon'
    expect(page).to_not have_content 'Coke'
    expect(page).to_not have_content 'Cherry'
  end

  scenario 'User can delete a drink' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a drink'
    fill_in 'Brand', with: 'Coke'
    fill_in 'Flavor', with: 'Cherry'
    click_on 'Add drink'
    expect(page).to have_content 'Coke'
    expect(page).to have_content 'Cherry'
    click_on 'Coke'
    click_on 'Delete drink'
    expect(page).to_not have_content 'Coke'
    expect(page).to_not have_content 'Cherry'
  end
end
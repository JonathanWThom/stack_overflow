require 'rails_helper'

describe 'the create a user process' do
  it 'will create a user' do
    visit new_user_path
    fill_in 'Name', :with => 'User'
    fill_in 'Email', :with => 'email@email.com'
    fill_in 'Password', :with => '1234'
    fill_in 'Password confirmation', :with => '1234'
    click_on 'Sign Up'
    click_link 'Log In'
    fill_in 'Email', :with => 'email@email.com'
    fill_in 'Password', :with => '1234'
    click_on 'Log in'
    expect(page).to have_content('User')
  end
  it 'will fail to create a user' do
    visit new_user_path
    click_on 'Sign Up'
    expect(page).to have_content('There was a problem')
  end
end

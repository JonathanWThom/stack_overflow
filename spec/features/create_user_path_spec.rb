require 'rails_helper'

describe 'the create a user process' do
  it 'will log a user in' do
    user = create(:user)
    visit log_in_path
    fill_in 'Email', :with => 'test@test.com'
    fill_in 'Password', :with => '1234'
    click_on 'Log in'
    expect(page).to have_content('Log Out')
  end
end

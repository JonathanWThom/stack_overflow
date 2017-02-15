require 'rails_helper'


describe "creates question by specific user" do
  before() do
    user = create(:user)
    visit log_in_path
    fill_in 'Email', :with => 'test@test.com'
    fill_in 'Password', :with => '1234'
    click_on 'Log in'
  end

  it 'will add a new question' do
    visit new_question_path
    fill_in "Content", :with => 'Question Content'
    click_on "Submit"
    expect(page).to have_content('Question Content')
  end

  it 'will upvote on a question' do
    question = create(:question)
    visit question_path(question)
    click_link 'Upvote'
    expect(page).to have_content(1)
  end

  it 'will downvote on a question' do
    question = create(:question)
    visit question_path(question)
    click_link 'Downvote'
    expect(page).to have_content(-1)
  end

  it 'will redirect if current user is nil' do
    visit log_out_path
    visit new_question_path
    expect(page).to_not have_content('Content')
  end

  it 'will fail to create a question' do
    visit new_question_path
    click_on "Submit"
    expect(page).to have_content('There was a problem with your submission.')
  end

end

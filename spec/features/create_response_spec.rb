require 'rails_helper'


describe "can work with response model" do
  before() do
    user = create(:user)
    visit log_in_path
    fill_in 'Email', :with => 'test@test.com'
    fill_in 'Password', :with => '1234'
    click_on 'Log in'
    @question = create(:question)
  end
  it "can create a new response for a question" do
    visit question_path(@question)
    fill_in 'Content', :with => "This is a test"
    click_on "Submit"
    expect(page).to have_content("This is a test")
  end
  it "can upvote a response" do
    response = create(:response, question_id: @question.id)
    visit question_path(@question)
    click_link "Upvote Response"
    expect(page).to have_content(1)
  end
  it "can downvote a response" do
    response = create(:response, question_id: @question.id)
    visit question_path(@question)
    click_link "Downvote Response"
    expect(page).to have_content(-1)
  end
end

FactoryGirl.define do
  factory :question, class: Question do
    user
    content 'This is a test'
  end
end

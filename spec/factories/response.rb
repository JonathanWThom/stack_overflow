FactoryGirl.define do
  factory :response, class: Response do
    user
    question
    content 'This is a response test'
  end
end

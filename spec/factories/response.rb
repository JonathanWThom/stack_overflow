FactoryGirl.define do
  factory :response, class: Response do
    user_id 1
    question_id 1
    content 'This is a response test'
  end
end

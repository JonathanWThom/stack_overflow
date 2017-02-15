FactoryGirl.define do
  factory :user, class: User do
    name 'Test'
    email 'test@test.com'
    password '1234'
    password_confirmation '1234'
  end
  # factory :user_authenticate, class: User do
  #   user = create(:user)
  #   user = User.authenticate(email: user.email, password: user.password)
  # end
end

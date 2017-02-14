require 'rails_helper'

describe User do
  it {should validate_presence_of :name}
  it {should validate_presence_of :email}
  it {should validate_confirmation_of :password}

  describe '.authenticate' do
    it 'will authenticate and log in a user' do
      user1 = User.create(name: 'User', email: 'email.com', password: '1234')
      expect(User.authenticate(user1.email, user1.password)).to eq(user1)
    end
  end

  describe '#encrypt_password' do

  end

end

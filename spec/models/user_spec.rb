require 'rails_helper'

RSpec.describe User, type: :model do
  context 'When I create a user' do
    it 'should validate an email address' do
      user1 = User.new(email: 'TheAustinMunro@gmail.com')
      user2 = User.new(email: 'FakeEmailAddress')
      user3 = User.new(email: 'TheAustinMunro@gmail.com')
      expect(user1.validate_email).to eq(true)
      expect{user2.validate_email}.to raise_error('InvalidEmailAddress')

      user1.save
      expect{user3.validate_email}.to raise_error('EmailAddressExists')
    end

    it 'should save the user to the database' do
      User.create(email: 'theaustinmunro@gmail.com')
      expect(User.all.length).to eq(1)
    end
  end
end

require 'test_helper'

class TestMicropostRepository < Test::Unit::TestCase
  setup do
    UserRepository.clear
  end

  test '.find_by' do
    user1 = UserFactory.create(email: 'user1@example.com')
    UserFactory.create(email: 'user2@example.com')

    assert { UserRepository.find_by(email: 'user1@example.com') == user1 }
  end
end

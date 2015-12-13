require 'test_helper'

class TestMicropost < Test::Unit::TestCase
  cleanup do
    UserRepository.clear
  end

  test 'can be initialised with attributes' do
    user = UserRepository.create(User.new(email: 'user@example.com', name: '山田太郎', password: 'password'))

    micropost = Micropost.new(content: 'Tweet', user_id: user.id)

    assert { micropost.content == 'Tweet' }
    assert { micropost.user_id == user.id }
  end
end

require 'test_helper'

class TestMicropostRepository < Test::Unit::TestCase
  test '.by_user' do
    user = UserRepository.create(User.new(email: 'user@example.com', name: '山田太郎'))
    microposts = [
      MicropostRepository.create(Micropost.new(content: 'Tweet1', user_id: user.id)),
      MicropostRepository.create(Micropost.new(content: 'Tweet2', user_id: user.id))
    ]

    assert { MicropostRepository.by_user(user).to_a == microposts }
  end
end

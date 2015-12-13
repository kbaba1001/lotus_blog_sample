require 'test_helper'
require_relative '../../../../apps/web/controllers/users/login'

class Web::Controllers::Users::TestLogin < Test::Unit::TestCase
  cleanup do
    UserRepository.clear
  end

  test 'can login' do
    user = UserRepository.create(User.new(
      email: 'user@example.com',
      password: 'password',
      name: '山田太郎'
    ))

    action = Web::Controllers::Users::Login.new
    params = {user: {email: 'user1@example.com', password: 'password'}}

    response = action.call(params)

    assert { response.first == 200 }
    assert { action.current_user == user }
  end
end

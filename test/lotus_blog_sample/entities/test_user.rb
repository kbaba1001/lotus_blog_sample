require 'test_helper'
require 'pp'

class TestUser < Test::Unit::TestCase
  test 'can be initialised with attributes' do
    user = User.new(email: 'user@example.com', name: '山田太郎', password: 'password')

    assert { user.email == 'user@example.com' }
    assert { user.name == '山田太郎' }
    assert { AuthLogic::Password.compare(user.password_digest, 'password') }
  end
end

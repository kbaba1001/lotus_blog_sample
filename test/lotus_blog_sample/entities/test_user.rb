require 'test_helper'

class TestUser < Test::Unit::TestCase
  test 'can be initialised with attributes' do
    user = User.new(email: 'user@example.com', name: '山田太郎')

    assert { user.email == 'user@example.com' }
    assert { user.name == '山田太郎' }
  end
end

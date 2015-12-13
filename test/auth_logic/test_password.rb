require 'test_helper'

class TestPassword < Test::Unit::TestCase
  test 'can hashing and compare' do
    password = 'password'

    hashed_password = AuthLogic::Password.hashing(password)

    assert AuthLogic::Password.compare(hashed_password, password)
  end
end

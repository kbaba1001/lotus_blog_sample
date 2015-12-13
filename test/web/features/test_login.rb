require 'features_helper'

# TODO feature test が動くようにする
class TestLogin < Test::Unit::TestCase
  test 'can login user' do
    user = UserRepository.create(User.new(
      email: 'user@example.com',
      password: 'password',
      name: '山田太郎'
    ))

    visit '/'

    within 'form#user-form' do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'password'

      click_button 'Login'
    end

    current_path.must_equal('/dashboard')
    assert page.has_content?('Dashboard')
  end
end

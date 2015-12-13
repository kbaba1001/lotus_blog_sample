require 'features_helper'

# TODO feature test が動くようにする
class TestLogin < Test::Unit::TestCase
  test 'can login user' do
    user = UserFactory.create(
      email: 'user@example.com',
      password: 'password',
    )

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

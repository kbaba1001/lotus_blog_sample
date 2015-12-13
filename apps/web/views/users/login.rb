module Web::Views::Users
  class Login
    include Web::View

    template 'users/login_form'

    def form
      form_for :user, routes.login_users_path do
        div class: 'input' do
          label :email
          text_field :email
        end
        div class: 'input' do
          label :password
          password_field :password
        end
        div class: 'controles' do
          submit 'Login'
        end
      end
    end
  end
end

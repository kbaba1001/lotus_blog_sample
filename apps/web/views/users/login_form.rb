module Web::Views::Users
  class LoginForm
    include Web::View

    def form
      form_for :user, routes.root_path do
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

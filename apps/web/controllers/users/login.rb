module Web::Controllers::Users
  class Login
    include Web::Action

    params do
      param :user do
        param :email,  presence: true
        param :password, presence: true
      end
    end

    def call(params)
      if params.valid? && (user = authenticate(params))
        warden = request.env['warden']
        warden.set_user(user, scope: :user)

        redirect_to '/dashboard'
      else
        # TODO 「ログインできませんでした」みたいなエラーメッセージを出したい
      end
    end

    private

    def authenticate(params)
      return unless user = UserRepository.find_by(email: params[:user][:email])

      if AuthLogic::Password.compare(user.password_digest, params[:user][:password])
        user
      else
        nil
      end
    end
  end
end

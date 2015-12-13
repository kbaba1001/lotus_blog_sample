module Web::Controllers::Users
  # warden.failure_app 用のアクション
  class AuthFailure
    include Web::Action

    def call(params)
      self.status = 401
      self.body = 'Authorization Failed'
    end
  end
end

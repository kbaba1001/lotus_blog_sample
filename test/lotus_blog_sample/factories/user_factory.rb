module UserFactory
  class << self
    def create(params = {})
      default_params = {
        email: 'user@example.com',
        password: 'password',
        name: '山田太郎',
      }

      UserRepository.create(User.new(default_params.merge(params)))
    end
  end
end

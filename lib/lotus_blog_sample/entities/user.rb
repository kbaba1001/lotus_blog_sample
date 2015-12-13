class User
  include Lotus::Entity

  attributes :name, :email, :password_digest

  def password=(unhashed_password)
    self.password_digest = AuthLogic::Password.hashing(unhashed_password)
  end
end

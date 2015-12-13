class User
  include Lotus::Entity

  attributes :name, :email, :password_digest
end

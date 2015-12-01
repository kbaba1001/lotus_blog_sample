collection :users do
  entity     User
  repository UserRepository

  attribute :id,   Integer
  attribute :email, String
  attribute :name, String
end

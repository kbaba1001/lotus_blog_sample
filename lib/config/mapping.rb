collection :users do
  entity     User
  repository UserRepository

  attribute :id,   Integer
  attribute :email, String
  attribute :name, String
end

collection :microposts do
  entity     Micropost
  repository MicropostRepository

  attribute :id, Integer
  attribute :content, String
  attribute :user_id, Integer
end

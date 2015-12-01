class MicropostRepository
  include Lotus::Repository

  class << self
    def by_user(user)
      query do
        where(user_id: user.id).asc(:id)
      end
    end
  end
end

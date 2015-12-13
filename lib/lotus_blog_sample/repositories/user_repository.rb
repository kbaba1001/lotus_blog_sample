class UserRepository
  include Lotus::Repository

  class << self
    def find_by(params)
      query {
        where(params).limit(1)
      }.first
    end
  end
end

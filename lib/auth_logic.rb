Dir["#{ __dir__ }/auth_logic/**/*.rb"].each { |file| require_relative file }

module AuthLogin
end

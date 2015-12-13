# Require this file for unit tests
ENV['LOTUS_ENV'] ||= 'test'

require_relative '../config/environment'
Dir["#{ __dir__ }/lotus_blog_sample/factories/*_factory.rb"].each { |file| require_relative file }
# require 'minitest/autorun'
require 'test/unit'

Lotus::Application.preload!

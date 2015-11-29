require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = Dir["test/**/test_*.rb"]
  # t.pattern = 'test/**/test*.rb'
  t.verbose = true
end

task default: :test

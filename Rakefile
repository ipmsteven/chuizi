require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.name = "test"
  t.libs << "test"
  t.test_files = Dir['test/*test*.rb']
  t.verbose = true
  t.description = "run Chuizi unit tests"
end

task :default => [:test]

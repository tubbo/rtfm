require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new :test

desc "Deploy the application to rtfm.teve.inc"
task :deploy do
  sh 'bundle exec cap deploy'
end

task :default => %w(test deploy)

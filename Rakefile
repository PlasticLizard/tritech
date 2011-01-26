require 'rubygems'
require 'rake'
require 'rake/testtask'

require File.expand_path('../lib/tritech/version', __FILE__)

desc 'Builds the gem'
task :build do
  sh "gem build tritech.gemspec"
end

desc 'Builds and installs the gem'
task :install => :build do
  sh "gem install tritech-#{Tritech::VERSION}"
end

desc 'Tags version, pushes to remote, and pushes gem'
task :release => :build do
  sh "git tag v#{Tritech::VERSION}"
  sh "git push origin master"
  sh "git push origin v#{Tritech::VERSION}"
  sh "gem push tritech-#{Tritech::VERSION}.gem"
end


Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
end

task :default => :test

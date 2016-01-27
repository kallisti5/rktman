require "rake/testtask"

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -I lib -r rktman.rb"
end

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

desc 'Default: run tests'
task :default => [:test]

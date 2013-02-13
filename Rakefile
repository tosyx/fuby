require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs.push "lib", "test/lib"
  t.test_files = FileList[ "test/fuby/**/to_proc.rb" ]
  t.ruby_opts = [ "-r minitest/spec", "-r minitest/autorun" ] # , "-r fuby"
  t.verbose = true
end

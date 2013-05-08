require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs.push "lib", "test/lib"
  t.test_files = FileList[ "test/fuby/**/*.rb" ]
  t.ruby_opts = [ "-r minitest/spec", "-r minitest/autorun" ] # , "-r fuby"
end

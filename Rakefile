# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"
require "standard/rake"
require "yard"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/test_*.rb"]
end

YARD::Rake::YardocTask.new(:yard) do |t|
  t.files = ["lib/**/*.rb", "exe/*.rb"]
  # t.options = ['--any', '--extra', '--opts']
  t.stats_options = ["--list-undoc"]
end

task default: %i[standard yard test]

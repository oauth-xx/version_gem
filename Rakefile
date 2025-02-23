# frozen_string_literal: true

require "bundler/gem_tasks"

require "version_gem"

begin
  require "rspec/core/rake_task"

  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
  task(:spec) do
    warn("RSpec is disabled")
  end
end

desc "alias test task to spec"
task test: :spec

begin
  require "reek/rake/task"

  Reek::Rake::Task.new do |t|
    t.fail_on_error = true
    t.verbose = false
    t.source_files = "{spec,spec_ignored,spec_orms,lib}/**/*.rb"
  end
rescue LoadError
  task(:reek) do
    warn("reek is disabled")
  end
end

begin
  require "yard-junk/rake"

  YardJunk::Rake.define_task
rescue LoadError
  task("yard:junk") do
    warn("yard:junk is disabled")
  end
end

begin
  require "yard"

  YARD::Rake::YardocTask.new(:yard)
rescue LoadError
  task(:yard) do
    warn("yard is disabled")
  end
end

begin
  require "rubocop/lts"
  Rubocop::Lts.install_tasks
rescue LoadError
  task(:rubocop_gradual) do
    warn("RuboCop (Gradual) is disabled")
  end
end

begin
  require "kettle-soup-cover"
  Kettle::Soup::Cover.install_tasks
rescue LoadError
  desc("alias coverage task to spec (coverage unavailable)")
  task(coverage: :spec)
end

begin
  require "gem_checksums"
  GemChecksums.install_tasks
rescue LoadError
  task("build:checksums") do
    warn("gem_checksums is not available")
  end
end

# coverage task will open coverage in browser locally
task default: %i[coverage rubocop_gradual:autocorrect yard yard:junk]

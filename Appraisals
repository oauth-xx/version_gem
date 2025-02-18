# frozen_string_literal: true

appraise "ruby-2-2" do
  gem "mutex_m", "~> 0.1.2"
  gem "stringio", "~> 0.0.2"
  # For Ruby 2.2 we have to use appraisal v2.2 as it is the last to support Ruby v2.2
  # but it doesn't have the remove_gem feature yet.
  # remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "ruby-2-3" do
  gem "mutex_m", "~> 0.1.2"
  gem "stringio", "~> 0.0.2"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "ruby-2-4" do
  gem "mutex_m", "~> 0.1.2"
  gem "stringio", "~> 0.0.2"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "ruby-2-5" do
  gem "mutex_m", "~> 0.2"
  gem "stringio", "~> 3.0"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "ruby-2-6" do
  gem "mutex_m", "~> 0.2"
  gem "stringio", "~> 3.0"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "ruby-2-7" do
  gem "mutex_m", "~> 0.2"
  gem "stringio", "~> 3.0"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "ruby-3-0" do
  gem "mutex_m", "~> 0.2"
  gem "stringio", "~> 3.0"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "ruby-3-1" do
  gem "mutex_m", "~> 0.2"
  gem "stringio", "~> 3.0"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "ruby-3-2" do
  gem "mutex_m", "~> 0.2"
  gem "stringio", "~> 3.0"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "ruby-3-3" do
  gem "mutex_m", "~> 0.2"
  gem "stringio", "~> 3.0"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "ruby-3-4" do
  gem "mutex_m", "~> 0.2"
  gem "stringio", "~> 3.0"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

# Only run security audit on latest Ruby version
appraise "audit" do
  gem "mutex_m", "~> 0.2"
  gem "stringio", "~> 3.0"
  eval_gemfile "modular/audit.gemfile"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

# Only run coverage on latest Ruby version
appraise "coverage" do
  gem "mutex_m", "~> 0.2"
  gem "stringio", "~> 3.0"
  eval_gemfile "modular/coverage.gemfile"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

# Only run linter on latest Ruby version (but, in support of oldest supported Ruby version)
appraise "style" do
  gem "mutex_m", "~> 0.2"
  gem "stringio", "~> 3.0"
  eval_gemfile "modular/style.gemfile"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "ruby-head" do
  gem "mutex_m", ">= 0.2"
  gem "stringio", ">= 3.0"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "truffleruby-head" do
  gem "mutex_m", ">= 0.2"
  gem "stringio", ">= 3.0"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

appraise "jruby-head" do
  gem "mutex_m", ">= 0.2"
  gem "stringio", ">= 3.0"
  remove_gem "appraisal" # only present because it must be in the gemfile because we target a git branch
end

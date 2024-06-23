# frozen_string_literal: true

#### IMPORTANT #######################################################
# Gemfile is for local development ONLY; Gemfile is NOT loaded in CI #
####################################################### IMPORTANT ####

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }
git_source(:gitlab) { |repo_name| "https://gitlab.com/#{repo_name}" }

# Specify your gem's dependencies in sanitize_email.gemspec
gemspec

platform :mri do
  # Debugging
  gem "byebug", ">= 11"
end

# Coverage
gem "kettle-soup-cover", "~> 1.0", ">= 1.0.2"

# Linting
gem "rubocop-lts", "~> 0.1", ">= 0.1.1" # Linting for Ruby >= 1.8.7
gem "rubocop-packaging", "~> 0.5", ">= 0.5.2"
gem "rubocop-rspec", "~> 2.10"

# Quality
gem "reek", "~> 6.3"

# Documentation
gem "yard", "~> 0.9", ">= 0.9.34"
gem "yard-junk", "~> 0.0"

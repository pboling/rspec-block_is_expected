source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

group :test do
  ruby_version = Gem::Version.new(RUBY_VERSION)
  if ruby_version >= Gem::Version.new('2.1')
    gem 'rubocop', '~> 0.61.1'
    gem 'rubocop-rspec', '~> 1.30.0'
  end
  if ruby_version >= Gem::Version.new('2.0')
    gem 'byebug', '~> 11', :platform => :mri, :require => false
    gem 'pry', '~> 0', :platform => :mri, :require => false
    gem 'pry-byebug', '~> 3', :platform => :mri, :require => false
  end
  gem 'rspec-pending_for', '~> 0.1', :require => false
  gem 'simplecov', '~> 0', :require => false
end

# Specify your gem's dependencies in rspec-block_is_expected.gemspec
gemspec

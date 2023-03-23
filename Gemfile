source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

group :test do
  ruby_version = Gem::Version.new(RUBY_VERSION)
  if ruby_version >= Gem::Version.new('2.7')
    gem 'rubocop-lts', '~> 18.0'
    gem 'rubocop-md'
    gem 'rubocop-rake'
    gem 'rubocop-rspec', '~> 1.42'
  end
  if ruby_version >= Gem::Version.new('2.0')
    gem 'byebug', '~> 10', :platform => :mri, :require => false
    gem 'pry', '~> 0', :platform => :mri, :require => false
    gem 'pry-byebug', '~> 3', :platform => :mri, :require => false
  end
  gem 'simplecov', '~> 0', :require => false
end

# Specify your gem's dependencies in rspec-block_is_expected.gemspec
gemspec

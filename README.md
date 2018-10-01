# Rspec::BlockIsExpected

This gem does one very simple thing very well.  It allows you to use `block_is_expected` similarly to how you would use `is_expected` if a block was wrapping the subject.  Supports the same versions of Ruby that RSpec does, 1.8.7 - current ruby-head, as well as the JRuby equivalents.

```ruby
subject { Integer(nil) }
it('raises') { block_is_expected.to raise_error(TypeError) }
```

| Project                 |  AnonymousActiveRecord |
|------------------------ | ----------------------- |
| gem name                |  [rspec-block_is_expected](https://rubygems.org/gems/rspec-block_is_expected) |
| license                 |  [![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT) |
| download rank           |  [![Downloads Today](https://img.shields.io/gem/rd/rspec-block_is_expected.svg)](https://github.com/pboling/rspec-block_is_expected) |
| version                 |  [![Version](https://img.shields.io/gem/v/rspec-block_is_expected.svg)](https://rubygems.org/gems/rspec-block_is_expected) |
| dependencies            |  [![Depfu](https://badges.depfu.com/badges/272ce0df3bc6df5cbea9354e2c3b65af/count.svg)](https://depfu.com/github/pboling/rspec-block_is_expected?project_id=5614) |
| continuous integration  |  [![Build Status](https://travis-ci.org/pboling/rspec-block_is_expected.svg?branch=master)](https://travis-ci.org/pboling/rspec-block_is_expected) |
| test coverage           |  [![Test Coverage](https://api.codeclimate.com/v1/badges/fe504d4ab2fb77cecf7d/test_coverage)](https://codeclimate.com/github/pboling/rspec-block_is_expected/test_coverage) |
| maintainability         |  [![Maintainability](https://api.codeclimate.com/v1/badges/fe504d4ab2fb77cecf7d/maintainability)](https://codeclimate.com/github/pboling/rspec-block_is_expected/maintainability) |
| code triage             |  [![Open Source Helpers](https://www.codetriage.com/pboling/rspec-block_is_expected/badges/users.svg)](https://www.codetriage.com/pboling/rspec-block_is_expected) |
| homepage                |  [on Github.com][homepage], [on Railsbling.com][blogpage] |
| documentation           |  [on RDoc.info][documentation] |
| Spread ~♡ⓛⓞⓥⓔ♡~      |  [🌍 🌎 🌏][peterboling], [🍚][refugees], [➕][gplus], [👼][angellist], [🐛][topcoder], [:shipit:][coderwall], [![Tweet Peter](https://img.shields.io/twitter/follow/galtzo.svg?style=social&label=Follow)][twitter] |

If you only ever want to test subjects wrapped in blocks, and are comfortable with **losing** the standard `is_expected` behavior, see an alternative to this gem [here](https://github.com/christopheraue/ruby-rspec-is_expected_block/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-block_is_expected', group: :test
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-block_is_expected

## Configuration

There is no configuration needed if you your test suite loads the bundle group (e.g. `test`) that you added the gem to.

Otherwise, you may load it manually near the top of your `spec_helper.rb`, and it will self configure.
```ruby
require 'rspec/block_is_expected'
```

## Usage

The spec suite for this gem has some examples of usage, lightly edited here.

```ruby
RSpec.describe 'TestyMcTest' do
  context 'errors raised' do
    subject { Integer(nil) }
    it('can be tested') do
      # Where you used to have:
      # expect { subject }.to raise_error(TypeError)
      block_is_expected.to raise_error(TypeError)
    end
  end
  context 'execution' do
    let(:mutex) { Mutex.new }
    subject { mutex.lock }
    it('can change state') do
      expect(mutex.locked?).to eq(false)
      # Where you used to have:
      # expect { subject }.to_not raise_error
      block_is_expected.to_not raise_error
      expect(mutex.locked?).to eq(true)
    end
  end
  context 'changed state' do
    let(:mutex) { Mutex.new }
    subject { mutex.lock }
    it('can be tested') do
      # Where you used to have:
      # expect { subject }.to change { mutex.locked? }.from(false).to(true)
      block_is_expected.to change { mutex.locked? }.from(false).to(true)
    end
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Authors

[Peter H. Boling][peterboling] of [Rails Bling][railsbling] is the author.

## Contributors

See the [Network View](https://github.com/pboling/rspec-block_is_expected/network) and the [CHANGELOG](https://github.com/pboling/rspec-block_is_expected/blob/master/CHANGELOG.md)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
6. Create new Pull Request

Bug reports and pull requests are welcome on GitHub at https://github.com/pboling/anonymous_active_record. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the AnonymousActiveRecord project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/pboling/anonymous_active_record/blob/master/CODE_OF_CONDUCT.md).

## Versioning

This library aims to adhere to [Semantic Versioning 2.0.0][semver].
Violations of this scheme should be reported as bugs. Specifically,
if a minor or patch version is released that breaks backward
compatibility, a new version should be immediately released that
restores compatibility. Breaking changes to the public API will
only be introduced with new major versions.

As a result of this policy, you can (and should) specify a
dependency on this gem using the [Pessimistic Version Constraint][pvc] with two digits of precision.

For example in a `Gemfile`:

    gem 'rspec-block_is_expected', '~> 1.0', group: :test

or in a `gemspec`

    spec.add_development_dependency 'rspec-block_is_expected', '~> 1.0'

## Legal

* MIT License - See [LICENSE][license] file in this project [![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT) 

* Copyright (c) 2018 [Peter H. Boling][peterboling] of [Rails Bling][railsbling]

[semver]: http://semver.org/
[pvc]: http://guides.rubygems.org/patterns/#pessimistic-version-constraint
[documentation]: http://rdoc.info/github/pboling/rspec-block_is_expected/frames
[homepage]: https://github.com/pboling/rspec-block_is_expected
[blogpage]: http://www.railsbling.com/tags/rspec-block_is_expected/
[license]: LICENSE
[railsbling]: http://www.railsbling.com
[peterboling]: https://about.me/peter.boling
[refugees]: https://www.crowdrise.com/helprefugeeswithhopefortomorrowliberia/fundraiser/peterboling
[gplus]: https://plus.google.com/+PeterBoling/posts
[topcoder]: https://www.topcoder.com/members/pboling/
[angellist]: https://angel.co/peter-boling
[coderwall]: http://coderwall.com/pboling
[twitter]: http://twitter.com/galtzo

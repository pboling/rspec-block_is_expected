# Rspec::BlockIsExpected

<div id="badges">

[![CI Build][🚎dl-cwfi]][🚎dl-cwf]
[![Test Coverage][🔑cc-covi]][🔑cc-cov]
[![Maintainability][🔑cc-mnti]][🔑cc-mnt]
[![Depfu][🔑depfui]][🔑depfu]

[🚎dl-cwf]: https://github.com/pboling/rspec-block_is_expected/actions/workflows/current.yml
[🚎dl-cwfi]: https://github.com/pboling/rspec-block_is_expected/actions/workflows/current.yml/badge.svg

[comment]: <> ( 🔑 KEYED LINKS )

[🔑cc-mnt]: https://codeclimate.com/github/pboling/rspec-block_is_expected/maintainability
[🔑cc-mnti]: https://api.codeclimate.com/v1/badges/ca0a12604ecc19f5e76d/maintainability
[🔑cc-cov]: https://codeclimate.com/github/pboling/rspec-block_is_expected/test_coverage
[🔑cc-covi]: https://api.codeclimate.com/v1/badges/ca0a12604ecc19f5e76d/test_coverage
[🔑depfu]: https://depfu.com/github/pboling/rspec-block_is_expected?project_id=5865
[🔑depfui]: https://badges.depfu.com/badges/79867e590f063376f40b031a1447c215/count.svg

-----

[![Liberapay Patrons][⛳liberapay-img]][⛳liberapay]
[![Sponsor Me on Github][🖇sponsor-img]][🖇sponsor]

<span class="badge-buymeacoffee">
<a href="https://ko-fi.com/O5O86SNP4" target='_blank' title="Donate to my FLOSS or refugee efforts at ko-fi.com"><img src="https://img.shields.io/badge/buy%20me%20coffee-donate-yellow.svg" alt="Buy me coffee donation button" /></a>
</span>
<span class="badge-patreon">
<a href="https://patreon.com/galtzo" title="Donate to my FLOSS or refugee efforts using Patreon"><img src="https://img.shields.io/badge/patreon-donate-yellow.svg" alt="Patreon donate button" /></a>
</span>

</div>

[⛳liberapay-img]: https://img.shields.io/liberapay/patrons/pboling.svg?logo=liberapay
[⛳liberapay]: https://liberapay.com/pboling/donate
[🖇sponsor-img]: https://img.shields.io/badge/Sponsor_Me!-pboling.svg?style=social&logo=github
[🖇sponsor]: https://github.com/sponsors/pboling

This gem does ~~five~~, _three sir_, five things.

1. Provides `block_is_expected` to set expectations on the result of running the `subject` as a block.
2. Provides, via shared example groups, shortcut RSpec macros for setting an expectation on errors being raised (or not).
    ```ruby
    it_behaves_like "block_is_expected to not raise"
    it_behaves_like "block_is_expected to raise error", RuntimeError
    ```
3. Provides RSpec negated matchers that can be used with `block_is_expected`:
    ```ruby
    not_change
    not_raise_error
    ```
    And two others that are so generally useful I end up defining them on every project:
    ```ruby
    not_include
    not_eq
    ```

## Just show me the money

First, configure in your rspec helper, or similar:
```ruby
require "rspec/block_is_expected"
```

Then,

1. Custom expectation on result of subject as block
    ```ruby
    subject { Integer("1") }
    it("raises") { block_is_expected.to(not_raise_error) }
    ```
2. Subject will not raise an exception
    ```ruby
    subject { Integer("1") }
    it_behaves_like "block_is_expected to not raise"
    ```
3. Subject will raise an exception
    ```ruby
    subject { Integer(nil) }
    it_behaves_like "block_is_expected to raise error", TypeError
    ```

| Project                        | `bundle add rspec-block_is_expected --group test`                                                                                                                                                                                            |
|--------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| name, license, docs, standards | [![RubyGems.org][⛳️name-img]][⛳️gem] [![License: MIT][🖇src-license-img]][🖇src-license] [![RubyDoc.info][🚎yard-img]][🚎yard] [![SemVer 2.0.0][🧮semver-img]][🧮semver] [![Keep-A-Changelog 1.0.0][📗keep-changelog-img]][📗keep-changelog] |
| version & activity             | [![Gem Version][⛳️version-img]][⛳️gem] [![Total Downloads][🖇DL-total-img]][⛳️gem] [![Download Rank][🏘DL-rank-img]][⛳️gem]                                                                                                                  |
| dependencies                   | [![Depfu][🔑depfui]][🔑depfu]                                                                                                                                                                                                                |
| continuous integration         | [![CI Build][🚎dl-cwfi]][🚎dl-cwf] [![Heads][🖐hwfi]][🖐hwf] [![Style][🧮swfi]][🧮swf]                                                                                                                                                       |
| test coverage                  | [![Test Coverage][🔑cc-covi]][🔑cc-cov]                                                                                                                                                                                                      |
| maintainability                | [![Maintainability](https://api.codeclimate.com/v1/badges/ca0a12604ecc19f5e76d/maintainability)](https://codeclimate.com/github/pboling/rspec-block_is_expected/maintainability)                                                             |
| code triage                    | [![Open Source Helpers](https://www.codetriage.com/pboling/rspec-block_is_expected/badges/users.svg)](https://www.codetriage.com/pboling/rspec-block_is_expected)                                                                            |
| homepage                       | [on Github.com][homepage], [on Railsbling.com][blogpage]                                                                                                                                                                                     |
| `...` 💖                       | [![Liberapay Goal Progress][⛳liberapay-img]][⛳liberapay], [🧊][🧊berg], [🛖][🛖hut], [🧪][🧪lab], [🌏][aboutme], [👼][angellist], [⚗️][devto], [![Tweet @galtzo][followme]][twitter]                                                         |

<!--
The link tokens in the following sections should be kept ordered by the row and badge numbering scheme
-->

<!-- 1️⃣ name, license, docs -->
[⛳️gem]: https://rubygems.org/gems/rspec-block_is_expected
[⛳️name-img]: https://img.shields.io/badge/name-rspec--block__is__expected-brightgreen.svg?style=flat
[🖇src-license]: https://opensource.org/licenses/MIT
[🖇src-license-img]: https://img.shields.io/badge/License-MIT-green.svg
[🚎yard]: https://www.rubydoc.info/gems/rspec-block_is_expected
[🚎yard-img]: https://img.shields.io/badge/documentation-rubydoc-brightgreen.svg?style=flat
[🧮semver]: http://semver.org/
[🧮semver-img]: https://img.shields.io/badge/semver-2.0.0-FFDD67.svg?style=flat
[📗keep-changelog]: https://keepachangelog.com/en/1.0.0/
[📗keep-changelog-img]: https://img.shields.io/badge/keep--a--changelog-1.0.0-FFDD67.svg?style=flat

<!-- 2️⃣ version & activity -->
[⛳️version-img]: http://img.shields.io/gem/v/rspec-block_is_expected.svg
[🖇DL-total-img]: https://img.shields.io/gem/dt/rspec-block_is_expected.svg
[🏘DL-rank-img]: https://img.shields.io/gem/rt/rspec-block_is_expected.svg

[🖐hwf]: https://github.com/pboling/rspec-block_is_expected/actions/workflows/heads.yml
[🖐hwfi]: https://github.com/pboling/rspec-block_is_expected/actions/workflows/heads.yml/badge.svg
[🧮swf]: https://github.com/pboling/rspec-block_is_expected/actions/workflows/style.yml
[🧮swfi]: https://github.com/pboling/rspec-block_is_expected/actions/workflows/style.yml/badge.svg

If you only _ever_ want to test subjects wrapped in blocks, and are comfortable with **losing** the standard `is_expected` behavior, see an alternative to this gem [here](https://github.com/christopheraue/ruby-rspec-is_expected_block/).

## Ruby Compatibility
Supports the same versions of Ruby that RSpec does, 1.8.7 - current ruby-head,
as well as the JRuby equivalents.

## Installation

Add this line to your application's Gemfile:

```ruby
    gem "rspec-block_is_expected", :group => :test
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-block_is_expected

## Configuration

There is no configuration needed if you your test suite loads the bundle group (e.g. `test`) that you added the gem to.

Otherwise, you may load it manually near the top of your `spec_helper.rb`, and it will self configure.
```ruby
    require "rspec/block_is_expected"
```

### RSpec Matchers

`block_is_expected` can be used to chain expectations related to the block,
but `to_not` doesn't work with multiple expectations.
So negated matchers are required. A basic set of them are included with this gem, and can be loaded with:

```ruby
    require "rspec/block_is_expected/matchers/not"
```

This gives you the following matchers:
```ruby
    RSpec::Matchers.define_negated_matcher(:not_change, :change)
    RSpec::Matchers.define_negated_matcher(:not_include, :include)
    RSpec::Matchers.define_negated_matcher(:not_eq, :eq)
    RSpec::Matchers.define_negated_matcher(:not_raise_error, :raise_error)
```

#### Example

You have a module like this:

```ruby
    module MyTasks
      def my_rakelib
        Rake.add_rakelib("bananas")
      end
      module_function :my_rakelib
    end
```

You have a spec like this:

```ruby
    require "rake"

    RSpec.describe(MyTasks) do
      describe "my_rakelib" do
        subject(:my_rakelib) { described_class.my_rakelib }
        it "updates rakelib" do
          block_is_expected.to(not_raise_error &
            change { Rake.application.options.rakelib }.from(["rakelib"]).to(%w[rakelib bananas]))
        end
      end
    end
```

### Integration with RuboCop

You'll likely get the following linting error from `rubocop-rspec` if you use `block_is_expected.to ...`:
```
RSpec/NoExpectationExample: No expectation found in this example.
```

To fix it properly you need to register `block_is_expected` as an "expectation".  In your `.rubocop.yml`

```yml
inherit_gem:
  rspec-block_is_expected: rubocop.yml
```

## Usage

The spec suite for this gem has some examples of usage, lightly edited here.

```ruby
    RSpec.describe("TestyMcTest") do
      context "errors raised" do
        subject { Integer(nil) }
        it("can be tested") do
          # Where you used to have:
          # expect { subject }.to raise_error(TypeError)
          block_is_expected.to(raise_error(TypeError))
        end
      end
      context "execution" do
        let(:mutex) { Mutex.new }
        subject { mutex.lock }
        it("can change state") do
          expect(mutex.locked?).to(eq(false))
          # Where you used to have:
          # expect { subject }.to_not raise_error
          block_is_expected.to_not(raise_error)
          expect(mutex.locked?).to(eq(true))
        end
      end
      context "changed state" do
        let(:mutex) { Mutex.new }
        subject { mutex.lock }
        it("can be tested") do
          # Where you used to have:
          # expect { subject }.to change { mutex.locked? }.from(false).to(true)
          block_is_expected.to(change { mutex.locked? }.from(false).to(true))
        end
      end
    end
```

## Switch to `main` branch

We recently migrated from `master` to `main` as the default branch.  If this affected your local checkout:
```shell
git branch -m master main
git fetch origin
git branch -u origin/main main
git remote set-head origin -a
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Authors

* [Peter H. Boling][peterboling] of [Rails Bling][railsbling] is the author.

## Contributing

See [CONTRIBUTING.md][contributing].
[contributing]: https://gitlab.com/pboling/rspec-block_is_expected/-/blob/main/CONTRIBUTING.md

## Contributing

See [CONTRIBUTING.md][contributing].
[contributing]: https://gitlab.com/pboling/rspec-stubbed_env/-/blob/main/CONTRIBUTING.md

### Running Specs

The basic compatibility matrix:
```sh
appraisal install
appraisal rake test
```

Sometimes also:
```sh
BUNDLE_GEMFILE=gemfiles/vanilla.gemfile appraisal update
```

NOTE: This results in bad paths to the gemspec.
`gemspec path: "../../"` needs to be replaced with `gemspec :path => "../"` in each Appraisal gemfile.

Except, is unlikely to be possible to install all of the supported Rubies & Railsies in a single container...
See the various github action workflows for more inspiration on running certain oldies.

## Code of Conduct

Everyone interacting in the AnonymousActiveRecord project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct][conduct].

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

```ruby
gem "rspec-block_is_expected", "~> 1.0", :group => [:development, :test]
```

or in a `gemspec`

```ruby
spec.add_development_dependency("rspec-block_is_expected", "~> 1.0")
```

## Legal

* Copyright © 2018, 2020, 2023 - 2024 [Peter H. Boling][peterboling] of [Rails Bling][railsbling]

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

[aboutme]: https://about.me/peter.boling
[angellist]: https://angel.co/peter-boling
[blogpage]: http://www.railsbling.com/tags/rspec-block_is_expected/
[conduct]: CODE_OF_CONDUCT.md
[contributing]: CONTRIBUTING.md
[devto]: https://dev.to/galtzo
[followme]: https://img.shields.io/twitter/follow/galtzo.svg?style=social&label=Follow
[homepage]: https://github.com/pboling/rspec-block_is_expected
[license]: LICENSE.txt
[peterboling]: https://about.me/peter.boling
[pvc]: http://guides.rubygems.org/patterns/#pessimistic-version-constraint
[railsbling]: http://www.railsbling.com
[semver]: http://semver.org/
[twitter]: http://twitter.com/galtzo
[🧊berg]: https://codeberg.org/pboling
[🛖hut]: https://sr.ht/~galtzo/
[🧪lab]: https://gitlab.com/pboling
[⛳liberapay]: https://liberapay.com/pboling/donate
[⛳liberapay-img]: https://img.shields.io/liberapay/goal/pboling.svg?logo=liberapay

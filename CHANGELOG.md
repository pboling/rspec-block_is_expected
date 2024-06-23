# Changelog
All notable changes to this project since v1.0.3 will be documented in this file.

The format is based on [Keep a Changelog v1](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning v2](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Added
### Changed
### Fixed
### Removed

## [1.0.6] 2024-06-23 ([tag][1.0.6t])
### Added
- Security policy (SECURITY.md)
- Random ordering of test suite
- shared examples:
  - `block_is_expected to not raise`
  - `block_is_expected to raise error`
- Appraisals for testing on every Ruby supported by GHA (2.0 - 3.3)
- Signed release

## [1.0.5] - 2023-04-01 ([tag][1.0.5t])
### Added
- Structured gemfiles
- Rubocop with standard, gradual, & more
- Releases are now signed
- Releases now have checksums
### Changed
- TravisCI => GitHub Actions
- CODE_OF_CONDUCT.md upgraded to v2.0
- Moved from master to main default branch
### Fixed
- README Badges (CI status)

## [1.0.4] - 2023-03-23 ([tag][1.0.4t])
### Added
- Required ruby version in gemspec >= 1.8.7
  - not bumping major version, because this was already the de-facto minimum
### Changed
- Moved rubocop config to root
### Fixed
- documentation of rubocop config
- Copyright years

## [1.0.3] - 2023-03-23 ([tag][1.0.3t])
### Added
- negated matchers
- rubocop config

## [1.0.2] - 2018-10-03

## [1.0.1] - 2018-10-01

## 1.0.0 - 2018-10-01
### Added
- Initial Release

[Unreleased]: https://github.com/pboling/rspec-block_is_expected/compare/v1.0.6...HEAD
[1.0.6]: https://github.com/pboling/rspec-block_is_expected/compare/v1.0.5...v1.0.6
[1.0.6t]: https://github.com/pboling/rspec-block_is_expected/tags/v1.0.6
[1.0.5]: https://github.com/pboling/rspec-block_is_expected/compare/v1.0.4...v1.0.5
[1.0.5t]: https://github.com/pboling/rspec-block_is_expected/tags/v1.0.5
[1.0.4]: https://github.com/pboling/rspec-block_is_expected/compare/v1.0.3...v1.0.4
[1.0.4t]: https://github.com/pboling/rspec-block_is_expected/tags/v1.0.4
[1.0.3]: https://github.com/pboling/rspec-block_is_expected/compare/v1.0.2...v1.0.3
[1.0.3t]: https://github.com/pboling/rspec-block_is_expected/tags/v1.0.3
[1.0.2]: https://github.com/pboling/rspec-block_is_expected/compare/v1.0.1...v1.0.2
[1.0.1]: https://github.com/pboling/rspec-block_is_expected/compare/v1.0.0...v1.0.1

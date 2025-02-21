# VersionGem

[![Version][👽versioni]][👽version]
[![License: MIT][📄license-img]][📄license-ref]
[![Downloads Rank][👽dl-ranki]][👽dl-rank]
[![Open Source Helpers][👽oss-helpi]][👽oss-help]
[![Depfu][🔑depfui♻️]][🔑depfu]
[![CodeCov Test Coverage][🔑codecovi♻️]][🔑codecov]
[![Coveralls Test Coverage][🔑coveralls-img]][🔑coveralls]
[![CodeClimate Test Coverage][🔑cc-covi♻️]][🔑cc-cov]
[![Maintainability][🔑cc-mnti♻️]][🔑cc-mnt]
[![CI Supported Build][🚎6-s-wfi]][🚎6-s-wf]
[![CI Legacy Build][🚎4-lg-wfi]][🚎4-lg-wf]
[![CI Unsupported Build][🚎7-us-wfi]][🚎7-us-wf]
[![CI Heads Build][🚎3-hd-wfi]][🚎3-hd-wf]
[![CI Ancient Build][🚎1-an-wfi]][🚎1-an-wf]
[![CI Coverage Build][🚎2-cov-wfi]][🚎2-cov-wf]
[![CI Style Build][🚎5-st-wfi]][🚎5-st-wf]

---

[![Liberapay Patrons][⛳liberapay-img]][⛳liberapay]
[![Sponsor Me on Github][🖇sponsor-img]][🖇sponsor]
[![Buy me a coffee][🖇buyme-small-img]][🖇buyme]
[![Polar Shield][🖇polar-img]][🖇polar]
[![Donate to my FLOSS or refugee efforts at ko-fi.com][🖇kofi-img]][🖇kofi]
[![Donate to my FLOSS or refugee efforts using Patreon][🖇patreon-img]][🖇patreon]

## Alternatives

This gem has a very niche purpose, which is:

1. providing introspection of a `Version` module based on a `VERSION` constant string within it,
2. while not interfering with `gemspec` parsing where the `VERSION` string is traditionally used,
3. allowing 100% test coverage of Ruby code, including the `Version` module.

As proof in the pudding, this gem achieves 100% test coverage for lines and branches,
all 77 and 2 of them, respectively; coverage enabled in part by patterns from this library.
You can make it happen for your library too!

If this isn't **precisely** your use case you may be better off looking at
_[versionaire](https://www.alchemists.io/projects/versionaire)_, a wonderful, performant, well-maintained,
gem from the Alchemists, or _[version_sorter](https://rubygems.org/gems/version_sorter)_ from GitHub.

For more discussion about this [see issue #2](https://gitlab.com/oauth-xx/version_gem/-/issues/2)

## Still here?

Give your next library an introspectable `Version` module without breaking your Gemspec.

```ruby
MyLib::Version.to_s # => "1.2.3.rc3"
MyLib::Version.major # => 1
MyLib::Version.minor # => 2
MyLib::Version.patch # => 3
MyLib::Version.pre # => "rc3"
MyLib::Version.to_a # => [1, 2, 3, "rc3"]
MyLib::Version.to_h # => { major: 1, minor: 2, patch: 3, pre: "rc3" }
```

This library was extracted from the gem _[oauth2](https://gitlab.com/oauth-xx/oauth2)_.

This gem has no runtime dependencies.

| Tokens to Remember | [![Gem name][⛳️name-img]][⛳️gem-name] [![Gem namespace][⛳️namespace-img]][⛳️gem-namespace]                                                                                                                                                                                                                                                                                                                                                                                                                 |
|--------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| compatibility      | [![Ruby 2.2 Compat][💎ruby-2.2i]][🚎8-ho-wf] [![Ruby 2.3 Compat][💎ruby-2.3i]][🚎1-an-wf] [![Ruby 2.4 Compat][💎ruby-2.4i]][🚎1-an-wf] [![Ruby 2.5 Compat][💎ruby-2.5i]][🚎1-an-wf] [![Ruby 2.6 Compat][💎ruby-2.6i]][🚎7-us-wf] [![Ruby 2.7 Compat][💎ruby-2.7i]][🚎7-us-wf] [![Ruby 3.0 Compat][💎ruby-3.0i]][🚎4-lg-wf] [![Ruby 3.1 Compat][💎ruby-3.1i]][🚎6-s-wf] [![Ruby 3.2 Compat][💎ruby-3.2i]][🚎6-s-wf] [![Ruby 3.3 Compat][💎ruby-3.3i]][🚎6-s-wf] [![Ruby 3.4 Compat][💎ruby-3.4i]][🚎6-s-wf] |
| documentation      | [![Documentation on Github.com][📜docs-gh-img]][homepage] `or` [![Current release on RubyDoc.info][📜docs-cr-rd-img]][🚎yard-current] `or` [![HEAD on RubyDoc.info][📜docs-head-rd-img]][🚎yard-head] `or` [![Wiki][📜wiki-img]][📜wiki] [![The best SHA: dQw4w9WgXcQ!][🧮kloc-img]][🧮kloc]                                                                                                                                                                                                               |
| compliance         | [![License: MIT][📄license-img]][📄license-ref] [![📄ilo-declaration-img]][📄ilo-declaration] [![Security Policy][🔐security-img]][🔐security] [![CodeQL][🖐codeQL-img]][🖐codeQL] [![SemVer 2.0.0][📌semver-img]][📌semver] [![Keep-A-Changelog 1.0.0][📗keep-changelog-img]][📗keep-changelog]                                                                                                                                                                                                           |
| expert 1:1 support | [![Get help from me on Upwork][👨🏼‍🏫expsup-upwork-img]][👨🏼‍🏫expsup-upwork] `or` [![Get help from me on Codementor][👨🏼‍🏫expsup-codementor-img]][👨🏼‍🏫expsup-codementor]                                                                                                                                                                                                                                                                                                                           |
| enterprise support | [![Get help from me on Tidelift][🏙️entsup-tidelift-img]][🏙️entsup-tidelift] (for _this and all your other_ FLOSS dependencies; btw, TideLift is now part of [Sonar](https://blog.tidelift.com/tidelift-joins-sonar)!)                                                                                                                                                                                                                                                                                    |
| `...` 💖           | [![Follow Me on LinkedIn][💖🖇linkedin-img]][💖🖇linkedin] [![Find Me on WellFound:][💖✌️wellfound-img]][💖✌️wellfound] [![Find Me on CrunchBase][💖💲crunchbase-img]][💖💲crunchbase] [![My LinkTree][💖🌳linktree-img]][💖🌳linktree] [![Follow Me on Ruby.Social][💖🐘ruby-mast-img]][💖🐘ruby-mast] [![My technical writing][💖💁🏼‍♂️devto-img]][💖💁🏼‍♂️devto] [🌏][💖💁🏼‍♂️aboutme]                                                                                                               |

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add version_gem

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install version_gem

## Usage

In the standard `bundle gem my_lib` code you get the following in `lib/my_lib/version.rb`:

```ruby
module MyLib
  VERSION = "0.1.0"
end
```

Change it to a nested `Version` namespace (the one implied by the path => namespace convention):

```ruby
module MyLib
  module Version
    VERSION = "0.1.0"
  end
end
```

Now add the following near the top of the file the manages requiring external libraries.
Using the same example of `bundle gem my_lib`, this would be `lib/my_lib.rb`.

```ruby
require "version_gem"
```

Then, add the following wherever you want in the same file (recommend the bottom).

```ruby
MyLib::Version.class_eval do
  extend VersionGem::Basic
end
```

And now you have some version introspection methods available:

```ruby
MyLib::Version.to_s # => "0.1.0"
MyLib::Version.major # => 0
MyLib::Version.minor # => 1
MyLib::Version.patch # => 0
MyLib::Version.pre # => ""
MyLib::Version.to_a # => [0, 1, 0]
MyLib::Version.to_h # => { major: 0, minor: 1, patch: 0, pre: "" }
```

### Side benefit #1

You can reference the version from your gemspec, keeping the version string DRY,
*and* still get accurate code coverage!

```ruby
# Get the GEMFILE_VERSION without *require* "my_gem/version", for code coverage accuracy
# See: https://github.com/simplecov-ruby/simplecov/issues/557#issuecomment-2630782358
# Kernel.load because load is overloaded in RubyGems during gemspec evaluation
Kernel.load("lib/my_gem/version.rb")
gem_version = MyGem::Version::VERSION
MyGem::Version.send(:remove_const, :VERSION)

Gem::Specification.new do |spec|
  # ...
  spec.version = gem_version
end
```

### Side benefit #2

Your `version.rb` file now abides the Ruby convention of directory / path matching the namespace / class!

### Zietwerk

The pattern of `version.rb` breaking the ruby convention of directory / path matching the namespace / class
is so entrenched that the `zeitwerk` library has a special carve-out for it. 🥺
RubyGems using this "bad is actually good" pattern are encouraged to use `Zeitwerk.for_gem`.

**Do not do that ^** if you use this gem.

#### Simple Zeitwerk Example

Create a gem like this (keeping with the `MyLib` theme):

```shell
bundle gem my_lib
```

Then following the usage instructions above, you edit your primary namespace file @ `lib/my_lib.rb`,
but inject the Zeitwerk loader.

```ruby
# frozen_string_literal: true

require_relative "my_lib/version"

module MyLib
  class Error < StandardError; end
  # Your code goes here...
end

loader = Zeitwerk::Loader.new
loader.tag = File.basename(__FILE__, ".rb")
loader.push_dir("lib/my_lib", namespace: MyLib)
loader.setup # ready!
loader.eager_load(force: true) # optional!

MyLib::Version.class_eval do
  extend VersionGem::Basic
end
```

#### Complex Zeitwerk Example

Maybe you would like to contribute one?

#### Query Ruby Version (as of version 1.1.2)

In Continuous Integration environments for libraries that run against many versions of Ruby,
I often need to configure things discretely per Ruby version, and doing so forced me to repeat
a significant amount of boilerplate code across each project.

Thus `VersionGem::Ruby` was born.  It has the two optimized methods I always need:

```ruby
engine = "ruby"
version = "2.7.7"
gte_minimum_version?(version, engine)  # Is the current version of Ruby greater than or equal to some minimum?

major = 3
minor = 2
actual_minor_version?(major, minor, engine) # Is the current version of Ruby precisely a specific minor version of Ruby?
```

`Version::Ruby` is *not loaded* by default.  If you want to use it, you must require it as:
```ruby
require "version_gem/ruby"
```

Normally I do this in my `spec/spec_helper.rb`, and/or `.simplecov` files.
Occasionally in my `Rakefile`.

### Caveat

This design keeps your `version.rb` file compatible with the way `gemspec` files use them.
This means that the introspection is _not_ available within the gemspec.
The enhancement from this gem is only available at runtime.

### RSpec Matchers

In `spec_helper.rb`:
```ruby
require "version_gem/rspec"
```

Then you can write a test like:

```ruby
RSpec.describe(MyLib::Version) do
  it_behaves_like "a Version module", described_class
end

# Or, if you want to write your own, here is the a la carte menu:
RSpec.describe(MyLib::Version) do
  it "is a Version module" do
    expect(described_class).is_a?(Module)
    expect(described_class).to(have_version_constant)
    expect(described_class).to(have_version_as_string)
    expect(described_class.to_s).to(be_a(String))
    expect(described_class).to(have_major_as_integer)
    expect(described_class).to(have_minor_as_integer)
    expect(described_class).to(have_patch_as_integer)
    expect(described_class).to(have_pre_as_nil_or_string)
    expect(described_class.to_h.keys).to(match_array(%i[major minor patch pre]))
    expect(described_class.to_a).to(be_a(Array))
  end
end
```

## 🔐 Security

See [SECURITY.md][🔐security].

## 🤝 Contributing

If you need some ideas of where to help, you could work on adding more code coverage,
or if it is already 💯 (see [below](#code-coverage)) then check [issues][🤝issues], or [PRs][🤝pulls],
or use the gem and think about how it could be better.

We [![Keep A Changelog][📗keep-changelog-img]][📗keep-changelog] so if you make changes, remember to update it.

Also, see [CONTRIBUTING.md][🤝contributing].

### Code Coverage

[![Coverage Graph][🔑codecov-g]][🔑codecov]

## 🌈 Contributors

[![Contributors][🖐contributors-img]][🖐contributors]

Made with [contributors-img][🖐contrib-rocks].

## ⭐️ Star History

<a href="https://star-history.com/#oauth-xx/version_gem&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=oauth-xx/version_gem&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=oauth-xx/version_gem&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=oauth-xx/version_gem&type=Date" />
 </picture>
</a>

## 🪇 Code of Conduct

Everyone interacting in this project's codebases, issue trackers,
chat rooms and mailing lists is expected to follow the [code of conduct][🪇conduct].

## 📌 Versioning

This Library adheres to [![Semantic Versioning 2.0.0][📌semver-img]][📌semver].
Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility,
a new version should be immediately released that restores compatibility.
Breaking changes to the public API will only be introduced with new major versions.

### 📌 Is "Platform Support" part of the public API?

Yes.  But I'm obligated to include notes...

SemVer should, but doesn't explicitly, say that dropping support for specific Platforms
is a *breaking change* to an API.
It is obvious to many, but not all, and since the spec is silent, the bike shedding is endless.

> dropping support for a platform is both obviously and objectively a breaking change

- Jordan Harband (@ljharb) [in SemVer issue 716][📌semver-breaking]

To get a better understanding of how SemVer is intended to work over a project's lifetime,
read this article from the creator of SemVer:

- ["Major Version Numbers are Not Sacred"][📌major-versions-not-sacred]

As a result of this policy, and the interpretive lens used by the maintainer,
you can (and should) specify a dependency on these libraries using
the [Pessimistic Version Constraint][📌pvc] with two digits of precision.

For example:

```ruby
spec.add_dependency("version_gem", "~> 1.1")
```

See [CHANGELOG.md][📌changelog] for list of releases.

## 📄 License

The gem is available as open source under the terms of
the [MIT License][📄license] [![License: MIT][📄license-img]][📄license-ref].
See [LICENSE.txt][📄license] for the official [Copyright Notice][📄copyright-notice-explainer].

### © Copyright

* Copyright (c) 2022 - 2025 [Peter H. Boling][peterboling] of [Rails Bling][railsbling]

## 🤑 One more thing

You made it to the bottom of the page,
so perhaps you'll indulge me for another 20 seconds.
I maintain many dozens of gems, including this one,
because I want Ruby to be a great place for people to solve problems, big and small.
Please consider supporting my efforts via the giant yellow link below,
or one of the others at the head of this README.

[![Buy me a latte][🖇buyme-img]][🖇buyme]

[🏘chat]: https://gitter.im/oauth-xx/version_gem
[🏘chat-img]: https://img.shields.io/gitter/room/oauth-xx/version_gem.svg
[⛳️gem-namespace]: https://rubygems.org/gems/version_gem
[⛳️namespace-img]: https://img.shields.io/badge/namespace-VersionGem-brightgreen.svg?style=flat
[⛳️gem-name]: https://rubygems.org/gems/version_gem
[⛳️name-img]: https://img.shields.io/badge/name-version__gem-brightgreen.svg?style=flat
[🚎blog]: http://www.railsbling.com/tags/version_gem
[🚎blog-img]: https://img.shields.io/badge/blog-railsbling-brightgreen.svg?style=flat
[💖🖇linkedin]: http://www.linkedin.com/in/peterboling
[💖🖇linkedin-img]: https://img.shields.io/badge/PeterBoling-blue?style=plastic&logo=linkedin
[💖✌️wellfound]: https://angel.co/u/peter-boling
[💖✌️wellfound-img]: https://img.shields.io/badge/peter--boling-orange?style=plastic&logo=wellfound
[💖💲crunchbase]: https://www.crunchbase.com/person/peter-boling
[💖💲crunchbase-img]: https://img.shields.io/badge/peter--boling-purple?style=plastic&logo=crunchbase
[💖🐘ruby-mast]: https://ruby.social/@galtzo
[💖🐘ruby-mast-img]: https://img.shields.io/mastodon/follow/109447111526622197?domain=https%3A%2F%2Fruby.social&style=plastic&logo=mastodon&label=Ruby%20%40galtzo
[💖🌳linktree]: https://linktr.ee/galtzo
[💖🌳linktree-img]: https://img.shields.io/badge/galtzo-purple?style=plastic&logo=linktree
[💖💁🏼‍♂️devto]: https://dev.to/galtzo
[💖💁🏼‍♂️devto-img]: https://img.shields.io/badge/dev.to-0A0A0A?style=plastic&logo=devdotto&logoColor=white
[💖💁🏼‍♂️aboutme]: https://about.me/peter.boling
[👨🏼‍🏫expsup-upwork]: https://www.upwork.com/freelancers/~014942e9b056abdf86?mp_source=share
[👨🏼‍🏫expsup-upwork-img]: https://img.shields.io/badge/UpWork-6FDA44?style=for-the-badge&logo=Upwork&logoColor=white
[👨🏼‍🏫expsup-codementor]: https://www.codementor.io/peterboling?utm_source=github&utm_medium=button&utm_term=peterboling&utm_campaign=github
[👨🏼‍🏫expsup-codementor-img]: https://img.shields.io/badge/CodeMentor-Get%20Help-1abc9c?style=for-the-badge&logo=CodeMentor&logoColor=white
[🏙️entsup-tidelift]: https://tidelift.com/
[🏙️entsup-tidelift-img]: https://img.shields.io/badge/TideLift-Enterprise%20Support-1abc9c?style=for-the-badge&logo=TideLift&logoColor=white
[💁🏼‍♂️peterboling]: http://www.peterboling.com
[💁🏼‍♂️railsbling]: http://www.railsbling.com
[📜docs-gh-img]: https://img.shields.io/badge/Github-6FDA44?style=for-the-badge&logo=Github&logoColor=white
[📜docs-cr-rd-img]: https://img.shields.io/badge/RubyDoc-Current%20Release-6FDA44?style=for-the-badge&logo=RubyDoc&logoColor=white
[📜docs-head-rd-img]: https://img.shields.io/badge/RubyDoc-HEAD-6FDA44?style=for-the-badge&logo=RubyDoc&logoColor=white
[📜wiki]: https://gitlab.com/oauth-xx/version_gem/-/wikis/home
[📜wiki-img]: https://img.shields.io/badge/wiki-examples-brightgreen.svg?style=flat
[👽dl-rank]: https://rubygems.org/gems/version_gem
[👽dl-ranki]: https://img.shields.io/gem/rd/version_gem.svg
[👽oss-help]: https://www.codetriage.com/oauth-xx/version_gem
[👽oss-helpi]: https://www.codetriage.com/oauth-xx/version_gem/badges/users.svg
[👽version]: https://rubygems.org/gems/version_gem
[👽versioni]: https://img.shields.io/gem/v/version_gem.svg
[🔑cc-mnt]: https://codeclimate.com/github/oauth-xx/version_gem/maintainability
[🔑cc-mnti♻️]: https://api.codeclimate.com/v1/badges/e26c543320ca0d14e871/maintainability
[🔑cc-cov]: https://codeclimate.com/github/oauth-xx/version_gem/test_coverage
[🔑cc-covi♻️]: https://api.codeclimate.com/v1/badges/e26c543320ca0d14e871/test_coverage
[🔑codecov]: https://codecov.io/gh/oauth-xx/version_gem
[🔑codecovi♻️]: https://codecov.io/gh/oauth-xx/version_gem/branch/main/graph/badge.svg?token=cc6UdZCpAL
[🔑coveralls]: https://coveralls.io/github/oauth-xx/version_gem?branch=main
[🔑coveralls-img]: https://coveralls.io/repos/github/oauth-xx/version_gem/badge.svg?branch=main
[🔑depfu]: https://depfu.com/github/oauth-xx/version_gem
[🔑depfui♻️]: https://badges.depfu.com/badges/6c9b45362951b872127f9e46d39bed76/count.svg
[🖐codeQL]: https://github.com/oauth-xx/version_gem/security/code-scanning
[🖐codeQL-img]: https://github.com/oauth-xx/version_gem/actions/workflows/codeql-analysis.yml/badge.svg
[🚎1-an-wf]: https://github.com/oauth-xx/version_gem/actions/workflows/ancient.yml
[🚎1-an-wfi]: https://github.com/oauth-xx/version_gem/actions/workflows/ancient.yml/badge.svg
[🚎2-cov-wf]: https://github.com/oauth-xx/version_gem/actions/workflows/coverage.yml
[🚎2-cov-wfi]: https://github.com/oauth-xx/version_gem/actions/workflows/coverage.yml/badge.svg
[🚎3-hd-wf]: https://github.com/oauth-xx/version_gem/actions/workflows/heads.yml
[🚎3-hd-wfi]: https://github.com/oauth-xx/version_gem/actions/workflows/heads.yml/badge.svg
[🚎4-lg-wf]: https://github.com/oauth-xx/version_gem/actions/workflows/legacy.yml
[🚎4-lg-wfi]: https://github.com/oauth-xx/version_gem/actions/workflows/legacy.yml/badge.svg
[🚎5-st-wf]: https://github.com/oauth-xx/version_gem/actions/workflows/style.yml
[🚎5-st-wfi]: https://github.com/oauth-xx/version_gem/actions/workflows/style.yml/badge.svg
[🚎6-s-wf]: https://github.com/oauth-xx/version_gem/actions/workflows/supported.yml
[🚎6-s-wfi]: https://github.com/oauth-xx/version_gem/actions/workflows/supported.yml/badge.svg
[🚎7-us-wf]: https://github.com/oauth-xx/version_gem/actions/workflows/unsupported.yml
[🚎7-us-wfi]: https://github.com/oauth-xx/version_gem/actions/workflows/unsupported.yml/badge.svg
[🚎8-ho-wf]: https://github.com/oauth-xx/version_gem/actions/workflows/hoary.yml
[🚎8-ho-wfi]: https://github.com/oauth-xx/version_gem/actions/workflows/hoary.yml/badge.svg
[⛳liberapay-img]: https://img.shields.io/liberapay/patrons/pboling.svg?logo=liberapay
[⛳liberapay]: https://liberapay.com/pboling/donate
[🖇sponsor-img]: https://img.shields.io/badge/Sponsor_Me!-pboling.svg?style=social&logo=github
[🖇sponsor]: https://github.com/sponsors/pboling
[🖇polar-img]: https://polar.sh/embed/seeks-funding-shield.svg?org=pboling
[🖇polar]: https://polar.sh/pboling
[🖇kofi-img]: https://img.shields.io/badge/buy%20me%20coffee-donate-yellow.svg
[🖇kofi]: https://ko-fi.com/O5O86SNP4
[🖇patreon-img]: https://img.shields.io/badge/patreon-donate-yellow.svg
[🖇patreon]: https://patreon.com/galtzo
[💎ruby-2.2i]: https://img.shields.io/badge/Ruby-2.2-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-2.3i]: https://img.shields.io/badge/Ruby-2.3-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-2.4i]: https://img.shields.io/badge/Ruby-2.4-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-2.5i]: https://img.shields.io/badge/Ruby-2.5-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-2.6i]: https://img.shields.io/badge/Ruby-2.6-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-2.7i]: https://img.shields.io/badge/Ruby-2.7-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.0i]: https://img.shields.io/badge/Ruby-3.0-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.1i]: https://img.shields.io/badge/Ruby-3.1-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.2i]: https://img.shields.io/badge/Ruby-3.2-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.3i]: https://img.shields.io/badge/Ruby-3.3-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.4i]: https://img.shields.io/badge/Ruby-3.4-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[🤝issues]: https://github.com/oauth-xx/version_gem/issues
[🤝pulls]: https://github.com/oauth-xx/version_gem/pulls
[🤝contributing]: CONTRIBUTING.md
[🔑codecov-g]: https://codecov.io/gh/oauth-xx/version_gem/graphs/tree.svg?token=cc6UdZCpAL
[🖐contrib-rocks]: https://contrib.rocks
[🖐contributors]: https://github.com/oauth-xx/version_gem/graphs/contributors
[🖐contributors-img]: https://contrib.rocks/image?repo=oauth-xx/version_gem
[🚎contributors-gl]: https://gitlab.com/oauth-xx/version_gem/-/graphs/main
[🚎contributors-gl-img]: https://img.shields.io/github/contributors-anon/oauth-xx/version_gem
[🪇conduct]: CODE_OF_CONDUCT.md
[📌pvc]: http://guides.rubygems.org/patterns/#pessimistic-version-constraint
[📌semver]: http://semver.org/
[📌semver-img]: https://img.shields.io/badge/semver-2.0.0-FFDD67.svg?style=flat
[📌semver-breaking]: https://github.com/semver/semver/issues/716#issuecomment-869336139
[📌major-versions-not-sacred]: https://tom.preston-werner.com/2022/05/23/major-version-numbers-are-not-sacred.html
[📌changelog]: CHANGELOG.md
[📗keep-changelog]: https://keepachangelog.com/en/1.0.0/
[📗keep-changelog-img]: https://img.shields.io/badge/keep--a--changelog-1.0.0-FFDD67.svg?style=flat
[🧮kloc]: https://www.youtube.com/watch?v=dQw4w9WgXcQ
[🧮kloc-img]: https://img.shields.io/badge/KLOC-0.077-FFDD67.svg?style=flat
[🔐security]: SECURITY.md
[🔐security-img]: https://img.shields.io/badge/security-policy-brightgreen.svg?style=flat
[📄copyright-notice-explainer]: https://opensource.stackexchange.com/questions/5778/why-do-licenses-such-as-the-mit-license-specify-a-single-year
[📄license]: LICENSE.txt
[📄license-ref]: https://opensource.org/licenses/MIT
[📄license-img]: https://img.shields.io/badge/License-MIT-green.svg
[📄ilo-declaration]: https://www.ilo.org/declaration/lang--en/index.htm
[📄ilo-declaration-img]: https://img.shields.io/badge/ILO_Fundamental_Principles-✓-brightgreen.svg?style=flat
[railsbling]: http://www.railsbling.com
[peterboling]: http://www.peterboling.com
[bundle-group-pattern]: https://gist.github.com/pboling/4564780
[🚎yard-current]: http://rubydoc.info/gems/version_gem
[🚎yard-head]: https://rubydoc.info/github/oauth-xx/version_gem/main
[homepage]: https://github.com/oauth-xx/version_gem
[🖇buyme-img]: https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20latte&emoji=&slug=pboling&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff
[🖇buyme]: https://www.buymeacoffee.com/pboling
[🖇buyme-small-img]: https://img.shields.io/badge/Buy--Me--A--Coffee-✓-brightgreen.svg?style=flat

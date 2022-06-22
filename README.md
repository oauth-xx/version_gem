# VersionGem

Give your next library an introspectable `Version` module.

```ruby
MyLib::Version.to_s # => "1.2.3.rc3"
MyLib::Version.major # => 1
MyLib::Version.minor # => 2
MyLib::Version.patch # => 3
MyLib::Version.pre # => "rc3"
MyLib::Version.to_a # => [1, 2, 3, "rc3"]
MyLib::Version.to_h # => { major: 1, minor: 2, patch: 3, pre: "rc3" }
```

This library was extracted from the gem [`oauth2`](https://github.com/oauth-xx/oauth2).

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

### Side benefit

Your `version.rb` file now abides the Ruby convention of directory / path matching the namespace / class!

### Caveat

This design keeps your `version.rb` file compatible with the way `gemspec` files use them.
This means that the introspection is _not_ available within the gemspec.
The enhancement from this gem is only available at runtime.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pboling/version_gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/pboling/version_gem/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the VersionGem project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/pboling/version_gem/blob/main/CODE_OF_CONDUCT.md).

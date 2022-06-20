# GemVer

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/gem_ver`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add gem_ver

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install gem_ver

## Usage

In the standard `bundle gem my_lib` code you get the following in `lib/my_lib/version.rb:

```ruby
module MyLib
  VERSION = "0.1.0"
end
```

Change it to:

```ruby
module MyLib
  module Version
    VERSION = "0.1.0"
    extend GemVer::Basic
  end
end
```

And now you have some version introspection methods available:

```ruby
MyLib::Version.to_s # => "0.1.0"
MyLib::Version.major # => 1
MyLib::Version.minor # => 0
MyLib::Version.patch # => 0
MyLib::Version.pre # => ""
MyLib::Version.to_a # => [1, 0, 0]
MyLib::Version.to_h # => { major: 1, minor: 0, patch: 0, pre: "" }
```

### Side benefit

Your `version.rb` file now abides the Ruby convention of directory / path matching the namespace / class!

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pboling/gem_ver. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/pboling/gem_ver/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GemVer project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/pboling/gem_ver/blob/main/CODE_OF_CONDUCT.md).

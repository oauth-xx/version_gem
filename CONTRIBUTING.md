## Contributing

Bug reports and pull requests are welcome on GitHub at [https://gitlab.com/oauth-xx/version_gem][🚎src-main]
. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to
the [code of conduct][🤝conduct].

To submit a patch, please fork the project and create a patch with
tests. Once you're happy with it send a pull request and post a message to the
[google group][⛳mail-list] or on the [gitter chat][🏘chat].

We [![Keep A Changelog][📗keep-changelog-img]][📗keep-changelog] so if you make changes, remember to update it.

## Release

### One-time, Per-maintainer, Setup

**IMPORTANT**: Your public key for signing gems will need to be picked up by the line in the
`gemspec` defining the `spec.cert_chain` (check the relevant ENV variables there),
in order to sign the new release.
See: [RubyGems Security Guide][🔒️rubygems-security-guide]

### To release a new version:

1. Run `bin/setup && bin/rake` as a tests, coverage, & linting sanity check
2. Update the version number in `version.rb`
3. Run `bin/setup && bin/rake` again as a secondary check, and to update `Gemfile.lock`
4. Run `git commit -am "🔖 Prepare release v<VERSION>"` to commit the changes
5. Run `git push` to trigger the final CI pipeline before release, & merge PRs
   - NOTE: Remember to [check the build][🧪build]!
6. Run `export GIT_TRUNK_BRANCH_NAME="$(git remote show origin | grep 'HEAD branch' | cut -d ' ' -f5)" && echo $GIT_TRUNK_BRANCH_NAME`
7. Run `git checkout $GIT_TRUNK_BRANCH_NAME`
8. Run `git pull origin $GIT_TRUNK_BRANCH_NAME` to ensure you will release the latest trunk code
9. Set `SOURCE_DATE_EPOCH` so `rake build` and `rake release` use same timestamp, and generate same checksums
   - Run `export SOURCE_DATE_EPOCH=$EPOCHSECONDS && echo $SOURCE_DATE_EPOCH`
   - If the echo above has no output, then it didn't work.
   - Note that you'll need the `zsh/datetime` module, if running `zsh`.
   - In `bash` you can use `date +%s` instead, i.e. `export SOURCE_DATE_EPOCH=$(date +%s) && echo $SOURCE_DATE_EPOCH`
10. Run `bundle exec rake build`
11. Run `bin/checksums` (more [context][🔒️rubygems-checksums-pr]) to create SHA-256 and SHA-512 checksums
    - Checksums will be committed automatically by the script, but not pushed
12. Run `bundle exec rake release` which will create a git tag for the version,
    push git commits and tags, and push the `.gem` file to [rubygems.org][💎rubygems]

## Contributors

Your picture could be here!

[![Contributors][🖐contributors-img]][🖐contributors]

Made with [contributors-img][🖐contrib-rocks].

Also see GitLab Contributors: [https://gitlab.com/oauth-xx/version_gem/-/graphs/main][🚎contributors]

## Contributing

Bug reports and pull requests are welcome on GitLab at [https://gitlab.com/oauth-xx/version_gem][🚎src-main]
. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to
the [code of conduct][conduct].

To submit a patch, please fork the project and create a patch with
tests. Once you're happy with it send a pull request and post a message to the
[google group][⛳mail-list] or on the [gitter chat][🏘chat].

[🚎contributors]: https://gitlab.com/oauth-xx/version_gem/-/graphs/main
[⛳mail-list]: http://groups.google.com/group/oauth-ruby
[🚎src-main]: https://gitlab.com/oauth-xx/version_gem
[🧪build]: https://github.com/oauth-xx/version_gem/actions
[🏘chat]: https://matrix.to/#/#pboling_version_gem:gitter.im
[🤝conduct]: https://gitlab.com/oauth-xx/version_gem/-/blob/main/CODE_OF_CONDUCT.md
[🖐contrib-rocks]: https://contrib.rocks
[🖐contributors]: https://github.com/oauth-xx/version_gem/graphs/contributors
[🖐contributors-img]: https://contrib.rocks/image?repo=oauth-xx/version_gem
[💎rubygems]: https://rubygems.org
[🔒️rubygems-security-guide]: https://guides.rubygems.org/security/#building-gems
[🔒️rubygems-checksums-pr]: https://github.com/rubygems/guides/pull/325
[📗keep-changelog]: https://keepachangelog.com/en/1.0.0/
[📗keep-changelog-img]: https://img.shields.io/badge/keep--a--changelog-1.0.0-FFDD67.svg?style=flat

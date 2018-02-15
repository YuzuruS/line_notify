# LineNotify

Ruby Client for the LINE notify API 

https://notify-bot.line.me/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'line_notify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install line_notify

## Usage

```ruby
line_notify = LineNotify.new(YOUR_LINE_TOKEN)
options = {message: 'hoge', stickerPackageId: 1, stickerId: 113}
line_notify.send(options)

```

![2018-02-15 22 49 39](https://user-images.githubusercontent.com/1485195/36259741-8f132972-12a2-11e8-9469-b205310709b3.png)


sticker id list
https://devdocs.line.me/files/sticker_list.pdf

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/YuzuruS/line_notify. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LineNotify project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/YuzuruS/line_notify/blob/master/CODE_OF_CONDUCT.md).

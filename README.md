# LineNotify

[![Gem Version](https://img.shields.io/gem/v/line_notify.svg?style=flat)](http://badge.fury.io/rb/line_notify)
[![Build Status](https://travis-ci.org/YuzuruS/line_notify.svg?branch=master)](https://travis-ci.org/YuzuruS/line_notify)
[![Maintainability](https://api.codeclimate.com/v1/badges/d74bc622ab27e20bafa9/maintainability)](https://codeclimate.com/github/YuzuruS/line_notify/maintainability)
[![Coverage Status](https://coveralls.io/repos/github/YuzuruS/line_notify/badge.svg?branch=master)](https://coveralls.io/github/YuzuruS/line_notify?branch=master)
[![Dependency Status](https://beta.gemnasium.com/badges/github.com/YuzuruS/line_notify.svg)](https://beta.gemnasium.com/projects/github.com/YuzuruS/line_notify)

Ruby Client for the LINE notify API 

https://notify-bot.line.me/ja/

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

```ruby
line_notify = LineNotify.new(YOUR_LINE_TOKEN)
options = {
  message: '可愛い画像',
  imageFullsize: "https://www.pakutaso.com/shared/img/thumb/SAYAPAKU5347_TP_V4.jpg",
  imageThumbnail: "https://www.pakutaso.com/shared/img/thumb/SAYAPAKU5347_TP_V.jpg"
}
line_notify.send(options)
```

![2018-02-16 0 53 38](https://user-images.githubusercontent.com/1485195/36266096-0ece0310-12b4-11e8-9b7e-67af11dadf9f.png)


detail
https://notify-bot.line.me/doc/ja/

## Issue of access token

https://notify-bot.line.me/ja/

---

![1](https://user-images.githubusercontent.com/1485195/36305805-83e19c4e-1358-11e8-810f-8d351e5091d0.jpg)

---

![2](https://user-images.githubusercontent.com/1485195/36305804-83bdcee0-1358-11e8-841e-f0354b35fe6a.jpg)

---

![4](https://user-images.githubusercontent.com/1485195/36305803-838a0df8-1358-11e8-85f1-e6fbf164c4a3.jpg)

---

![5](https://user-images.githubusercontent.com/1485195/36305806-8403a44c-1358-11e8-8432-a85fc7ae5436.jpg)

---

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/YuzuruS/line_notify. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LineNotify project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/YuzuruS/line_notify/blob/master/CODE_OF_CONDUCT.md).

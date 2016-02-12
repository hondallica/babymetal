# Babymetal

All about Japanese metal idol unit "BABYMETAL"

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'babymetal'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install babymetal

## Usage

```ruby
require "babymetal"

Babymetal::homepage
Babymetal::youtube
Babymetal::facebook
Babymetal::instagram
Babymetal::twitter

su_metal  = Babymetal::Su_metal.new
yui_metal = Babymetal::Yui_metal.new
moa_metal = Babymetal::Moa_metal.new

su_metal.shout  # SU-METAL DEATH!!
yui_metal.shout # YUIMETAL DEATH!!
moa_metal.shout # MOAMETAL DEATH!!
Babymetal.shout # We are BABYMETAL DEATH!!

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/babymetal.


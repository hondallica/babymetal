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

su_metal  = Babymetal::SuMetal.new
yui_metal = Babymetal::YuiMetal.new
moa_metal = Babymetal::MoaMetal.new

su_metal.metal_name # SU-METAL
su_metal.first_name_ja # すず香
su_metal.family_name_ja # 中元
su_metal.name_ja # 中元 すず香
su_metal.first_name_en # Suzuka
su_metal.family_name_en # Nakamoto
su_metal.name_en # Suzuka Nakamoto
su_metal.birthday # 1997-12-20
su_metal.blood_type # B
su_metal.hometown # 広島県

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

# Omawari

Omawari is a Rubocop configuration gem.

## Usage

Setup .rubocop.yml

    $ bundle exec omawari

generate the following directive to your `.rubocop.yml`:

```yaml
inherit_gem:
  omawari:
    - config/bundler.yml
    - config/lint.yml
    - config/performance.yml
    - config/security.yml
    - config/style.yml
    # uncomment if use rails cops
    # - config/rails.yml
    # uncomment if use rspec cops
    # - config/rspec.yml

AllCops:
  DisplayCopNames: true
  DisplayStyleGuide: false
  DisabledByDefault: true
  Exclude:
    - db/schema.rb
    - node_modules/**/*
    - vendor/**/*
  TargetRubyVersion: 2.3
  # uncomment if use rails cops
  # TargetRailsVersion: 5.0
```

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem 'omawari', require: false
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yhirano55/omawari.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

# Omawari

Omawari is a Rubocop configuration gem.

## Concept

- やさしい警官:cop:
- デフォルト設定はゆるく:hotsprings:
- 標準的なスタイルのみを有効に:muscle:
- Alignmentなど小姑Copは無効に:innocent:
- 流儀分かれるCop・メトリクスは `.rubocop.yml` で設定可能に:hammer_and_wrench:

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

## Disabled Cops

- Bundler/OrderedGems
- Lint/AmbiguousBlockAssociation
- Lint/BlockAlignment
- Lint/DefEndAlignment
- Lint/EndAlignment
- Lint/UnderscorePrefixedVariableName
- Metrics
- Performance/Casecmp
- Performance/Count
- Performance/Detect
- Performance/DoubleStartEndWith
- Performance/EndWith
- Performance/FixedSize
- Performance/RedundantBlockCall
- Performance/TimesMap
- Rails/DelegateAllowBlank
- Rails/SaveBang
- Rails/SkipsModelValidations
- RSpec/AnyInstance
- Security/JSONLoad
- Security/MarshalLoad
- Security/YAMLLoad
- Style/Alias
- Style/AlignArray
- Style/AlignHash
- Style/AlignParameters
- Style/AndOr
- Style/AsciiComments
- Style/AsciiIdentifiers
- Style/AutoResourceCleanup
- Style/BracesAroundHashParameters
- Style/ClassAndModuleChildren
- Style/ClassMethods
- Style/ClassVars
- Style/Copyright
- Style/Documentation
- Style/DocumentationMethod
- Style/DotPosition
- Style/DoubleNegation
- Style/ElseAlignment
- Style/FirstArrayElementLineBreak
- Style/FirstHashElementLineBreak
- Style/FirstMethodArgumentLineBreak
- Style/FirstMethodParameterLineBreak
- Style/FrozenStringLiteralComment
- Style/ImplicitRuntimeError
- Style/InlineComment
- Style/GuardClause
- Style/MethodMissing
- Style/NumericLiterals
- Style/RaiseArgs
- Style/StringLiterals
- Style/StructInheritance
- Style/TrailingCommaInArguments
- Style/TrailingCommaInLiteral
- Style/MethodCallWithArgsParentheses
- Style/MethodCalledOnDoEndBlock
- Style/MissingElse
- Style/MultilineAssignmentLayout
- Style/OptionHash
- Style/Send
- Style/StringMethods
- Style/SingleLineBlockParams

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yhirano55/omawari.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

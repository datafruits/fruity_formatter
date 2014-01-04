# FruityFormatter

[![Build Status](https://secure.travis-ci.org/datafruits/fruity_formatter.png?branch=master)](http://travis-ci.org/datafruits/fruity_formatter)

A fruit oriented rspec test formatter.

Prints one of several fruits for successes =>
:apple: :pineapple: :green_apple: :tangerine: :lemon: :cherries: :grapes:
:watermelon: :strawberry: :peach: :melon: :banana: :tomato:

and bombs and mushrooms for failures =>
:mushroom: :bomb:

If your terminal supports emoji ala apple you should see emoji. Otherwise you
can install an emoji font in linux.

## Installation

Add this line to your application's Gemfile:

    gem 'fruity_formatter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fruity_formatter

## Usage

You can either specify the formatting when using the `rspec` command:

    rspec --format FruityFormatter

Or add `--format FruityFormatter` to a `.rspec` file placed in your project's root directory,
so that you won't have to specify the `--format` option everytime you run the command.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# DependencyRevealer

Extract dependencies info from a Gemfile and a Gemfile.lock.

## Installation

Add this line to your application's Gemfile:

    gem 'dependency_revealer'

or

    gem 'dependency_revealer', github: 'franckverrot/dependency_revealer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dependency_revealer

## Usage

You can extract dependencies info by running

    reveal

You might need to either `rehash` or `bundle exec` before executing the command,
but you might also want to install the `binstubs` (`bundle install --binstubs`)
and run `reveal` from the `bin` folder (`bin/reveal`).

You can pass options to `reveal`:

* `reveal Gemfile`
* `reveal Gemfile Gemfile.lock`
* `reveal Gemfile Gemfile.lock name,description,bindir,homepage`: Gets the required set of info from the gemspecs.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

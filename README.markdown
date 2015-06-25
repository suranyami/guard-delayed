# Guard::Delayed

Guard::Delayed automatically starts/stops/restarts delayed_job

## Install

Please be sure to have [Guard](http://github.com/guard/guard) installed before continuing.

Add it to your Gemfile (inside your development and/or test group):

    gem 'guard-delayed'

Add guard definition to your Guardfile by running this command:

    guard init delayed

## Usage

Please read [Guard usage doc](http://github.com/guard/guard#readme).

I suggest you put the delayed guard definition *before* your test/rspec guard if your tests depend on it being active.

## Guardfile

    guard 'delayed', :environment => 'development' do
      watch(%r{^app/(.+)\.rb})
    end

## Development

 * Source hosted at [GitHub](http://github.com/suranyami/guard-delayed)
 * Report issues/Questions/Feature requests on [GitHub Issues](http://github.com/suranyami/guard-delayed/issues)

Pull requests are very welcome! Make sure your patches are well tested.
Please create a topic branch for every separate change you make.

## Building and deploying gem

 * Update the version number in `lib/guard/delayed/version.rb`
 * Update `CHANGELOG.md`
 * Build the gem:

    gem build guard-delayed.gemspec

 * Push to rubygems.org:

    gem push guard-delayed-0.3.2.gem

## Testing the gem locally

    gem install guard-delayed-0.3.2.gem


## Authors

[David Parry](https://github.com/suranyami)
[Dennis Reimann](https://github.com/dbloete)

Ideas for this gem came from [Guard::WEBrick](http://github.com/fnichol/guard-webrick).

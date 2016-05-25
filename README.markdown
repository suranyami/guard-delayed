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

## Options

```
    :environment        defaults to 'test'
    :min_priority       e.g. 2
    :max_priority       e.g. 10
    :number_of_workers  e.g. 2
    :pid_dir            e.g. tmp/pids Specifies an alternate directory in which to store the process ids.
    :identifier         A numeric identifier for the worker.
    :monitor            Start monitor process.
    :sleep-delay N      Amount of time to sleep in seconds when no jobs are found
    :prefix NAME        String to be prefixed to worker process names
    :root               directory to find the executable. Defaults to ''
    :command            Command to execute. Default to 'bin/delayed_job'
```

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

    gem push guard-delayed-0.3.5.gem

## Testing the gem locally

    gem install guard-delayed-0.3.5.gem


## Authors

[David Parry](https://github.com/suranyami)
[Dennis Reimann](https://github.com/dbloete)

Ideas for this gem came from [Guard::WEBrick](http://github.com/fnichol/guard-webrick).

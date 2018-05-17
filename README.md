# Browsenator
[![Build Status](https://travis-ci.com/Typeform/browsenator.svg?token=4XnFa7v9wzSNqUXXdfpX&branch=master)](https://travis-ci.com/Typeform/browsenator)

Browsenator is a Watir wrapper to make starting local and remote browsers easier.

Big thanks to Browserstack for allowing us to use their tool for developing this project.

[![Browserstack](https://user-images.githubusercontent.com/9199692/40190142-59ef2694-59fe-11e8-87fa-77aaec1e2575.png)](https://www.browserstack.com)

## Installation

Install Browsenator as a Gem from git:

```ruby
gem 'browsenator', git: git@github.com:Typeform/browsenator.git
```

And then in your project execute:

    $ bundle install

## Configuration

To use remote Browsertack browsers, configure the following environment variables:

- BROWSERSTACK_USERNAME
- BROWSERSTACK_ACCESS_KEY

## Usage

### Local browser

Start a local browser:

```ruby
Browsenator.for(:chrome)
```

You can start the following local browsers: `:chrome`, `:firefox`, `:safari`.

Chrome and Firefox browsers can be started in headless mode:

```ruby
Browsenator.for(:chrome, headless: true)
```

### Remote browser

To start a remote browser:

```ruby
Browsenator.for(:chrome, remote: :browserstack)
```

Currently, remote browsers are only available through Browserstack.

You can start the following remote browsers: `:chrome`, `:safari`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

The code follows [Ruby Style Guidelines](https://github.com/bbatsov/ruby-style-guide). Run Rubocop to ensure them by executing `bundle exec rubocop`.

Code coverage is automatically generated when rspec is run. A full report can be viewed by opening coverage/index.html (target is > 90%).

### Adding more remote Browserstack browsers

Go to Browserstack [capabilities section for Ruby](https://www.browserstack.com/automate/ruby#configure-capabilities) and select the operating system and browser you would like to add.
Use the capabilities Browserstack provides to start the new browser.

### Testing

Testing of remote Browserstack browsers has been conducted integrating with them directly thanks to the license they provided for this open source project. Thanks!


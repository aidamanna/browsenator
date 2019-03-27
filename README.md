# Browsenator
[![Build Status](https://travis-ci.org/aidamanna/browsenator.svg?branch=master)](https://travis-ci.org/aidamanna/browsenator) [![Maintainability](https://api.codeclimate.com/v1/badges/51b5246ff4911fe235f7/maintainability)](https://codeclimate.com/github/aidamanna/browsenator/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/51b5246ff4911fe235f7/test_coverage)](https://codeclimate.com/github/aidamanna/browsenator/test_coverage)

Browsenator is a Watir wrapper to make starting local and remote browsers easier in desktop and mobile platforms.

Big thanks to Browserstack for allowing us to use their tool for developing this project.

[![Browserstack](https://user-images.githubusercontent.com/9199692/40190142-59ef2694-59fe-11e8-87fa-77aaec1e2575.png)](https://www.browserstack.com)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'browsenator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aida

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

If you specify headless property for Safari, Browsenator will just ignore it.

#### Browser versions
For local browsers Browsenator will always start the browser version that you have installed in your computer.

Additionally, you will need to have installed the corresponding browser driver:

- Google Chrome: chromedriver
- Mozilla Firefox: geckodriver
- Apple Safari: safaridriver (no download is needed, it is pre-installed if you have Safari 10 or latter).

In Safari, you will also need to allow remote automation option (under Develop menu). 

#### Defaults

- Browser window is resized to: 1004 x 748

### Remote browser

Currently, remote browsers are only available through Browserstack. You will need to have a subscription with Browserstack to connect with them. Bear in mind that the [plan](https://www.browserstack.com/accounts/subscriptions) you need is different depending on the platform (desktop, mobile) you need to perform your tests.

You can start remote browsers on desktop and **real** mobile platforms.

#### Remote desktop browser

Start a remote desktop browser:

```ruby
Browsenator.for(:chrome, remote: :browserstack)
```

You can start the following remote desktop browsers: `:chrome`, `:safari`, `:edge`, `:ie`.

##### Browser versions

You can specify the browser version you want to use:

```ruby
Browsenator.for(:chrome, remote: :browserstack, browser_version: '65.0')
```

Check [capabilities](https://www.browserstack.com/automate/capabilities) in Browserstack to know which browser versions to use.

##### Defaults

- Resolution: 1024 x 768
- Chrome browser: v66 - High Sierra
- Safari browser: v11.1 - High Sierra
- Edge browser: v17 - Windows 10
- IE browser: v11 - Windows 10

##### Other configurations

###### Screen resolution

Specify the screen resolution for the machine in browserstack using the options `screen_width` and `screen_height`

```ruby
Browsenator.for(:chrome, remote: :browserstack, screen_width: 1920, screen_height: 1200)
```

You can find resolutions [here](https://www.browserstack.com/automate/capabilities)

###### Project name

Specify project name in Browserstack execution:

```ruby
Browsenator.for(:chrome, remote: :browserstack, project: 'Functional Test')
```

###### Local testing

By default local testing is set to false. You can enable it by setting `local_testing` to `true`:

```ruby
Browsenator.for(:chrome, remote: :browserstack, local_testing: true)
```

Additionally, you can specify an identifier for your local testing connection:

```ruby
Browsenator.for(:chrome, remote: :browserstack, local_testing: true, local_identifier: 'aCRtDu')
```

Note: `local_testing` property will only set the correct capability so that local testing is enabled. However, to make it work, you still need to setup your [Local Testing connection](https://www.browserstack.com/local-testing) with Browserstack.

See the following example for a Linux machine.

First of all, download the linux binary and start your local testing connection:

    $ wget https://www.browserstack.com/browserstack-local/BrowserStackLocal-linux-x64.zip
    $ unzip BrowserStackLocal-linux-x64.zip
    $ ./BrowserStackLocal --key $BROWSERSTACK_ACCESS_KEY

If using an identifier, remember to provide it when starting your connection:

    $ ./BrowserStackLocal --key $BROWSERSTACK_ACCESS_KEY --local-identifier aCRtDu

Run your tests. When you are done running your tests, stop your local testing connection (and remove the downloaded binary):

    $ killall BrowserStackLocal
    $  rm -f BrowserStackLocal*

#### Remote real mobile browser

It connects to real mobile devices, not emulators.

For starting a remote browser in a mobile device, you only need to specify the device. If you specify a iOS device it will start Safari browser, and if you specify an Android device it will start a Chrome/Native browser (this is an Appium restriction).

```ruby
Browsenator.for(:samsung_galaxy_s8, remote: :browserstack)
```

You can start the following remote **real** mobile browsers: `:samsung_galaxy_s8`, `:google_pixel`, `:iphone8`.

##### Device orientation

By default the device orientation is portrait. If you want to test in landscape mode you can specify so:

```ruby
Browsenator.for(:samsung_galaxy_s8, remote: :browserstack, device_orientation: 'landscape')
```

##### Defaults

- Orientation: Portrait
- Samsung Galaxy S8: Android 7.0
- Google Pixel: Android 8.0
- iPhone 8: iOS 11.0

##### Other configurations

You can specify the project name and enable local testing, the same way it's done with desktop browsers.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

The code follows [Ruby Style Guidelines](https://github.com/bbatsov/ruby-style-guide). Run Rubocop to ensure them by executing `bundle exec rubocop`.

Code coverage is automatically generated when rspec is run. A full report can be viewed by opening coverage/index.html (target is > 90%).

### Adding more remote Browserstack desktop/mobile browsers

Go to Browserstack [capabilities section for Ruby](https://www.browserstack.com/automate/ruby#configure-capabilities) and select the operating system and browser you would like to add for a desktop browser, or the device and operating system for a mobile browser.
Use the capabilities Browserstack provides to start the new browser.

### Testing

Testing of remote Browserstack browsers has been conducted integrating with them directly thanks to the license they provided for this open source project. Thanks!


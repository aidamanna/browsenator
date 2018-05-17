require 'webdrivers'
require_relative 'browsenator/local'
require_relative 'browsenator/remote/browserstack'

module Browsenator
  def self.for(browser, opts = {})
    remote = opts.delete(:remote)

    case remote
    when false, nil
      Local.for(browser, opts)
    when :browserstack
      Remote::Browserstack.for(browser, opts)
    else
      raise ArgumentError, "Unknown remote: #{remote.inspect}"
    end
  end
end

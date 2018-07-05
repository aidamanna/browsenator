require 'watir'
require 'webdrivers'
require_relative 'browsenator/local'
require_relative 'browsenator/remote/browserstack'

module Browsenator
  def self.for(platform, opts = {})
    remote = opts.delete(:remote)

    case remote
    when false, nil
      Local.for(platform, opts)
    when :browserstack
      Remote::Browserstack.for(platform, opts)
    else
      raise ArgumentError, "Unknown remote: #{remote.inspect}"
    end
  end
end

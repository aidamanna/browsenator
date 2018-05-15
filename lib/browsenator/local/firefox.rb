require 'watir'
require_relative '../../window_size'

module Browsenator
  module Local
    class Firefox
      include WindowSize

      def initialize(opts = {})
        @options = { accept_insecure_certs: true }

        @options[:headless] = true if opts[:headless]
      end

      def open
        firefox = Watir::Browser.new :firefox, options
        firefox.window.resize_to(width, height)
        firefox
      end

      attr_reader :options
    end
  end
end

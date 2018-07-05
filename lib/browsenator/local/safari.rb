require_relative 'window_size'

module Browsenator
  module Local
    class Safari
      include WindowSize

      def open
        safari = Watir::Browser.new :safari
        safari.window.resize_to(width, height)
        safari
      end
    end
  end
end

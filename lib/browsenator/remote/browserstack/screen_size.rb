module Browsenator
  module Remote
    module Browserstack
      module ScreenSize
        def screen_resolution(width, height)
          width ||= 1024
          height ||= 768
          "#{width}x#{height}"
        end
      end
    end
  end
end

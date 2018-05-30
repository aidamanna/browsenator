module Browsenator
  module Remote
    module Browserstack
      module WindowSize
        def resolution_string(opts)
          width = opts[:screen_width] || 1024
          height = opts[:screen_height] || 768
          "#{width}x#{height}"
        end
      end
    end
  end
end

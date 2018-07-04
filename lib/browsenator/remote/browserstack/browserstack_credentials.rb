module Browsenator
  module Remote
    class Browserstack
      module BrowserstackCredentials
        def username
          ENV['BROWSERSTACK_USERNAME']
        end

        def access_key
          ENV['BROWSERSTACK_ACCESS_KEY']
        end
      end
    end
  end
end

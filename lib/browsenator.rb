module Browsenator
  def self.for(browser, opts = {})
    remote = opts.delete(:remote)

    if remote
      puts 'remote mode on'
    else
      puts 'local mode on'
      Local.for(browser, opts)
    end
  end
end

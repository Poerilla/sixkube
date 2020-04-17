require 'faraday'
require 'json'

class Connection
  BASE = 'https://api.production.wealthsimple.com'

  def self.api
    Faraday.new(url: BASE) do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
      faraday.headers['Content-Type'] = 'application/json'
      faraday.headers['X-Mashape-Key'] = ENV['WEALTHSIMPLE_KEY']
    end
  end
end

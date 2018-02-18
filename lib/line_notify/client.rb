require 'line_notify/version'
require 'net/https'

module LineNotify
  class Client
    URI = URI.parse("https://notify-api.line.me/api/notify")

    def initialize(access_token)
      @access_token = (access_token || ENV['LINE_ACCESS_TOKEN'])
    end

    def send(options)
      request = create_request(options)
      Net::HTTP.start(URI.hostname, URI.port, use_ssl: URI.scheme == "https") do |req|
        req.request(request)
      end
    end

    private
    def create_request(options)
      request = Net::HTTP::Post.new(URI)
      request["Authorization"] = "Bearer #{@access_token}"
      request.set_form_data(options)
      request
    end
  end
end

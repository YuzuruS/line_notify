require "line_notify/client"

module LineNotify
  def self.new(access_token = nil)
    LineNotify::Client.new(access_token)
  end
end

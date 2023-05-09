# models/cloudflare_turnstile.rb
require "net/http"

class CloudflareTurnstile
  SECRET_KEY = "0x4AAAAAAABqz8GbmwvYt4175bUTjUhJmK0".freeze
  ALL_HTTP_ERRORS = [Errno::ETIMEDOUT]
  def self.validate(payload, remote_ip)
    new(payload, remote_ip).validate
  end

  def initialize(payload, remote_ip)
    @payload = payload
    @remote_ip = remote_ip
  end

  def validate
    return false unless @payload
    response = validate_from_cloudflare
    response["success"]
  end

  private

  def validate_from_cloudflare
    retries ||= 0
    url = URI("https://challenges.cloudflare.com/turnstile/v0/siteverify")
    response = Net::HTTP.post_form(url, secret: SECRET_KEY, response: @payload, remoteip: @remote_ip)
    JSON.parse(response.body)
  rescue *ALL_HTTP_ERRORS
    retry if (retries += 1) < 3
  end
end

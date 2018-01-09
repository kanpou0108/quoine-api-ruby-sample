require 'bundler/setup'
require 'time'
require 'jwt'
require 'dotenv/load'

module Auth
  def self.get_signature(path)
    token_id = ENV["API_TOKEN_ID"]
    user_secret = ENV["API_SECRET"]

    auth_payload = {
      path: path,
      nonce: DateTime.now.strftime('%Q'),
      token_id: token_id
    }

    JWT.encode(auth_payload, user_secret, 'HS256')
  end
end
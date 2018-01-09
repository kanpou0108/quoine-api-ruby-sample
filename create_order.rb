require 'bundler/setup'
require 'uri'
require 'net/http'
require 'json'

require './auth'

uri = URI.parse("https://api.quoine.com")
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

path = '/orders'
signature = Auth.get_signature(path)

request = Net::HTTP::Post.new(path)
request.add_field('X-Quoine-API-Version', '2')
request.add_field('X-Quoine-Auth', signature)
request.add_field('Content-Type', 'application/json')

# "product_id: 5 は BTCJPY
json_file_path = './create_order.json'
json_data = open(json_file_path) do |io|
  JSON.load(io)
end.to_json
request.body = json_data

response = http.request(request)
print(response.body);
require "open-uri"
require "net/http"
require "json"

url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/locations.json"

uri = URI.parse(url)
response = Net::HTTP.get_response(uri)

p JSON.parse(response.body)

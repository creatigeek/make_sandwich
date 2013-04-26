module SandwichpostsHelper
  require 'open-uri'
  require 'net/http'
  
  @url = "http://www.iheartquotes.com/api/v1/random?format=text&max_lines=4&max_characters=320"
  
  # Returns a quote to use in our sandwichpost and email to send
  def fetch_quote
    uri = URI('http://www.iheartquotes.com/api/v1/random?format=text&max_lines=4&max_characters=320')
    #open(@url).read.to_s
    req = Net::HTTP.get(uri)
    #puts req
  end
end
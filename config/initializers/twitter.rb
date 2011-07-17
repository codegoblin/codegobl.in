Twitter.configure do |config|
  config.consumer_key = CONFIG['twitter']['consumer_key']
  config.consumer_secret = CONFIG['twitter']['consumer_secret']
  config.oauth_token = CONFIG['twitter']['oauth_token']
  config.oauth_token_secret = CONFIG['twitter']['oauth_token_secret']
end

# Leave the twitter client instantiated
TWITTER_CLIENT = Twitter::Client.new

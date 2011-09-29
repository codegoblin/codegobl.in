Twitter.configure do |config|
  twitter_config = Codegoblin::Config[:twitter]
  config.consumer_key = twitter_config['consumer_key']
  config.consumer_secret = twitter_config['consumer_secret']
  config.oauth_token = twitter_config['oauth_token']
  config.oauth_token_secret = twitter_config['oauth_token_secret']
end

# Leave the twitter client instantiated
# TODO: Add this to Codegoblin module
TWITTER_CLIENT = Twitter::Client.new

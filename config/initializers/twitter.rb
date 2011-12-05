Twitter.configure do |config|
  twitter_config = Codegoblin::Config[:twitter]
  config.consumer_key = ENV['TWITTER_CONSUMER_KEY'] || twitter_config['consumer_key']
  config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET'] || twitter_config['consumer_secret']
  config.oauth_token = ENV['TWITTER_OAUTH_TOKEN'] || twitter_config['oauth_token']
  config.oauth_token_secret = ENV['TWITTER_OAUTH_TOKEN_SECRET'] || twitter_config['oauth_token_secret']
end

Twitter.configure do |config|
  config.consumer_key = ENV['TWITTER_CONSUMER_KEY'] || Codegoblin::Config[:twitter]['consumer_key']
  config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET'] || Codegoblin::Config[:twitter]['consumer_secret']
  config.oauth_token = ENV['TWITTER_OAUTH_TOKEN'] || Codegoblin::Config[:twitter]['oauth_token']
  config.oauth_token_secret = ENV['TWITTER_OAUTH_TOKEN_SECRET'] || Codegoblin::Config[:twitter]['oauth_token_secret']
end

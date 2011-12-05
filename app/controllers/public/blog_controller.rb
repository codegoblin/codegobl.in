class Public::BlogController < ApplicationController
  def show
    @twitter_statuses = TWITTER_CLIENT.user_timeline[0..4] # TODO: Substitute range with constant
    @github_feed = Feedzirra::Feed.fetch_and_parse("https://github.com/codegoblin.atom")
    logger.info(@github_feed.inspect)
  end
end

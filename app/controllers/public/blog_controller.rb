class Public::BlogController < ApplicationController
  def show
    @twitter_entries = Twitter.user_timeline[0...Codegoblin::Config::NUM_TWEETS_SHOWN]
    @github_entries = Feedzirra::Feed.
                      fetch_and_parse(Codegoblin::Config::GITHUB_FEED_ADDRESS).
                      entries[0...Codegoblin::Config::NUM_GITHUB_ENTRIES_SHOWN]
    @tumblr_entries = Feedzirra::Feed.
                      fetch_and_parse(Codegoblin::Config::TUMBLR_FEED_ADDRESS).
                      entries[0...Codegoblin::Config::NUM_TUMBLR_ENTRIES_SHOWN]
  end
end

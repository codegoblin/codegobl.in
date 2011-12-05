class Public::BlogController < ApplicationController
  def show
    @twitter_entries = Twitter.home_timeline[0...Codegoblin::NUM_TWEETS_SHOWN]
    @github_entries = Feedzirra::Feed.
                      fetch_and_parse(Codegoblin::GITHUB_FEED_ADDRESS).
                      entries[0...Codegoblin::NUM_GITHUB_ENTRIES_SHOWN]
  end
end

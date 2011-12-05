class Public::BlogController < ApplicationController
  def show
    @twitter_entries = TWITTER_CLIENT.user_timeline[0..4] # TODO: Substitute range with constant
    @github_entries = Feedzirra::Feed.fetch_and_parse("https://github.com/codegoblin.atom").entries[0..4]
  end
end

class BlogController < ApplicationController
  def index
    @twitter_statuses = TWITTER_CLIENT.user_timeline[0..4] # TODO: Substitute range with constant
  end
end

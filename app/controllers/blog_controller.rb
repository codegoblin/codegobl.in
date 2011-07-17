class BlogController < ApplicationController
  def index
    #populate an object with twitter entries
    @twitter_statuses = TWITTER_CLIENT.user_timeline[0..4]
  end
end

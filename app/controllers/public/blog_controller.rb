class Public::BlogController < ApplicationController
  def show
    @twitter_statuses = TWITTER_CLIENT.user_timeline[0..4] # TODO: Substitute range with constant
  end
end

module BlogHelper
  def render_twitter_date(date)
    date.strftime("%b %d, %Y @ %l:%M%p")
  end
end

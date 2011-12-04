CodeGoblinWeb::Application.routes.draw do

  root to: "public/blog#show"

  #################
  # Devise Routes #
  #################

  devise_for :users

end

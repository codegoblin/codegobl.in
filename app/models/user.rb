class User < ActiveRecord::Base

  ##########
  # Devise #
  ##########

  devise :database_authenticatable, :token_authenticatable, :rememberable, :trackable, :validatable,
         :lockable

  #########
  # Attrs #
  #########

  # TODO: remember_me should always be true for all users
  # NOTE: ALL NEW ATTRS MUST BE MADE ACCESSIBLE HERE--
  attr_accessible :email, :password, :remember_me

  ###########
  # Methods #
  ###########

  #########
  private #
  #########


end

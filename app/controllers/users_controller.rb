class UsersController < ApplicationController
  def index
    @users = Rails.cache.fetch('users.all', :expires_in => 5.seconds) { User.all }
  end
end

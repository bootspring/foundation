class UsersController < ApplicationController
  def index
    @now = Rails.cache.fetch('time.now', :expires_in => 30.seconds) { Time.now }
    @users = Rails.cache.fetch('users.all', :expires_in => 5.seconds) { User.all }
  end
end

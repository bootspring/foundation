class UserObserver < ActiveRecord::Observer
  def after_create(user)
    Juggernaut.publish("user", user)
  end
end
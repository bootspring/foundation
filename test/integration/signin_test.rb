require 'test_helper'

class LoginTest < ActionController::IntegrationTest

  test "anonymous user can see site" do
    anonymous do |sess|
      sess.get '/'
      sess.assert_response :success
    end
  end
  
  test "failed signin rerenders signin page" do
    user = Factory(:user)
    
    anonymous do |session|
      session.get('/users/sign_in')
      session.assert_response :success
      session.assert_template 'devise/sessions/new'

      session.post "/users/sign_in", :user => { :email => user.email, :password => 'wrongpwd', :remember_me => '1' }
      session.assert_response :success
      session.assert_template 'devise/sessions/new'
      session.assert session.flash[:alert]
    end
  end
  
  test "logged in user can see site" do
    u = Factory(:user)
    login_as(u) do |user|
      user.get('/')
      user.assert_response :success
    end
  end
  
  def anonymous
    open_session do |sess|
      sess.extend(CustomActions)
      yield sess
    end
  end

  def login_as(user)
    open_session do |sess|
      sess.extend(CustomActions)
      sess.post_via_redirect "/users/sign_in", :user => { :email => user.email, :password => 'password', :remember_me => '1' }
      sess.assert !sess.flash[:alert]
      yield sess
    end
  end
  
  module CustomActions
  end
end
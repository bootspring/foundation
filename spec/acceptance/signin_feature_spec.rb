require File.dirname(__FILE__) + '/acceptance_helper'

feature "Signin Feature" do

  scenario "should allow anonymous users to view home page" do
    anonymous do |user|
      user.visit '/'
      page.should have_content "Sign in"
      page.should have_content 'Welcome Home!'
    end
  end
  
  scenario "should allow signed in users to view home page" do
    u = Factory(:user)
    sign_in_as(u) do |user|
      user.visit '/'
      page.should have_content "Sign out"
      page.should have_content 'Welcome Home!'
    end
  end
  
  def anonymous
    yield self
  end
  
  def sign_in_as(user)
    @user = user
    visit '/users/sign_in'
#    current_path.should == new_user_session_path
    fill_in('Email', :with => user.email)
    fill_in('Password', :with => 'password')
    click_button('Sign in')
#    current_path.should == root_path
    yield self
  end
end

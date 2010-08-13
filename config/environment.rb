# Load the rails application
require File.expand_path('../application', __FILE__)

ENABLE_RAILS_FOOTNOTES=Rails.env.development?
# Initialize the rails application
Foundation::Application.initialize!

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Resourcemanager::Application.initialize!
#DateTime::DATE_FORMATS[:short]="SHORT %Y-%m-%d %H:%M:%S"
Date::DATE_FORMATS.merge!(:default => "%Y-%m-%d")
Time::DATE_FORMATS.merge!(:default => "%Y-%m-%d %H:%M %S")
#Date::DATE_FORMATS[:short] = "short %Y-%m-%d"
DateTime::DATE_FORMATS.merge!(:default => "%Y-%m-%d %H:%M %S")

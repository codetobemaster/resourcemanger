class Property < ActiveRecord::Base
  attr_accessible :property_key, :property_type, :property_value
end

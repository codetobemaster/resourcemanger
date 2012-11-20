class DayWork < ActiveRecord::Base
  attr_accessible :hourwork, :name, :note
 validates :hour_work, :numericality => true
 validates :hour_work, :name, :presence => true

end

class TimeSheet < ActiveRecord::Base
  belongs_to :staff
  belongs_to :day_work
  attr_accessible :actual, :day, :month, :note, :status, :year
  validates :year, uniqueness: {scope: [:staff_id,:day, :month]}
  validates :month, uniqueness: {scope: [:staff_id,:year, :day]}
  validates :day, uniqueness: {scope: [:staff_id,:year, :day]}

end

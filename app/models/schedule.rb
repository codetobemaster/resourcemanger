class Schedule < ActiveRecord::Base
  belongs_to :user_attend_projects
  attr_accessible :comment, :month, :numberdays, :status,
  :taskcontent, :week, :year, :user_attend_projects_id
  validates  :month, :numberdays, :status,
  :taskcontent, :week, :year,:user_attend_projects_id, presence: true

end

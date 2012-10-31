class UserAttendProject < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  attr_accessible :description, :project_id, :user_id
end

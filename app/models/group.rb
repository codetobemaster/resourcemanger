class Group < ActiveRecord::Base
self.table_name = 'tblDepartmentGroup'
self.primary_key = 'GroupID'
has_many :departments , class_name: "Department", foreign_key: "GroupID"
end 

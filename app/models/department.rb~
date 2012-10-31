class Department < ActiveRecord::Base
self.table_name = 'tblDepartment'
self.primary_key = 'DepartmentID'
has_many :staffs , class_name: "Staff", foreign_key: "DepartmentID"
end 

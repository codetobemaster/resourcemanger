class Department < ActiveRecord::Base
attr_accessible :DepartmentName,:ParentNode, :Description
self.table_name = 'tblDepartment'
self.primary_key = 'DepartmentID'
has_many :staffs , class_name: "Staff", foreign_key: "DepartmentID"

validates :DepartmentName, presence: true,uniqueness: true
end 

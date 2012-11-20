class Position < ActiveRecord::Base
self.table_name = 'tblPosition'
self.primary_key = 'PositionID'
has_many :staff
attr_accessible :PositionName, :Description, :PositionShortName

validates :PositionName,:PositionShortName, presence: true,uniqueness: true

end

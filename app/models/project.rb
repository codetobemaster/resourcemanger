class Project < ActiveRecord::Base
  attr_accessible :description, :end, :name, :other, :start, :status
end

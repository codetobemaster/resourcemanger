class Staff < ActiveRecord::Base
self.table_name = 'tblEmployee'
self.primary_key = 'EmployeeID'
belongs_to :positions, class_name: "Position", foreign_key: "PositionID"
has_many :time_in_time_outs, class_name: "TimeInTimeOut", foreign_key: "EmployeeID"
belongs_to :department, class_name: "Department", foreign_key: "DepartmentID"
attr_accessible :CardID, :DepartmentID, :EmployeeName, :FirstName, :DateOfBirth,
:LastName, :Gender, :IdentityCard, :InsuranceID, :Address, :District, :Province, :BirthPlace,
:Resident, :Phone, :Mobile, :Emails, :MarriageStatus, :People, :Religious, :NationNality, :ProfesstionalLevel,
:Qualification, :EnglishLevel, :InfomaticLevel, :OtherCertificate, :Discipline, :Picture, :RecuitDate,
:StopReason, :StopDate, :StartTrial, :StartDate, :NgayKiLai, :ContractID, :BasicSalary, :SalaryID,
:HamfulAllowance, :ResponsibleAllowance, :LuncheAllowance, :Note, :StartDateInsurance, :HospitalID,
:IntimateAllowance, :FamilyCondictionNumber, :TaxID

end